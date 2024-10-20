import '../../fragments.graphql.dart';
import '../../schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$myVisits {
  Query$myVisits({
    this.myVisits,
    required this.$__typename,
  });

  factory Query$myVisits.fromJson(Map<String, dynamic> json) {
    final l$myVisits = json['myVisits'];
    final l$$__typename = json['__typename'];
    return Query$myVisits(
      myVisits: l$myVisits == null
          ? null
          : Query$myVisits$myVisits.fromJson(
              (l$myVisits as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$myVisits$myVisits? myVisits;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$myVisits = myVisits;
    _resultData['myVisits'] = l$myVisits?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$myVisits = myVisits;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$myVisits,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$myVisits) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$myVisits = myVisits;
    final lOther$myVisits = other.myVisits;
    if (l$myVisits != lOther$myVisits) {
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

extension UtilityExtension$Query$myVisits on Query$myVisits {
  CopyWith$Query$myVisits<Query$myVisits> get copyWith =>
      CopyWith$Query$myVisits(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$myVisits<TRes> {
  factory CopyWith$Query$myVisits(
    Query$myVisits instance,
    TRes Function(Query$myVisits) then,
  ) = _CopyWithImpl$Query$myVisits;

  factory CopyWith$Query$myVisits.stub(TRes res) =
      _CopyWithStubImpl$Query$myVisits;

  TRes call({
    Query$myVisits$myVisits? myVisits,
    String? $__typename,
  });
  CopyWith$Query$myVisits$myVisits<TRes> get myVisits;
}

class _CopyWithImpl$Query$myVisits<TRes>
    implements CopyWith$Query$myVisits<TRes> {
  _CopyWithImpl$Query$myVisits(
    this._instance,
    this._then,
  );

  final Query$myVisits _instance;

  final TRes Function(Query$myVisits) _then;

  static const _undefined = {};

  TRes call({
    Object? myVisits = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$myVisits(
        myVisits: myVisits == _undefined
            ? _instance.myVisits
            : (myVisits as Query$myVisits$myVisits?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$myVisits$myVisits<TRes> get myVisits {
    final local$myVisits = _instance.myVisits;
    return local$myVisits == null
        ? CopyWith$Query$myVisits$myVisits.stub(_then(_instance))
        : CopyWith$Query$myVisits$myVisits(
            local$myVisits, (e) => call(myVisits: e));
  }
}

class _CopyWithStubImpl$Query$myVisits<TRes>
    implements CopyWith$Query$myVisits<TRes> {
  _CopyWithStubImpl$Query$myVisits(this._res);

  TRes _res;

  call({
    Query$myVisits$myVisits? myVisits,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$myVisits$myVisits<TRes> get myVisits =>
      CopyWith$Query$myVisits$myVisits.stub(_res);
}

const documentNodeQuerymyVisits = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'myVisits'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'myVisits'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: IntValueNode(value: '15'),
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
                name: NameNode(value: 'VisitHistoryListItem'),
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
  fragmentDefinitionVisitHistoryListItem,
  fragmentDefinitionSaunaAutocompleteFragment,
]);
Query$myVisits _parserFn$Query$myVisits(Map<String, dynamic> data) =>
    Query$myVisits.fromJson(data);

class Options$Query$myVisits extends graphql.QueryOptions<Query$myVisits> {
  Options$Query$myVisits({
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
          document: documentNodeQuerymyVisits,
          parserFn: _parserFn$Query$myVisits,
        );
}

class WatchOptions$Query$myVisits
    extends graphql.WatchQueryOptions<Query$myVisits> {
  WatchOptions$Query$myVisits({
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
          document: documentNodeQuerymyVisits,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$myVisits,
        );
}

class FetchMoreOptions$Query$myVisits extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$myVisits({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerymyVisits,
        );
}

extension ClientExtension$Query$myVisits on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$myVisits>> query$myVisits(
          [Options$Query$myVisits? options]) async =>
      await this.query(options ?? Options$Query$myVisits());
  graphql.ObservableQuery<Query$myVisits> watchQuery$myVisits(
          [WatchOptions$Query$myVisits? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$myVisits());
  void writeQuery$myVisits({
    required Query$myVisits data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQuerymyVisits)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$myVisits? readQuery$myVisits({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerymyVisits)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$myVisits.fromJson(result);
  }
}

class Query$myVisits$myVisits {
  Query$myVisits$myVisits({
    this.nodes,
    required this.$__typename,
  });

  factory Query$myVisits$myVisits.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$myVisits$myVisits(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => Fragment$VisitHistoryListItem.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$VisitHistoryListItem>? nodes;

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
    if (!(other is Query$myVisits$myVisits) ||
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

extension UtilityExtension$Query$myVisits$myVisits on Query$myVisits$myVisits {
  CopyWith$Query$myVisits$myVisits<Query$myVisits$myVisits> get copyWith =>
      CopyWith$Query$myVisits$myVisits(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$myVisits$myVisits<TRes> {
  factory CopyWith$Query$myVisits$myVisits(
    Query$myVisits$myVisits instance,
    TRes Function(Query$myVisits$myVisits) then,
  ) = _CopyWithImpl$Query$myVisits$myVisits;

  factory CopyWith$Query$myVisits$myVisits.stub(TRes res) =
      _CopyWithStubImpl$Query$myVisits$myVisits;

  TRes call({
    List<Fragment$VisitHistoryListItem>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Fragment$VisitHistoryListItem>? Function(
              Iterable<
                  CopyWith$Fragment$VisitHistoryListItem<
                      Fragment$VisitHistoryListItem>>?)
          _fn);
}

class _CopyWithImpl$Query$myVisits$myVisits<TRes>
    implements CopyWith$Query$myVisits$myVisits<TRes> {
  _CopyWithImpl$Query$myVisits$myVisits(
    this._instance,
    this._then,
  );

  final Query$myVisits$myVisits _instance;

  final TRes Function(Query$myVisits$myVisits) _then;

  static const _undefined = {};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$myVisits$myVisits(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$VisitHistoryListItem>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes nodes(
          Iterable<Fragment$VisitHistoryListItem>? Function(
                  Iterable<
                      CopyWith$Fragment$VisitHistoryListItem<
                          Fragment$VisitHistoryListItem>>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes
              ?.map((e) => CopyWith$Fragment$VisitHistoryListItem(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$myVisits$myVisits<TRes>
    implements CopyWith$Query$myVisits$myVisits<TRes> {
  _CopyWithStubImpl$Query$myVisits$myVisits(this._res);

  TRes _res;

  call({
    List<Fragment$VisitHistoryListItem>? nodes,
    String? $__typename,
  }) =>
      _res;
  nodes(_fn) => _res;
}

class Variables$Mutation$visitHistoryAdd {
  factory Variables$Mutation$visitHistoryAdd(
          {required Input$VisitHistoryCreateInput input}) =>
      Variables$Mutation$visitHistoryAdd._({
        r'input': input,
      });

  Variables$Mutation$visitHistoryAdd._(this._$data);

  factory Variables$Mutation$visitHistoryAdd.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$VisitHistoryCreateInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$visitHistoryAdd._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$VisitHistoryCreateInput get input =>
      (_$data['input'] as Input$VisitHistoryCreateInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$visitHistoryAdd<
          Variables$Mutation$visitHistoryAdd>
      get copyWith => CopyWith$Variables$Mutation$visitHistoryAdd(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$visitHistoryAdd) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$visitHistoryAdd<TRes> {
  factory CopyWith$Variables$Mutation$visitHistoryAdd(
    Variables$Mutation$visitHistoryAdd instance,
    TRes Function(Variables$Mutation$visitHistoryAdd) then,
  ) = _CopyWithImpl$Variables$Mutation$visitHistoryAdd;

  factory CopyWith$Variables$Mutation$visitHistoryAdd.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$visitHistoryAdd;

  TRes call({Input$VisitHistoryCreateInput? input});
}

class _CopyWithImpl$Variables$Mutation$visitHistoryAdd<TRes>
    implements CopyWith$Variables$Mutation$visitHistoryAdd<TRes> {
  _CopyWithImpl$Variables$Mutation$visitHistoryAdd(
    this._instance,
    this._then,
  );

  final Variables$Mutation$visitHistoryAdd _instance;

  final TRes Function(Variables$Mutation$visitHistoryAdd) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$visitHistoryAdd._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$VisitHistoryCreateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$visitHistoryAdd<TRes>
    implements CopyWith$Variables$Mutation$visitHistoryAdd<TRes> {
  _CopyWithStubImpl$Variables$Mutation$visitHistoryAdd(this._res);

  TRes _res;

  call({Input$VisitHistoryCreateInput? input}) => _res;
}

class Mutation$visitHistoryAdd {
  Mutation$visitHistoryAdd({
    required this.visitHistoryCreate,
    required this.$__typename,
  });

  factory Mutation$visitHistoryAdd.fromJson(Map<String, dynamic> json) {
    final l$visitHistoryCreate = json['visitHistoryCreate'];
    final l$$__typename = json['__typename'];
    return Mutation$visitHistoryAdd(
      visitHistoryCreate: Mutation$visitHistoryAdd$visitHistoryCreate.fromJson(
          (l$visitHistoryCreate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$visitHistoryAdd$visitHistoryCreate visitHistoryCreate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$visitHistoryCreate = visitHistoryCreate;
    _resultData['visitHistoryCreate'] = l$visitHistoryCreate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$visitHistoryCreate = visitHistoryCreate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$visitHistoryCreate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$visitHistoryAdd) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$visitHistoryCreate = visitHistoryCreate;
    final lOther$visitHistoryCreate = other.visitHistoryCreate;
    if (l$visitHistoryCreate != lOther$visitHistoryCreate) {
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

extension UtilityExtension$Mutation$visitHistoryAdd
    on Mutation$visitHistoryAdd {
  CopyWith$Mutation$visitHistoryAdd<Mutation$visitHistoryAdd> get copyWith =>
      CopyWith$Mutation$visitHistoryAdd(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$visitHistoryAdd<TRes> {
  factory CopyWith$Mutation$visitHistoryAdd(
    Mutation$visitHistoryAdd instance,
    TRes Function(Mutation$visitHistoryAdd) then,
  ) = _CopyWithImpl$Mutation$visitHistoryAdd;

  factory CopyWith$Mutation$visitHistoryAdd.stub(TRes res) =
      _CopyWithStubImpl$Mutation$visitHistoryAdd;

  TRes call({
    Mutation$visitHistoryAdd$visitHistoryCreate? visitHistoryCreate,
    String? $__typename,
  });
  CopyWith$Mutation$visitHistoryAdd$visitHistoryCreate<TRes>
      get visitHistoryCreate;
}

class _CopyWithImpl$Mutation$visitHistoryAdd<TRes>
    implements CopyWith$Mutation$visitHistoryAdd<TRes> {
  _CopyWithImpl$Mutation$visitHistoryAdd(
    this._instance,
    this._then,
  );

  final Mutation$visitHistoryAdd _instance;

  final TRes Function(Mutation$visitHistoryAdd) _then;

  static const _undefined = {};

  TRes call({
    Object? visitHistoryCreate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$visitHistoryAdd(
        visitHistoryCreate:
            visitHistoryCreate == _undefined || visitHistoryCreate == null
                ? _instance.visitHistoryCreate
                : (visitHistoryCreate
                    as Mutation$visitHistoryAdd$visitHistoryCreate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$visitHistoryAdd$visitHistoryCreate<TRes>
      get visitHistoryCreate {
    final local$visitHistoryCreate = _instance.visitHistoryCreate;
    return CopyWith$Mutation$visitHistoryAdd$visitHistoryCreate(
        local$visitHistoryCreate, (e) => call(visitHistoryCreate: e));
  }
}

class _CopyWithStubImpl$Mutation$visitHistoryAdd<TRes>
    implements CopyWith$Mutation$visitHistoryAdd<TRes> {
  _CopyWithStubImpl$Mutation$visitHistoryAdd(this._res);

  TRes _res;

  call({
    Mutation$visitHistoryAdd$visitHistoryCreate? visitHistoryCreate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$visitHistoryAdd$visitHistoryCreate<TRes>
      get visitHistoryCreate =>
          CopyWith$Mutation$visitHistoryAdd$visitHistoryCreate.stub(_res);
}

const documentNodeMutationvisitHistoryAdd = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'visitHistoryAdd'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'VisitHistoryCreateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'visitHistoryCreate'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'visitHistory'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'VisitHistoryListItem'),
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
            name: NameNode(value: 'errors'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'code'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
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
  fragmentDefinitionVisitHistoryListItem,
  fragmentDefinitionSaunaAutocompleteFragment,
]);
Mutation$visitHistoryAdd _parserFn$Mutation$visitHistoryAdd(
        Map<String, dynamic> data) =>
    Mutation$visitHistoryAdd.fromJson(data);
typedef OnMutationCompleted$Mutation$visitHistoryAdd = FutureOr<void> Function(
  dynamic,
  Mutation$visitHistoryAdd?,
);

class Options$Mutation$visitHistoryAdd
    extends graphql.MutationOptions<Mutation$visitHistoryAdd> {
  Options$Mutation$visitHistoryAdd({
    String? operationName,
    required Variables$Mutation$visitHistoryAdd variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$visitHistoryAdd? onCompleted,
    graphql.OnMutationUpdate<Mutation$visitHistoryAdd>? update,
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
                        : _parserFn$Mutation$visitHistoryAdd(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationvisitHistoryAdd,
          parserFn: _parserFn$Mutation$visitHistoryAdd,
        );

  final OnMutationCompleted$Mutation$visitHistoryAdd? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$visitHistoryAdd
    extends graphql.WatchQueryOptions<Mutation$visitHistoryAdd> {
  WatchOptions$Mutation$visitHistoryAdd({
    String? operationName,
    required Variables$Mutation$visitHistoryAdd variables,
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
          document: documentNodeMutationvisitHistoryAdd,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$visitHistoryAdd,
        );
}

extension ClientExtension$Mutation$visitHistoryAdd on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$visitHistoryAdd>> mutate$visitHistoryAdd(
          Options$Mutation$visitHistoryAdd options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$visitHistoryAdd>
      watchMutation$visitHistoryAdd(
              WatchOptions$Mutation$visitHistoryAdd options) =>
          this.watchMutation(options);
}

class Mutation$visitHistoryAdd$visitHistoryCreate {
  Mutation$visitHistoryAdd$visitHistoryCreate({
    this.visitHistory,
    required this.errors,
    required this.$__typename,
  });

  factory Mutation$visitHistoryAdd$visitHistoryCreate.fromJson(
      Map<String, dynamic> json) {
    final l$visitHistory = json['visitHistory'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$visitHistoryAdd$visitHistoryCreate(
      visitHistory: l$visitHistory == null
          ? null
          : Fragment$VisitHistoryListItem.fromJson(
              (l$visitHistory as Map<String, dynamic>)),
      errors: (l$errors as List<dynamic>)
          .map((e) =>
              Mutation$visitHistoryAdd$visitHistoryCreate$errors.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$VisitHistoryListItem? visitHistory;

  final List<Mutation$visitHistoryAdd$visitHistoryCreate$errors> errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$visitHistory = visitHistory;
    _resultData['visitHistory'] = l$visitHistory?.toJson();
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$visitHistory = visitHistory;
    final l$errors = errors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$visitHistory,
      Object.hashAll(l$errors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$visitHistoryAdd$visitHistoryCreate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$visitHistory = visitHistory;
    final lOther$visitHistory = other.visitHistory;
    if (l$visitHistory != lOther$visitHistory) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$visitHistoryAdd$visitHistoryCreate
    on Mutation$visitHistoryAdd$visitHistoryCreate {
  CopyWith$Mutation$visitHistoryAdd$visitHistoryCreate<
          Mutation$visitHistoryAdd$visitHistoryCreate>
      get copyWith => CopyWith$Mutation$visitHistoryAdd$visitHistoryCreate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$visitHistoryAdd$visitHistoryCreate<TRes> {
  factory CopyWith$Mutation$visitHistoryAdd$visitHistoryCreate(
    Mutation$visitHistoryAdd$visitHistoryCreate instance,
    TRes Function(Mutation$visitHistoryAdd$visitHistoryCreate) then,
  ) = _CopyWithImpl$Mutation$visitHistoryAdd$visitHistoryCreate;

  factory CopyWith$Mutation$visitHistoryAdd$visitHistoryCreate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$visitHistoryAdd$visitHistoryCreate;

  TRes call({
    Fragment$VisitHistoryListItem? visitHistory,
    List<Mutation$visitHistoryAdd$visitHistoryCreate$errors>? errors,
    String? $__typename,
  });
  CopyWith$Fragment$VisitHistoryListItem<TRes> get visitHistory;
  TRes errors(
      Iterable<Mutation$visitHistoryAdd$visitHistoryCreate$errors> Function(
              Iterable<
                  CopyWith$Mutation$visitHistoryAdd$visitHistoryCreate$errors<
                      Mutation$visitHistoryAdd$visitHistoryCreate$errors>>)
          _fn);
}

class _CopyWithImpl$Mutation$visitHistoryAdd$visitHistoryCreate<TRes>
    implements CopyWith$Mutation$visitHistoryAdd$visitHistoryCreate<TRes> {
  _CopyWithImpl$Mutation$visitHistoryAdd$visitHistoryCreate(
    this._instance,
    this._then,
  );

  final Mutation$visitHistoryAdd$visitHistoryCreate _instance;

  final TRes Function(Mutation$visitHistoryAdd$visitHistoryCreate) _then;

  static const _undefined = {};

  TRes call({
    Object? visitHistory = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$visitHistoryAdd$visitHistoryCreate(
        visitHistory: visitHistory == _undefined
            ? _instance.visitHistory
            : (visitHistory as Fragment$VisitHistoryListItem?),
        errors: errors == _undefined || errors == null
            ? _instance.errors
            : (errors
                as List<Mutation$visitHistoryAdd$visitHistoryCreate$errors>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$VisitHistoryListItem<TRes> get visitHistory {
    final local$visitHistory = _instance.visitHistory;
    return local$visitHistory == null
        ? CopyWith$Fragment$VisitHistoryListItem.stub(_then(_instance))
        : CopyWith$Fragment$VisitHistoryListItem(
            local$visitHistory, (e) => call(visitHistory: e));
  }

  TRes errors(
          Iterable<Mutation$visitHistoryAdd$visitHistoryCreate$errors> Function(
                  Iterable<
                      CopyWith$Mutation$visitHistoryAdd$visitHistoryCreate$errors<
                          Mutation$visitHistoryAdd$visitHistoryCreate$errors>>)
              _fn) =>
      call(
          errors: _fn(_instance.errors.map((e) =>
              CopyWith$Mutation$visitHistoryAdd$visitHistoryCreate$errors(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$visitHistoryAdd$visitHistoryCreate<TRes>
    implements CopyWith$Mutation$visitHistoryAdd$visitHistoryCreate<TRes> {
  _CopyWithStubImpl$Mutation$visitHistoryAdd$visitHistoryCreate(this._res);

  TRes _res;

  call({
    Fragment$VisitHistoryListItem? visitHistory,
    List<Mutation$visitHistoryAdd$visitHistoryCreate$errors>? errors,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$VisitHistoryListItem<TRes> get visitHistory =>
      CopyWith$Fragment$VisitHistoryListItem.stub(_res);
  errors(_fn) => _res;
}

class Mutation$visitHistoryAdd$visitHistoryCreate$errors {
  Mutation$visitHistoryAdd$visitHistoryCreate$errors({
    required this.code,
    this.message,
    required this.$__typename,
  });

  factory Mutation$visitHistoryAdd$visitHistoryCreate$errors.fromJson(
      Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$visitHistoryAdd$visitHistoryCreate$errors(
      code: (l$code as String),
      message: (l$message as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String? message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$visitHistoryAdd$visitHistoryCreate$errors) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$visitHistoryAdd$visitHistoryCreate$errors
    on Mutation$visitHistoryAdd$visitHistoryCreate$errors {
  CopyWith$Mutation$visitHistoryAdd$visitHistoryCreate$errors<
          Mutation$visitHistoryAdd$visitHistoryCreate$errors>
      get copyWith =>
          CopyWith$Mutation$visitHistoryAdd$visitHistoryCreate$errors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$visitHistoryAdd$visitHistoryCreate$errors<
    TRes> {
  factory CopyWith$Mutation$visitHistoryAdd$visitHistoryCreate$errors(
    Mutation$visitHistoryAdd$visitHistoryCreate$errors instance,
    TRes Function(Mutation$visitHistoryAdd$visitHistoryCreate$errors) then,
  ) = _CopyWithImpl$Mutation$visitHistoryAdd$visitHistoryCreate$errors;

  factory CopyWith$Mutation$visitHistoryAdd$visitHistoryCreate$errors.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$visitHistoryAdd$visitHistoryCreate$errors;

  TRes call({
    String? code,
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$visitHistoryAdd$visitHistoryCreate$errors<TRes>
    implements
        CopyWith$Mutation$visitHistoryAdd$visitHistoryCreate$errors<TRes> {
  _CopyWithImpl$Mutation$visitHistoryAdd$visitHistoryCreate$errors(
    this._instance,
    this._then,
  );

  final Mutation$visitHistoryAdd$visitHistoryCreate$errors _instance;

  final TRes Function(Mutation$visitHistoryAdd$visitHistoryCreate$errors) _then;

  static const _undefined = {};

  TRes call({
    Object? code = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$visitHistoryAdd$visitHistoryCreate$errors(
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        message:
            message == _undefined ? _instance.message : (message as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$visitHistoryAdd$visitHistoryCreate$errors<TRes>
    implements
        CopyWith$Mutation$visitHistoryAdd$visitHistoryCreate$errors<TRes> {
  _CopyWithStubImpl$Mutation$visitHistoryAdd$visitHistoryCreate$errors(
      this._res);

  TRes _res;

  call({
    String? code,
    String? message,
    String? $__typename,
  }) =>
      _res;
}
