import '../../fragments.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$me {
  Query$me({
    required this.me,
    required this.$__typename,
  });

  factory Query$me.fromJson(Map<String, dynamic> json) {
    final l$me = json['me'];
    final l$$__typename = json['__typename'];
    return Query$me(
      me: Fragment$MeFragment.fromJson((l$me as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$MeFragment me;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$me = me;
    _resultData['me'] = l$me.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$me = me;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$me,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$me) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$me = me;
    final lOther$me = other.me;
    if (l$me != lOther$me) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$me on Query$me {
  CopyWith$Query$me<Query$me> get copyWith => CopyWith$Query$me(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$me<TRes> {
  factory CopyWith$Query$me(
    Query$me instance,
    TRes Function(Query$me) then,
  ) = _CopyWithImpl$Query$me;

  factory CopyWith$Query$me.stub(TRes res) = _CopyWithStubImpl$Query$me;

  TRes call({
    Fragment$MeFragment? me,
    String? $__typename,
  });
  CopyWith$Fragment$MeFragment<TRes> get me;
}

class _CopyWithImpl$Query$me<TRes> implements CopyWith$Query$me<TRes> {
  _CopyWithImpl$Query$me(
    this._instance,
    this._then,
  );

  final Query$me _instance;

  final TRes Function(Query$me) _then;

  static const _undefined = {};

  TRes call({
    Object? me = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$me(
        me: me == _undefined || me == null
            ? _instance.me
            : (me as Fragment$MeFragment),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$MeFragment<TRes> get me {
    final local$me = _instance.me;
    return CopyWith$Fragment$MeFragment(local$me, (e) => call(me: e));
  }
}

class _CopyWithStubImpl$Query$me<TRes> implements CopyWith$Query$me<TRes> {
  _CopyWithStubImpl$Query$me(this._res);

  TRes _res;

  call({
    Fragment$MeFragment? me,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$MeFragment<TRes> get me =>
      CopyWith$Fragment$MeFragment.stub(_res);
}

const documentNodeQueryme = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'me'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'me'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'MeFragment'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionMeFragment,
  fragmentDefinitionUserFragment,
]);
Query$me _parserFn$Query$me(Map<String, dynamic> data) =>
    Query$me.fromJson(data);

class Options$Query$me extends graphql.QueryOptions<Query$me> {
  Options$Query$me({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryme,
          parserFn: _parserFn$Query$me,
        );
}

class WatchOptions$Query$me extends graphql.WatchQueryOptions<Query$me> {
  WatchOptions$Query$me({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryme,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$me,
        );
}

class FetchMoreOptions$Query$me extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$me({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryme,
        );
}

extension ClientExtension$Query$me on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$me>> query$me(
          [Options$Query$me? options]) async =>
      await this.query(options ?? Options$Query$me());
  graphql.ObservableQuery<Query$me> watchQuery$me(
          [WatchOptions$Query$me? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$me());
  void writeQuery$me({
    required Query$me data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryme)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$me? readQuery$me({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryme)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$me.fromJson(result);
  }
}
