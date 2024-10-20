import 'package:flutter/foundation.dart';

class Config {
static String get apiUrl =>kReleaseMode
    ? 'http://192.168.0.38:5207/graphql'
    : 'http://192.168.0.38:5207/graphql';
}
