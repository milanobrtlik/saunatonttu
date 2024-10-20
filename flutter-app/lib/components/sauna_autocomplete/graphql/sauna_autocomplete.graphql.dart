import '../../../fragments.graphql.dart';
import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$autocompleteSearch {
  factory Variables$Query$autocompleteSearch({Input$SaunaFilterInput? input}) =>
      Variables$Query$autocompleteSearch._({
        if (input != null) r'input': input,
      });

  Variables$Query$autocompleteSearch._(this._$data);

  factory Variables$Query$autocompleteSearch.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input$SaunaFilterInput.fromJson((l$input as Map<String, dynamic>));
    }
    return Variables$Query$autocompleteSearch._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SaunaFilterInput? get input =>
      (_$data['input'] as Input$SaunaFilterInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$autocompleteSearch<
          Variables$Query$autocompleteSearch>
      get copyWith => CopyWith$Variables$Query$autocompleteSearch(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$autocompleteSearch) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (_$data.containsKey('input') != other._$data.containsKey('input')) {
      return false;
    }
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([_$data.containsKey('input') ? l$input : const {}]);
  }
}

abstract class CopyWith$Variables$Query$autocompleteSearch<TRes> {
  factory CopyWith$Variables$Query$autocompleteSearch(
    Variables$Query$autocompleteSearch instance,
    TRes Function(Variables$Query$autocompleteSearch) then,
  ) = _CopyWithImpl$Variables$Query$autocompleteSearch;

  factory CopyWith$Variables$Query$autocompleteSearch.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$autocompleteSearch;

  TRes call({Input$SaunaFilterInput? input});
}

class _CopyWithImpl$Variables$Query$autocompleteSearch<TRes>
    implements CopyWith$Variables$Query$autocompleteSearch<TRes> {
  _CopyWithImpl$Variables$Query$autocompleteSearch(
    this._instance,
    this._then,
  );

  final Variables$Query$autocompleteSearch _instance;

  final TRes Function(Variables$Query$autocompleteSearch) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$autocompleteSearch._({
        ..._instance._$data,
        if (input != _undefined) 'input': (input as Input$SaunaFilterInput?),
      }));
}

class _CopyWithStubImpl$Variables$Query$autocompleteSearch<TRes>
    implements CopyWith$Variables$Query$autocompleteSearch<TRes> {
  _CopyWithStubImpl$Variables$Query$autocompleteSearch(this._res);

  TRes _res;

  call({Input$SaunaFilterInput? input}) => _res;
}

class Query$autocompleteSearch {
  Query$autocompleteSearch({
    this.saunaList,
    required this.$__typename,
  });

