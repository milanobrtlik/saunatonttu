import '../../fragments.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

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
