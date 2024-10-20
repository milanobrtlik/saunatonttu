import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:geofencing/geofencing.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:graphql/client.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:saunatonttu/home/view/home_page.dart';

import 'auth/jwt_provider.dart';
import 'config.dart';
import 'errors.dart';

final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

int id = 0;

void geofencingCallback(
  List<String> ids,
  Location location,
  GeofenceEvent event,
) async {
  if (kDebugMode) {
    print('Fences: $ids Location $location Event: $event');
  }
  IsolateNameServer.lookupPortByName('geofencing_send_port')?.send(
    event.toString(),
  );
  // GeofencingManager.demoteToBackground();
  await flutterLocalNotificationsPlugin.show(
    id++,
    'Jaká byla Vaše návštěva Sauna OC Letmo?',
    '',
    const NotificationDetails(
      android: AndroidNotificationDetails(
        'geofencing',
        'Sauna visits',
        channelDescription: 'your channel description',
        importance: Importance.max,
        priority: Priority.max,
        ticker: 'ticker',
      ),
    ),
  );
}

// void onBcg(NotificationResponse r) {
//   final a = 1;
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('jwt');
  final googleSignIn = GoogleSignIn(
    clientId:
        '732173248256-lcirooptfv7rku3l3host2r3s0ndbhtn.apps.googleusercontent.com',
  );
  final httpLink = HttpLink(
    Config.apiUrl,
    parser: MyResponseParser(),
    serializer: MyRequestSerializer(),
  );
  final graphqlClient = GraphQLClient(
    link: AuthLink(
      getToken: JwtProvider().shortLivedToken,
    ).concat(httpLink),
    cache: GraphQLCache(),
    defaultPolicies: DefaultPolicies(
      query: Policies(fetch: FetchPolicy.networkOnly),
    ),
  );

  await flutterLocalNotificationsPlugin.initialize(
    const InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/launcher_icon'),
    ),
    // onDidReceiveNotificationResponse: (r) {
    //   final a = 1;
    // },
    // onDidReceiveBackgroundNotificationResponse: onBcg,
  );

  // await flutterLocalNotificationsPlugin
  //     .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()!
  //     .request();

  runApp(MultiRepositoryProvider(
    providers: [
      RepositoryProvider(create: (_) => googleSignIn),
      RepositoryProvider(create: (_) => graphqlClient),
    ],
    child: MaterialApp(
      title: 'Saunatonttu',
      theme: ThemeData(colorSchemeSeed: Colors.red, useMaterial3: true),
      home: const HomePage(),
    ),
  ));
}

class ContextProvider {
  static BuildContext? context;
}