  factory Query$autocompleteSearch.fromJson(Map<String, dynamic> json) {
    final l$saunaList = json['saunaList'];
    final l$$__typename = json['__typename'];
    return Query$autocompleteSearch(
      saunaList: l$saunaList == null
          ? null
          : Query$autocompleteSearch$saunaList.fromJson(
              (l$saunaList as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$autocompleteSearch$saunaList? saunaList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$saunaList = saunaList;
    _resultData['saunaList'] = l$saunaList?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$saunaList = saunaList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$saunaList,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$autocompleteSearch) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$saunaList = saunaList;
    final lOther$saunaList = other.saunaList;
    if (l$saunaList != lOther$saunaList) {
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

extension UtilityExtension$Query$autocompleteSearch
    on Query$autocompleteSearch {
  CopyWith$Query$autocompleteSearch<Query$autocompleteSearch> get copyWith =>
      CopyWith$Query$autocompleteSearch(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$autocompleteSearch<TRes> {
  factory CopyWith$Query$autocompleteSearch(
    Query$autocompleteSearch instance,
    TRes Function(Query$autocompleteSearch) then,
  ) = _CopyWithImpl$Query$autocompleteSearch;

  factory CopyWith$Query$autocompleteSearch.stub(TRes res) =
      _CopyWithStubImpl$Query$autocompleteSearch;

  TRes call({
    Query$autocompleteSearch$saunaList? saunaList,
    String? $__typename,
  });
  CopyWith$Query$autocompleteSearch$saunaList<TRes> get saunaList;
}

class _CopyWithImpl$Query$autocompleteSearch<TRes>
    implements CopyWith$Query$autocompleteSearch<TRes> {
  _CopyWithImpl$Query$autocompleteSearch(
    this._instance,
    this._then,
  );

  final Query$autocompleteSearch _instance;

  final TRes Function(Query$autocompleteSearch) _then;

  static const _undefined = {};

  TRes call({
    Object? saunaList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$autocompleteSearch(
        saunaList: saunaList == _undefined
            ? _instance.saunaList
            : (saunaList as Query$autocompleteSearch$saunaList?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$autocompleteSearch$saunaList<TRes> get saunaList {
    final local$saunaList = _instance.saunaList;
    return local$saunaList == null
        ? CopyWith$Query$autocompleteSearch$saunaList.stub(_then(_instance))
        : CopyWith$Query$autocompleteSearch$saunaList(
            local$saunaList, (e) => call(saunaList: e));
  }
}

class _CopyWithStubImpl$Query$autocompleteSearch<TRes>
    implements CopyWith$Query$autocompleteSearch<TRes> {
  _CopyWithStubImpl$Query$autocompleteSearch(this._res);

  TRes _res;

  call({
    Query$autocompleteSearch$saunaList? saunaList,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$autocompleteSearch$saunaList<TRes> get saunaList =>
      CopyWith$Query$autocompleteSearch$saunaList.stub(_res);
}

const documentNodeQueryautocompleteSearch = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'autocompleteSearch'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'SaunaFilterInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'saunaList'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'nodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'SaunaAutocompleteFragment'),
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
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionSaunaAutocompleteFragment,
]);
Query$autocompleteSearch _parserFn$Query$autocompleteSearch(
        Map<String, dynamic> data) =>
    Query$autocompleteSearch.fromJson(data);

class Options$Query$autocompleteSearch
    extends graphql.QueryOptions<Query$autocompleteSearch> {
  Options$Query$autocompleteSearch({
    String? operationName,
    Variables$Query$autocompleteSearch? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryautocompleteSearch,
          parserFn: _parserFn$Query$autocompleteSearch,
        );
}

class WatchOptions$Query$autocompleteSearch
    extends graphql.WatchQueryOptions<Query$autocompleteSearch> {
  WatchOptions$Query$autocompleteSearch({
    String? operationName,
    Variables$Query$autocompleteSearch? variables,
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
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryautocompleteSearch,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$autocompleteSearch,
        );
}

class FetchMoreOptions$Query$autocompleteSearch
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$autocompleteSearch({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$autocompleteSearch? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryautocompleteSearch,
        );
}

extension ClientExtension$Query$autocompleteSearch on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$autocompleteSearch>>
      query$autocompleteSearch(
              [Options$Query$autocompleteSearch? options]) async =>
          await this.query(options ?? Options$Query$autocompleteSearch());
  graphql.ObservableQuery<Query$autocompleteSearch>
      watchQuery$autocompleteSearch(
              [WatchOptions$Query$autocompleteSearch? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$autocompleteSearch());
  void writeQuery$autocompleteSearch({
    required Query$autocompleteSearch data,
    Variables$Query$autocompleteSearch? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryautocompleteSearch),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$autocompleteSearch? readQuery$autocompleteSearch({
    Variables$Query$autocompleteSearch? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryautocompleteSearch),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$autocompleteSearch.fromJson(result);
  }
}

class Query$autocompleteSearch$saunaList {
  Query$autocompleteSearch$saunaList({
    this.nodes,
    required this.$__typename,
  });

  factory Query$autocompleteSearch$saunaList.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$autocompleteSearch$saunaList(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => Fragment$SaunaAutocompleteFragment.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$SaunaAutocompleteFragment>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$autocompleteSearch$saunaList) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Query$autocompleteSearch$saunaList
    on Query$autocompleteSearch$saunaList {
  CopyWith$Query$autocompleteSearch$saunaList<
          Query$autocompleteSearch$saunaList>
      get copyWith => CopyWith$Query$autocompleteSearch$saunaList(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$autocompleteSearch$saunaList<TRes> {
  factory CopyWith$Query$autocompleteSearch$saunaList(
    Query$autocompleteSearch$saunaList instance,
    TRes Function(Query$autocompleteSearch$saunaList) then,
  ) = _CopyWithImpl$Query$autocompleteSearch$saunaList;

  factory CopyWith$Query$autocompleteSearch$saunaList.stub(TRes res) =
      _CopyWithStubImpl$Query$autocompleteSearch$saunaList;

  TRes call({
    List<Fragment$SaunaAutocompleteFragment>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Fragment$SaunaAutocompleteFragment>? Function(
              Iterable<
                  CopyWith$Fragment$SaunaAutocompleteFragment<
                      Fragment$SaunaAutocompleteFragment>>?)
          _fn);
}

class _CopyWithImpl$Query$autocompleteSearch$saunaList<TRes>
    implements CopyWith$Query$autocompleteSearch$saunaList<TRes> {
  _CopyWithImpl$Query$autocompleteSearch$saunaList(
    this._instance,
    this._then,
  );

  final Query$autocompleteSearch$saunaList _instance;

  final TRes Function(Query$autocompleteSearch$saunaList) _then;

  static const _undefined = {};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$autocompleteSearch$saunaList(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$SaunaAutocompleteFragment>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes nodes(
          Iterable<Fragment$SaunaAutocompleteFragment>? Function(
                  Iterable<
                      CopyWith$Fragment$SaunaAutocompleteFragment<
                          Fragment$SaunaAutocompleteFragment>>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes
              ?.map((e) => CopyWith$Fragment$SaunaAutocompleteFragment(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$autocompleteSearch$saunaList<TRes>
    implements CopyWith$Query$autocompleteSearch$saunaList<TRes> {
  _CopyWithStubImpl$Query$autocompleteSearch$saunaList(this._res);

  TRes _res;

  call({
    List<Fragment$SaunaAutocompleteFragment>? nodes,
    String? $__typename,
  }) =>
      _res;
  nodes(_fn) => _res;
}
