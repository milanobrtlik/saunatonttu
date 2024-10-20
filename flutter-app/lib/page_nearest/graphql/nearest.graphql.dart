import '../../fragments.graphql.dart';
import '../../schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$saunaList {
  factory Variables$Query$saunaList({
    Input$SaunaFilterInput? where,
    String? after,
    int? first,
    int? picturesFirst,
  }) =>
      Variables$Query$saunaList._({
        if (where != null) r'where': where,
        if (after != null) r'after': after,
        if (first != null) r'first': first,
        if (picturesFirst != null) r'picturesFirst': picturesFirst,
      });

  Variables$Query$saunaList._(this._$data);

  factory Variables$Query$saunaList.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$SaunaFilterInput.fromJson((l$where as Map<String, dynamic>));
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('picturesFirst')) {
      final l$picturesFirst = data['picturesFirst'];
      result$data['picturesFirst'] = (l$picturesFirst as int?);
    }
    return Variables$Query$saunaList._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SaunaFilterInput? get where =>
      (_$data['where'] as Input$SaunaFilterInput?);
  String? get after => (_$data['after'] as String?);
  int? get first => (_$data['first'] as int?);
  int? get picturesFirst => (_$data['picturesFirst'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('picturesFirst')) {
      final l$picturesFirst = picturesFirst;
      result$data['picturesFirst'] = l$picturesFirst;
    }
    return result$data;
  }

  CopyWith$Variables$Query$saunaList<Variables$Query$saunaList> get copyWith =>
      CopyWith$Variables$Query$saunaList(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$saunaList) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$picturesFirst = picturesFirst;
    final lOther$picturesFirst = other.picturesFirst;
    if (_$data.containsKey('picturesFirst') !=
        other._$data.containsKey('picturesFirst')) {
      return false;
    }
    if (l$picturesFirst != lOther$picturesFirst) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$after = after;
    final l$first = first;
    final l$picturesFirst = picturesFirst;
    return Object.hashAll([
      _$data.containsKey('where') ? l$where : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('picturesFirst') ? l$picturesFirst : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$saunaList<TRes> {
  factory CopyWith$Variables$Query$saunaList(
    Variables$Query$saunaList instance,
    TRes Function(Variables$Query$saunaList) then,
  ) = _CopyWithImpl$Variables$Query$saunaList;

  factory CopyWith$Variables$Query$saunaList.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$saunaList;

  TRes call({
    Input$SaunaFilterInput? where,
    String? after,
    int? first,
    int? picturesFirst,
  });
}

class _CopyWithImpl$Variables$Query$saunaList<TRes>
    implements CopyWith$Variables$Query$saunaList<TRes> {
  _CopyWithImpl$Variables$Query$saunaList(
    this._instance,
    this._then,
  );

  final Variables$Query$saunaList _instance;

  final TRes Function(Variables$Query$saunaList) _then;

  static const _undefined = {};

  TRes call({
    Object? where = _undefined,
    Object? after = _undefined,
    Object? first = _undefined,
    Object? picturesFirst = _undefined,
  }) =>
      _then(Variables$Query$saunaList._({
        ..._instance._$data,
        if (where != _undefined) 'where': (where as Input$SaunaFilterInput?),
        if (after != _undefined) 'after': (after as String?),
        if (first != _undefined) 'first': (first as int?),
        if (picturesFirst != _undefined)
          'picturesFirst': (picturesFirst as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$saunaList<TRes>
    implements CopyWith$Variables$Query$saunaList<TRes> {
  _CopyWithStubImpl$Variables$Query$saunaList(this._res);

  TRes _res;

  call({
    Input$SaunaFilterInput? where,
    String? after,
    int? first,
    int? picturesFirst,
  }) =>
      _res;
}

class Query$saunaList {
  Query$saunaList({
    this.saunaList,
    required this.$__typename,
  });

  factory Query$saunaList.fromJson(Map<String, dynamic> json) {
    final l$saunaList = json['saunaList'];
    final l$$__typename = json['__typename'];
    return Query$saunaList(
      saunaList: l$saunaList == null
          ? null
          : Query$saunaList$saunaList.fromJson(
              (l$saunaList as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$saunaList$saunaList? saunaList;

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
    if (!(other is Query$saunaList) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$saunaList on Query$saunaList {
  CopyWith$Query$saunaList<Query$saunaList> get copyWith =>
      CopyWith$Query$saunaList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$saunaList<TRes> {
  factory CopyWith$Query$saunaList(
    Query$saunaList instance,
    TRes Function(Query$saunaList) then,
  ) = _CopyWithImpl$Query$saunaList;

  factory CopyWith$Query$saunaList.stub(TRes res) =
      _CopyWithStubImpl$Query$saunaList;

  TRes call({
    Query$saunaList$saunaList? saunaList,
    String? $__typename,
  });
  CopyWith$Query$saunaList$saunaList<TRes> get saunaList;
}

class _CopyWithImpl$Query$saunaList<TRes>
    implements CopyWith$Query$saunaList<TRes> {
  _CopyWithImpl$Query$saunaList(
    this._instance,
    this._then,
  );

  final Query$saunaList _instance;

  final TRes Function(Query$saunaList) _then;

  static const _undefined = {};

  TRes call({
    Object? saunaList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$saunaList(
        saunaList: saunaList == _undefined
            ? _instance.saunaList
            : (saunaList as Query$saunaList$saunaList?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$saunaList$saunaList<TRes> get saunaList {
    final local$saunaList = _instance.saunaList;
    return local$saunaList == null
        ? CopyWith$Query$saunaList$saunaList.stub(_then(_instance))
        : CopyWith$Query$saunaList$saunaList(
            local$saunaList, (e) => call(saunaList: e));
  }
}

class _CopyWithStubImpl$Query$saunaList<TRes>
    implements CopyWith$Query$saunaList<TRes> {
  _CopyWithStubImpl$Query$saunaList(this._res);

  TRes _res;

  call({
    Query$saunaList$saunaList? saunaList,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$saunaList$saunaList<TRes> get saunaList =>
      CopyWith$Query$saunaList$saunaList.stub(_res);
}

const documentNodeQuerysaunaList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'saunaList'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'SaunaFilterInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'picturesFirst')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'saunaList'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          ),
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasPreviousPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'endCursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
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
            name: NameNode(value: 'edges'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'cursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'node'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'SaunaList'),
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
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionSaunaList,
  fragmentDefinitionSaunaAutocompleteFragment,
  fragmentDefinitionLocation,
  fragmentDefinitionPicture,
]);
Query$saunaList _parserFn$Query$saunaList(Map<String, dynamic> data) =>
    Query$saunaList.fromJson(data);

class Options$Query$saunaList extends graphql.QueryOptions<Query$saunaList> {
  Options$Query$saunaList({
    String? operationName,
    Variables$Query$saunaList? variables,
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
          document: documentNodeQuerysaunaList,
          parserFn: _parserFn$Query$saunaList,
        );
}

class WatchOptions$Query$saunaList
    extends graphql.WatchQueryOptions<Query$saunaList> {
  WatchOptions$Query$saunaList({
    String? operationName,
    Variables$Query$saunaList? variables,
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
          document: documentNodeQuerysaunaList,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$saunaList,
        );
}

class FetchMoreOptions$Query$saunaList extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$saunaList({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$saunaList? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerysaunaList,
        );
}

extension ClientExtension$Query$saunaList on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$saunaList>> query$saunaList(
          [Options$Query$saunaList? options]) async =>
      await this.query(options ?? Options$Query$saunaList());
  graphql.ObservableQuery<Query$saunaList> watchQuery$saunaList(
          [WatchOptions$Query$saunaList? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$saunaList());
  void writeQuery$saunaList({
    required Query$saunaList data,
    Variables$Query$saunaList? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerysaunaList),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$saunaList? readQuery$saunaList({
    Variables$Query$saunaList? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerysaunaList),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$saunaList.fromJson(result);
  }
}

class Query$saunaList$saunaList {
  Query$saunaList$saunaList({
    required this.pageInfo,
    this.edges,
    required this.$__typename,
  });

  factory Query$saunaList$saunaList.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$saunaList$saunaList(
      pageInfo: Query$saunaList$saunaList$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => Query$saunaList$saunaList$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$saunaList$saunaList$pageInfo pageInfo;

  final List<Query$saunaList$saunaList$edges>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$saunaList$saunaList) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
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

extension UtilityExtension$Query$saunaList$saunaList
    on Query$saunaList$saunaList {
  CopyWith$Query$saunaList$saunaList<Query$saunaList$saunaList> get copyWith =>
      CopyWith$Query$saunaList$saunaList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$saunaList$saunaList<TRes> {
  factory CopyWith$Query$saunaList$saunaList(
    Query$saunaList$saunaList instance,
    TRes Function(Query$saunaList$saunaList) then,
  ) = _CopyWithImpl$Query$saunaList$saunaList;

  factory CopyWith$Query$saunaList$saunaList.stub(TRes res) =
      _CopyWithStubImpl$Query$saunaList$saunaList;

  TRes call({
    Query$saunaList$saunaList$pageInfo? pageInfo,
    List<Query$saunaList$saunaList$edges>? edges,
    String? $__typename,
  });
  CopyWith$Query$saunaList$saunaList$pageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$saunaList$saunaList$edges>? Function(
              Iterable<
                  CopyWith$Query$saunaList$saunaList$edges<
                      Query$saunaList$saunaList$edges>>?)
          _fn);
}

class _CopyWithImpl$Query$saunaList$saunaList<TRes>
    implements CopyWith$Query$saunaList$saunaList<TRes> {
  _CopyWithImpl$Query$saunaList$saunaList(
    this._instance,
    this._then,
  );

  final Query$saunaList$saunaList _instance;

  final TRes Function(Query$saunaList$saunaList) _then;

  static const _undefined = {};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$saunaList$saunaList(
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$saunaList$saunaList$pageInfo),
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$saunaList$saunaList$edges>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$saunaList$saunaList$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$saunaList$saunaList$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes edges(
          Iterable<Query$saunaList$saunaList$edges>? Function(
                  Iterable<
                      CopyWith$Query$saunaList$saunaList$edges<
                          Query$saunaList$saunaList$edges>>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              ?.map((e) => CopyWith$Query$saunaList$saunaList$edges(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$saunaList$saunaList<TRes>
    implements CopyWith$Query$saunaList$saunaList<TRes> {
  _CopyWithStubImpl$Query$saunaList$saunaList(this._res);

  TRes _res;

  call({
    Query$saunaList$saunaList$pageInfo? pageInfo,
    List<Query$saunaList$saunaList$edges>? edges,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$saunaList$saunaList$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$saunaList$saunaList$pageInfo.stub(_res);
  edges(_fn) => _res;
}

class Query$saunaList$saunaList$pageInfo {
  Query$saunaList$saunaList$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.endCursor,
    required this.$__typename,
  });

  factory Query$saunaList$saunaList$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$saunaList$saunaList$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      hasPreviousPage: (l$hasPreviousPage as bool),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final bool hasPreviousPage;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$hasPreviousPage,
      l$endCursor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$saunaList$saunaList$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$hasPreviousPage = hasPreviousPage;
    final lOther$hasPreviousPage = other.hasPreviousPage;
    if (l$hasPreviousPage != lOther$hasPreviousPage) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
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

extension UtilityExtension$Query$saunaList$saunaList$pageInfo
    on Query$saunaList$saunaList$pageInfo {
  CopyWith$Query$saunaList$saunaList$pageInfo<
          Query$saunaList$saunaList$pageInfo>
      get copyWith => CopyWith$Query$saunaList$saunaList$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$saunaList$saunaList$pageInfo<TRes> {
  factory CopyWith$Query$saunaList$saunaList$pageInfo(
    Query$saunaList$saunaList$pageInfo instance,
    TRes Function(Query$saunaList$saunaList$pageInfo) then,
  ) = _CopyWithImpl$Query$saunaList$saunaList$pageInfo;

  factory CopyWith$Query$saunaList$saunaList$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$saunaList$saunaList$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$saunaList$saunaList$pageInfo<TRes>
    implements CopyWith$Query$saunaList$saunaList$pageInfo<TRes> {
  _CopyWithImpl$Query$saunaList$saunaList$pageInfo(
    this._instance,
    this._then,
  );

  final Query$saunaList$saunaList$pageInfo _instance;

  final TRes Function(Query$saunaList$saunaList$pageInfo) _then;

  static const _undefined = {};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$saunaList$saunaList$pageInfo(
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        hasPreviousPage:
            hasPreviousPage == _undefined || hasPreviousPage == null
                ? _instance.hasPreviousPage
                : (hasPreviousPage as bool),
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$saunaList$saunaList$pageInfo<TRes>
    implements CopyWith$Query$saunaList$saunaList$pageInfo<TRes> {
  _CopyWithStubImpl$Query$saunaList$saunaList$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? endCursor,
    String? $__typename,
  }) =>
      _res;
}

class Query$saunaList$saunaList$edges {
  Query$saunaList$saunaList$edges({
    required this.cursor,
    required this.node,
    required this.$__typename,
  });

  factory Query$saunaList$saunaList$edges.fromJson(Map<String, dynamic> json) {
    final l$cursor = json['cursor'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$saunaList$saunaList$edges(
      cursor: (l$cursor as String),
      node: Fragment$SaunaList.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String cursor;

  final Fragment$SaunaList node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cursor = cursor;
    _resultData['cursor'] = l$cursor;
    final l$node = node;
    _resultData['node'] = l$node.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cursor = cursor;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$cursor,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$saunaList$saunaList$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cursor = cursor;
    final lOther$cursor = other.cursor;
    if (l$cursor != lOther$cursor) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtension$Query$saunaList$saunaList$edges
    on Query$saunaList$saunaList$edges {
  CopyWith$Query$saunaList$saunaList$edges<Query$saunaList$saunaList$edges>
      get copyWith => CopyWith$Query$saunaList$saunaList$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$saunaList$saunaList$edges<TRes> {
  factory CopyWith$Query$saunaList$saunaList$edges(
    Query$saunaList$saunaList$edges instance,
    TRes Function(Query$saunaList$saunaList$edges) then,
  ) = _CopyWithImpl$Query$saunaList$saunaList$edges;

  factory CopyWith$Query$saunaList$saunaList$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$saunaList$saunaList$edges;

  TRes call({
    String? cursor,
    Fragment$SaunaList? node,
    String? $__typename,
  });
  CopyWith$Fragment$SaunaList<TRes> get node;
}

class _CopyWithImpl$Query$saunaList$saunaList$edges<TRes>
    implements CopyWith$Query$saunaList$saunaList$edges<TRes> {
  _CopyWithImpl$Query$saunaList$saunaList$edges(
    this._instance,
    this._then,
  );

  final Query$saunaList$saunaList$edges _instance;

  final TRes Function(Query$saunaList$saunaList$edges) _then;

  static const _undefined = {};

  TRes call({
    Object? cursor = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$saunaList$saunaList$edges(
        cursor: cursor == _undefined || cursor == null
            ? _instance.cursor
            : (cursor as String),
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$SaunaList),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$SaunaList<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$SaunaList(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$saunaList$saunaList$edges<TRes>
    implements CopyWith$Query$saunaList$saunaList$edges<TRes> {
  _CopyWithStubImpl$Query$saunaList$saunaList$edges(this._res);

  TRes _res;

  call({
    String? cursor,
    Fragment$SaunaList? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$SaunaList<TRes> get node =>
      CopyWith$Fragment$SaunaList.stub(_res);
}

class Variables$Query$saunaDetail {
  factory Variables$Query$saunaDetail({required String id}) =>
      Variables$Query$saunaDetail._({
        r'id': id,
      });

  Variables$Query$saunaDetail._(this._$data);

  factory Variables$Query$saunaDetail.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$saunaDetail._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$saunaDetail<Variables$Query$saunaDetail>
      get copyWith => CopyWith$Variables$Query$saunaDetail(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$saunaDetail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$saunaDetail<TRes> {
  factory CopyWith$Variables$Query$saunaDetail(
    Variables$Query$saunaDetail instance,
    TRes Function(Variables$Query$saunaDetail) then,
  ) = _CopyWithImpl$Variables$Query$saunaDetail;

  factory CopyWith$Variables$Query$saunaDetail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$saunaDetail;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$saunaDetail<TRes>
    implements CopyWith$Variables$Query$saunaDetail<TRes> {
  _CopyWithImpl$Variables$Query$saunaDetail(
    this._instance,
    this._then,
  );

  final Variables$Query$saunaDetail _instance;

  final TRes Function(Variables$Query$saunaDetail) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$saunaDetail._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$saunaDetail<TRes>
    implements CopyWith$Variables$Query$saunaDetail<TRes> {
  _CopyWithStubImpl$Variables$Query$saunaDetail(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$saunaDetail {
  Query$saunaDetail({
    this.saunaDetail,
    required this.$__typename,
  });

  factory Query$saunaDetail.fromJson(Map<String, dynamic> json) {
    final l$saunaDetail = json['saunaDetail'];
    final l$$__typename = json['__typename'];
    return Query$saunaDetail(
      saunaDetail: l$saunaDetail == null
          ? null
          : Fragment$SaunaFullDetail.fromJson(
              (l$saunaDetail as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$SaunaFullDetail? saunaDetail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$saunaDetail = saunaDetail;
    _resultData['saunaDetail'] = l$saunaDetail?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$saunaDetail = saunaDetail;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$saunaDetail,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$saunaDetail) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$saunaDetail = saunaDetail;
    final lOther$saunaDetail = other.saunaDetail;
    if (l$saunaDetail != lOther$saunaDetail) {
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

extension UtilityExtension$Query$saunaDetail on Query$saunaDetail {
  CopyWith$Query$saunaDetail<Query$saunaDetail> get copyWith =>
      CopyWith$Query$saunaDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$saunaDetail<TRes> {
  factory CopyWith$Query$saunaDetail(
    Query$saunaDetail instance,
    TRes Function(Query$saunaDetail) then,
  ) = _CopyWithImpl$Query$saunaDetail;

  factory CopyWith$Query$saunaDetail.stub(TRes res) =
      _CopyWithStubImpl$Query$saunaDetail;

  TRes call({
    Fragment$SaunaFullDetail? saunaDetail,
    String? $__typename,
  });
  CopyWith$Fragment$SaunaFullDetail<TRes> get saunaDetail;
}

class _CopyWithImpl$Query$saunaDetail<TRes>
    implements CopyWith$Query$saunaDetail<TRes> {
  _CopyWithImpl$Query$saunaDetail(
    this._instance,
    this._then,
  );

  final Query$saunaDetail _instance;

  final TRes Function(Query$saunaDetail) _then;

  static const _undefined = {};

  TRes call({
    Object? saunaDetail = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$saunaDetail(
        saunaDetail: saunaDetail == _undefined
            ? _instance.saunaDetail
            : (saunaDetail as Fragment$SaunaFullDetail?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$SaunaFullDetail<TRes> get saunaDetail {
    final local$saunaDetail = _instance.saunaDetail;
    return local$saunaDetail == null
        ? CopyWith$Fragment$SaunaFullDetail.stub(_then(_instance))
        : CopyWith$Fragment$SaunaFullDetail(
            local$saunaDetail, (e) => call(saunaDetail: e));
  }
}

class _CopyWithStubImpl$Query$saunaDetail<TRes>
    implements CopyWith$Query$saunaDetail<TRes> {
  _CopyWithStubImpl$Query$saunaDetail(this._res);

  TRes _res;

  call({
    Fragment$SaunaFullDetail? saunaDetail,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$SaunaFullDetail<TRes> get saunaDetail =>
      CopyWith$Fragment$SaunaFullDetail.stub(_res);
}

const documentNodeQuerysaunaDetail = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'saunaDetail'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'saunaDetail'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'SaunaFullDetail'),
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
  fragmentDefinitionSaunaFullDetail,
  fragmentDefinitionPicture,
  fragmentDefinitionOpeningHour,
  fragmentDefinitionPrice,
  fragmentDefinitionCurrency,
]);
Query$saunaDetail _parserFn$Query$saunaDetail(Map<String, dynamic> data) =>
    Query$saunaDetail.fromJson(data);

class Options$Query$saunaDetail
    extends graphql.QueryOptions<Query$saunaDetail> {
  Options$Query$saunaDetail({
    String? operationName,
    required Variables$Query$saunaDetail variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQuerysaunaDetail,
          parserFn: _parserFn$Query$saunaDetail,
        );
}

class WatchOptions$Query$saunaDetail
    extends graphql.WatchQueryOptions<Query$saunaDetail> {
  WatchOptions$Query$saunaDetail({
    String? operationName,
    required Variables$Query$saunaDetail variables,
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
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQuerysaunaDetail,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$saunaDetail,
        );
}

class FetchMoreOptions$Query$saunaDetail extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$saunaDetail({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$saunaDetail variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerysaunaDetail,
        );
}

extension ClientExtension$Query$saunaDetail on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$saunaDetail>> query$saunaDetail(
          Options$Query$saunaDetail options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$saunaDetail> watchQuery$saunaDetail(
          WatchOptions$Query$saunaDetail options) =>
      this.watchQuery(options);
  void writeQuery$saunaDetail({
    required Query$saunaDetail data,
    required Variables$Query$saunaDetail variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerysaunaDetail),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$saunaDetail? readQuery$saunaDetail({
    required Variables$Query$saunaDetail variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerysaunaDetail),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$saunaDetail.fromJson(result);
  }
}

class Variables$Mutation$manageMyFavorite {
  factory Variables$Mutation$manageMyFavorite({
    required String saunaId,
    required bool isMyFavorite,
    int? picturesFirst,
  }) =>
      Variables$Mutation$manageMyFavorite._({
        r'saunaId': saunaId,
        r'isMyFavorite': isMyFavorite,
        if (picturesFirst != null) r'picturesFirst': picturesFirst,
      });

  Variables$Mutation$manageMyFavorite._(this._$data);

  factory Variables$Mutation$manageMyFavorite.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$saunaId = data['saunaId'];
    result$data['saunaId'] = (l$saunaId as String);
    final l$isMyFavorite = data['isMyFavorite'];
    result$data['isMyFavorite'] = (l$isMyFavorite as bool);
    if (data.containsKey('picturesFirst')) {
      final l$picturesFirst = data['picturesFirst'];
      result$data['picturesFirst'] = (l$picturesFirst as int?);
    }
    return Variables$Mutation$manageMyFavorite._(result$data);
  }

  Map<String, dynamic> _$data;

  String get saunaId => (_$data['saunaId'] as String);
  bool get isMyFavorite => (_$data['isMyFavorite'] as bool);
  int? get picturesFirst => (_$data['picturesFirst'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$saunaId = saunaId;
    result$data['saunaId'] = l$saunaId;
    final l$isMyFavorite = isMyFavorite;
    result$data['isMyFavorite'] = l$isMyFavorite;
    if (_$data.containsKey('picturesFirst')) {
      final l$picturesFirst = picturesFirst;
      result$data['picturesFirst'] = l$picturesFirst;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$manageMyFavorite<
          Variables$Mutation$manageMyFavorite>
      get copyWith => CopyWith$Variables$Mutation$manageMyFavorite(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$manageMyFavorite) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$saunaId = saunaId;
    final lOther$saunaId = other.saunaId;
    if (l$saunaId != lOther$saunaId) {
      return false;
    }
    final l$isMyFavorite = isMyFavorite;
    final lOther$isMyFavorite = other.isMyFavorite;
    if (l$isMyFavorite != lOther$isMyFavorite) {
      return false;
    }
    final l$picturesFirst = picturesFirst;
    final lOther$picturesFirst = other.picturesFirst;
    if (_$data.containsKey('picturesFirst') !=
        other._$data.containsKey('picturesFirst')) {
      return false;
    }
    if (l$picturesFirst != lOther$picturesFirst) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$saunaId = saunaId;
    final l$isMyFavorite = isMyFavorite;
    final l$picturesFirst = picturesFirst;
    return Object.hashAll([
      l$saunaId,
      l$isMyFavorite,
      _$data.containsKey('picturesFirst') ? l$picturesFirst : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$manageMyFavorite<TRes> {
  factory CopyWith$Variables$Mutation$manageMyFavorite(
    Variables$Mutation$manageMyFavorite instance,
    TRes Function(Variables$Mutation$manageMyFavorite) then,
  ) = _CopyWithImpl$Variables$Mutation$manageMyFavorite;

  factory CopyWith$Variables$Mutation$manageMyFavorite.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$manageMyFavorite;

  TRes call({
    String? saunaId,
    bool? isMyFavorite,
    int? picturesFirst,
  });
}

class _CopyWithImpl$Variables$Mutation$manageMyFavorite<TRes>
    implements CopyWith$Variables$Mutation$manageMyFavorite<TRes> {
  _CopyWithImpl$Variables$Mutation$manageMyFavorite(
    this._instance,
    this._then,
  );

  final Variables$Mutation$manageMyFavorite _instance;

  final TRes Function(Variables$Mutation$manageMyFavorite) _then;

  static const _undefined = {};

  TRes call({
    Object? saunaId = _undefined,
    Object? isMyFavorite = _undefined,
    Object? picturesFirst = _undefined,
  }) =>
      _then(Variables$Mutation$manageMyFavorite._({
        ..._instance._$data,
        if (saunaId != _undefined && saunaId != null)
          'saunaId': (saunaId as String),
        if (isMyFavorite != _undefined && isMyFavorite != null)
          'isMyFavorite': (isMyFavorite as bool),
        if (picturesFirst != _undefined)
          'picturesFirst': (picturesFirst as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$manageMyFavorite<TRes>
    implements CopyWith$Variables$Mutation$manageMyFavorite<TRes> {
  _CopyWithStubImpl$Variables$Mutation$manageMyFavorite(this._res);

  TRes _res;

  call({
    String? saunaId,
    bool? isMyFavorite,
    int? picturesFirst,
  }) =>
      _res;
}

class Mutation$manageMyFavorite {
  Mutation$manageMyFavorite({
    required this.manageMyFavorite,
    required this.$__typename,
  });

  factory Mutation$manageMyFavorite.fromJson(Map<String, dynamic> json) {
    final l$manageMyFavorite = json['manageMyFavorite'];
    final l$$__typename = json['__typename'];
    return Mutation$manageMyFavorite(
      manageMyFavorite: Mutation$manageMyFavorite$manageMyFavorite.fromJson(
          (l$manageMyFavorite as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$manageMyFavorite$manageMyFavorite manageMyFavorite;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$manageMyFavorite = manageMyFavorite;
    _resultData['manageMyFavorite'] = l$manageMyFavorite.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$manageMyFavorite = manageMyFavorite;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$manageMyFavorite,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$manageMyFavorite) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$manageMyFavorite = manageMyFavorite;
    final lOther$manageMyFavorite = other.manageMyFavorite;
    if (l$manageMyFavorite != lOther$manageMyFavorite) {
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

extension UtilityExtension$Mutation$manageMyFavorite
    on Mutation$manageMyFavorite {
  CopyWith$Mutation$manageMyFavorite<Mutation$manageMyFavorite> get copyWith =>
      CopyWith$Mutation$manageMyFavorite(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$manageMyFavorite<TRes> {
  factory CopyWith$Mutation$manageMyFavorite(
    Mutation$manageMyFavorite instance,
    TRes Function(Mutation$manageMyFavorite) then,
  ) = _CopyWithImpl$Mutation$manageMyFavorite;

  factory CopyWith$Mutation$manageMyFavorite.stub(TRes res) =
      _CopyWithStubImpl$Mutation$manageMyFavorite;

  TRes call({
    Mutation$manageMyFavorite$manageMyFavorite? manageMyFavorite,
    String? $__typename,
  });
  CopyWith$Mutation$manageMyFavorite$manageMyFavorite<TRes>
      get manageMyFavorite;
}

class _CopyWithImpl$Mutation$manageMyFavorite<TRes>
    implements CopyWith$Mutation$manageMyFavorite<TRes> {
  _CopyWithImpl$Mutation$manageMyFavorite(
    this._instance,
    this._then,
  );

  final Mutation$manageMyFavorite _instance;

  final TRes Function(Mutation$manageMyFavorite) _then;

  static const _undefined = {};

  TRes call({
    Object? manageMyFavorite = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$manageMyFavorite(
        manageMyFavorite: manageMyFavorite == _undefined ||
                manageMyFavorite == null
            ? _instance.manageMyFavorite
            : (manageMyFavorite as Mutation$manageMyFavorite$manageMyFavorite),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$manageMyFavorite$manageMyFavorite<TRes>
      get manageMyFavorite {
    final local$manageMyFavorite = _instance.manageMyFavorite;
    return CopyWith$Mutation$manageMyFavorite$manageMyFavorite(
        local$manageMyFavorite, (e) => call(manageMyFavorite: e));
  }
}

class _CopyWithStubImpl$Mutation$manageMyFavorite<TRes>
    implements CopyWith$Mutation$manageMyFavorite<TRes> {
  _CopyWithStubImpl$Mutation$manageMyFavorite(this._res);

  TRes _res;

  call({
    Mutation$manageMyFavorite$manageMyFavorite? manageMyFavorite,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$manageMyFavorite$manageMyFavorite<TRes>
      get manageMyFavorite =>
          CopyWith$Mutation$manageMyFavorite$manageMyFavorite.stub(_res);
}

const documentNodeMutationmanageMyFavorite = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'manageMyFavorite'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'saunaId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isMyFavorite')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'picturesFirst')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'manageMyFavorite'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'saunaId'),
            value: VariableNode(name: NameNode(value: 'saunaId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'isMyFavorite'),
            value: VariableNode(name: NameNode(value: 'isMyFavorite')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'errors'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ErrorDetail'),
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
            name: NameNode(value: 'sauna'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'SaunaList'),
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
  fragmentDefinitionErrorDetail,
  fragmentDefinitionSaunaList,
  fragmentDefinitionSaunaAutocompleteFragment,
  fragmentDefinitionLocation,
  fragmentDefinitionPicture,
]);
Mutation$manageMyFavorite _parserFn$Mutation$manageMyFavorite(
        Map<String, dynamic> data) =>
    Mutation$manageMyFavorite.fromJson(data);
typedef OnMutationCompleted$Mutation$manageMyFavorite = FutureOr<void> Function(
  dynamic,
  Mutation$manageMyFavorite?,
);

class Options$Mutation$manageMyFavorite
    extends graphql.MutationOptions<Mutation$manageMyFavorite> {
  Options$Mutation$manageMyFavorite({
    String? operationName,
    required Variables$Mutation$manageMyFavorite variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$manageMyFavorite? onCompleted,
    graphql.OnMutationUpdate<Mutation$manageMyFavorite>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$manageMyFavorite(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationmanageMyFavorite,
          parserFn: _parserFn$Mutation$manageMyFavorite,
        );

  final OnMutationCompleted$Mutation$manageMyFavorite? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$manageMyFavorite
    extends graphql.WatchQueryOptions<Mutation$manageMyFavorite> {
  WatchOptions$Mutation$manageMyFavorite({
    String? operationName,
    required Variables$Mutation$manageMyFavorite variables,
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
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationmanageMyFavorite,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$manageMyFavorite,
        );
}

extension ClientExtension$Mutation$manageMyFavorite on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$manageMyFavorite>>
      mutate$manageMyFavorite(
              Options$Mutation$manageMyFavorite options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$manageMyFavorite>
      watchMutation$manageMyFavorite(
              WatchOptions$Mutation$manageMyFavorite options) =>
          this.watchMutation(options);
}

class Mutation$manageMyFavorite$manageMyFavorite {
  Mutation$manageMyFavorite$manageMyFavorite({
    required this.errors,
    this.sauna,
    required this.$__typename,
  });

  factory Mutation$manageMyFavorite$manageMyFavorite.fromJson(
      Map<String, dynamic> json) {
    final l$errors = json['errors'];
    final l$sauna = json['sauna'];
    final l$$__typename = json['__typename'];
    return Mutation$manageMyFavorite$manageMyFavorite(
      errors: (l$errors as List<dynamic>)
          .map(
              (e) => Fragment$ErrorDetail.fromJson((e as Map<String, dynamic>)))
          .toList(),
      sauna: l$sauna == null
          ? null
          : Fragment$SaunaList.fromJson((l$sauna as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ErrorDetail> errors;

  final Fragment$SaunaList? sauna;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e.toJson()).toList();
    final l$sauna = sauna;
    _resultData['sauna'] = l$sauna?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$errors = errors;
    final l$sauna = sauna;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$errors.map((v) => v)),
      l$sauna,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$manageMyFavorite$manageMyFavorite) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$errors = errors;
    final lOther$errors = other.errors;
    if (l$errors.length != lOther$errors.length) {
      return false;
    }
    for (int i = 0; i < l$errors.length; i++) {
      final l$errors$entry = l$errors[i];
      final lOther$errors$entry = lOther$errors[i];
      if (l$errors$entry != lOther$errors$entry) {
        return false;
      }
    }
    final l$sauna = sauna;
    final lOther$sauna = other.sauna;
    if (l$sauna != lOther$sauna) {
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

extension UtilityExtension$Mutation$manageMyFavorite$manageMyFavorite
    on Mutation$manageMyFavorite$manageMyFavorite {
  CopyWith$Mutation$manageMyFavorite$manageMyFavorite<
          Mutation$manageMyFavorite$manageMyFavorite>
      get copyWith => CopyWith$Mutation$manageMyFavorite$manageMyFavorite(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$manageMyFavorite$manageMyFavorite<TRes> {
  factory CopyWith$Mutation$manageMyFavorite$manageMyFavorite(
    Mutation$manageMyFavorite$manageMyFavorite instance,
    TRes Function(Mutation$manageMyFavorite$manageMyFavorite) then,
  ) = _CopyWithImpl$Mutation$manageMyFavorite$manageMyFavorite;

  factory CopyWith$Mutation$manageMyFavorite$manageMyFavorite.stub(TRes res) =
      _CopyWithStubImpl$Mutation$manageMyFavorite$manageMyFavorite;

  TRes call({
    List<Fragment$ErrorDetail>? errors,
    Fragment$SaunaList? sauna,
    String? $__typename,
  });
  TRes errors(
      Iterable<Fragment$ErrorDetail> Function(
              Iterable<CopyWith$Fragment$ErrorDetail<Fragment$ErrorDetail>>)
          _fn);
  CopyWith$Fragment$SaunaList<TRes> get sauna;
}

class _CopyWithImpl$Mutation$manageMyFavorite$manageMyFavorite<TRes>
    implements CopyWith$Mutation$manageMyFavorite$manageMyFavorite<TRes> {
  _CopyWithImpl$Mutation$manageMyFavorite$manageMyFavorite(
    this._instance,
    this._then,
  );

  final Mutation$manageMyFavorite$manageMyFavorite _instance;

  final TRes Function(Mutation$manageMyFavorite$manageMyFavorite) _then;

  static const _undefined = {};

  TRes call({
    Object? errors = _undefined,
    Object? sauna = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$manageMyFavorite$manageMyFavorite(
        errors: errors == _undefined || errors == null
            ? _instance.errors
            : (errors as List<Fragment$ErrorDetail>),
        sauna: sauna == _undefined
            ? _instance.sauna
            : (sauna as Fragment$SaunaList?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes errors(
          Iterable<Fragment$ErrorDetail> Function(
                  Iterable<CopyWith$Fragment$ErrorDetail<Fragment$ErrorDetail>>)
              _fn) =>
      call(
          errors: _fn(_instance.errors.map((e) => CopyWith$Fragment$ErrorDetail(
                e,
                (i) => i,
              ))).toList());
  CopyWith$Fragment$SaunaList<TRes> get sauna {
    final local$sauna = _instance.sauna;
    return local$sauna == null
        ? CopyWith$Fragment$SaunaList.stub(_then(_instance))
        : CopyWith$Fragment$SaunaList(local$sauna, (e) => call(sauna: e));
  }
}

class _CopyWithStubImpl$Mutation$manageMyFavorite$manageMyFavorite<TRes>
    implements CopyWith$Mutation$manageMyFavorite$manageMyFavorite<TRes> {
  _CopyWithStubImpl$Mutation$manageMyFavorite$manageMyFavorite(this._res);

  TRes _res;

  call({
    List<Fragment$ErrorDetail>? errors,
    Fragment$SaunaList? sauna,
    String? $__typename,
  }) =>
      _res;
  errors(_fn) => _res;
  CopyWith$Fragment$SaunaList<TRes> get sauna =>
      CopyWith$Fragment$SaunaList.stub(_res);
}
