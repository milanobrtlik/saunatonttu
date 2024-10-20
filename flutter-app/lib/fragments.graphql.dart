import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:saunatonttu/custom_graphql_scalars.dart';
import 'schema.graphql.dart';

class Fragment$ErrorDetail {
  Fragment$ErrorDetail({
    this.message,
    required this.code,
    required this.$__typename,
  });

  factory Fragment$ErrorDetail.fromJson(Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Fragment$ErrorDetail(
      message: (l$message as String?),
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? message;

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$code,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ErrorDetail) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Fragment$ErrorDetail on Fragment$ErrorDetail {
  CopyWith$Fragment$ErrorDetail<Fragment$ErrorDetail> get copyWith =>
      CopyWith$Fragment$ErrorDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ErrorDetail<TRes> {
  factory CopyWith$Fragment$ErrorDetail(
    Fragment$ErrorDetail instance,
    TRes Function(Fragment$ErrorDetail) then,
  ) = _CopyWithImpl$Fragment$ErrorDetail;

  factory CopyWith$Fragment$ErrorDetail.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ErrorDetail;

  TRes call({
    String? message,
    String? code,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ErrorDetail<TRes>
    implements CopyWith$Fragment$ErrorDetail<TRes> {
  _CopyWithImpl$Fragment$ErrorDetail(
    this._instance,
    this._then,
  );

  final Fragment$ErrorDetail _instance;

  final TRes Function(Fragment$ErrorDetail) _then;

  static const _undefined = {};

  TRes call({
    Object? message = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ErrorDetail(
        message:
            message == _undefined ? _instance.message : (message as String?),
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ErrorDetail<TRes>
    implements CopyWith$Fragment$ErrorDetail<TRes> {
  _CopyWithStubImpl$Fragment$ErrorDetail(this._res);

  TRes _res;

  call({
    String? message,
    String? code,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionErrorDetail = FragmentDefinitionNode(
  name: NameNode(value: 'ErrorDetail'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'UserError'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'message'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'code'),
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
);
const documentNodeFragmentErrorDetail = DocumentNode(definitions: [
  fragmentDefinitionErrorDetail,
]);

extension ClientExtension$Fragment$ErrorDetail on graphql.GraphQLClient {
  void writeFragment$ErrorDetail({
    required Fragment$ErrorDetail data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ErrorDetail',
            document: documentNodeFragmentErrorDetail,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ErrorDetail? readFragment$ErrorDetail({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ErrorDetail',
          document: documentNodeFragmentErrorDetail,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ErrorDetail.fromJson(result);
  }
}

class Fragment$SaunaAutocompleteFragment {
  Fragment$SaunaAutocompleteFragment({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Fragment$SaunaAutocompleteFragment.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$SaunaAutocompleteFragment(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$SaunaAutocompleteFragment) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Fragment$SaunaAutocompleteFragment
    on Fragment$SaunaAutocompleteFragment {
  CopyWith$Fragment$SaunaAutocompleteFragment<
          Fragment$SaunaAutocompleteFragment>
      get copyWith => CopyWith$Fragment$SaunaAutocompleteFragment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SaunaAutocompleteFragment<TRes> {
  factory CopyWith$Fragment$SaunaAutocompleteFragment(
    Fragment$SaunaAutocompleteFragment instance,
    TRes Function(Fragment$SaunaAutocompleteFragment) then,
  ) = _CopyWithImpl$Fragment$SaunaAutocompleteFragment;

  factory CopyWith$Fragment$SaunaAutocompleteFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SaunaAutocompleteFragment;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$SaunaAutocompleteFragment<TRes>
    implements CopyWith$Fragment$SaunaAutocompleteFragment<TRes> {
  _CopyWithImpl$Fragment$SaunaAutocompleteFragment(
    this._instance,
    this._then,
  );

  final Fragment$SaunaAutocompleteFragment _instance;

  final TRes Function(Fragment$SaunaAutocompleteFragment) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SaunaAutocompleteFragment(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$SaunaAutocompleteFragment<TRes>
    implements CopyWith$Fragment$SaunaAutocompleteFragment<TRes> {
  _CopyWithStubImpl$Fragment$SaunaAutocompleteFragment(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionSaunaAutocompleteFragment = FragmentDefinitionNode(
  name: NameNode(value: 'SaunaAutocompleteFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Sauna'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'name'),
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
);
const documentNodeFragmentSaunaAutocompleteFragment =
    DocumentNode(definitions: [
  fragmentDefinitionSaunaAutocompleteFragment,
]);

extension ClientExtension$Fragment$SaunaAutocompleteFragment
    on graphql.GraphQLClient {
  void writeFragment$SaunaAutocompleteFragment({
    required Fragment$SaunaAutocompleteFragment data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'SaunaAutocompleteFragment',
            document: documentNodeFragmentSaunaAutocompleteFragment,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$SaunaAutocompleteFragment? readFragment$SaunaAutocompleteFragment({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'SaunaAutocompleteFragment',
          document: documentNodeFragmentSaunaAutocompleteFragment,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$SaunaAutocompleteFragment.fromJson(result);
  }
}

class Variables$Fragment$SaunaList {
  factory Variables$Fragment$SaunaList({int? picturesFirst}) =>
      Variables$Fragment$SaunaList._({
        if (picturesFirst != null) r'picturesFirst': picturesFirst,
      });

  Variables$Fragment$SaunaList._(this._$data);

  factory Variables$Fragment$SaunaList.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('picturesFirst')) {
      final l$picturesFirst = data['picturesFirst'];
      result$data['picturesFirst'] = (l$picturesFirst as int?);
    }
    return Variables$Fragment$SaunaList._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get picturesFirst => (_$data['picturesFirst'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('picturesFirst')) {
      final l$picturesFirst = picturesFirst;
      result$data['picturesFirst'] = l$picturesFirst;
    }
    return result$data;
  }

  CopyWith$Variables$Fragment$SaunaList<Variables$Fragment$SaunaList>
      get copyWith => CopyWith$Variables$Fragment$SaunaList(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Fragment$SaunaList) ||
        runtimeType != other.runtimeType) {
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
    final l$picturesFirst = picturesFirst;
    return Object.hashAll(
        [_$data.containsKey('picturesFirst') ? l$picturesFirst : const {}]);
  }
}

abstract class CopyWith$Variables$Fragment$SaunaList<TRes> {
  factory CopyWith$Variables$Fragment$SaunaList(
    Variables$Fragment$SaunaList instance,
    TRes Function(Variables$Fragment$SaunaList) then,
  ) = _CopyWithImpl$Variables$Fragment$SaunaList;

  factory CopyWith$Variables$Fragment$SaunaList.stub(TRes res) =
      _CopyWithStubImpl$Variables$Fragment$SaunaList;

  TRes call({int? picturesFirst});
}

class _CopyWithImpl$Variables$Fragment$SaunaList<TRes>
    implements CopyWith$Variables$Fragment$SaunaList<TRes> {
  _CopyWithImpl$Variables$Fragment$SaunaList(
    this._instance,
    this._then,
  );

  final Variables$Fragment$SaunaList _instance;

  final TRes Function(Variables$Fragment$SaunaList) _then;

  static const _undefined = {};

  TRes call({Object? picturesFirst = _undefined}) =>
      _then(Variables$Fragment$SaunaList._({
        ..._instance._$data,
        if (picturesFirst != _undefined)
          'picturesFirst': (picturesFirst as int?),
      }));
}

class _CopyWithStubImpl$Variables$Fragment$SaunaList<TRes>
    implements CopyWith$Variables$Fragment$SaunaList<TRes> {
  _CopyWithStubImpl$Variables$Fragment$SaunaList(this._res);

  TRes _res;

  call({int? picturesFirst}) => _res;
}

class Fragment$SaunaList implements Fragment$SaunaAutocompleteFragment {
  Fragment$SaunaList({
    required this.id,
    required this.name,
    required this.$__typename,
    this.leadParagraph,
    this.address,
    required this.location,
    required this.isPrivate,
    required this.isMyFavorite,
    this.pictures,
  });

  factory Fragment$SaunaList.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    final l$leadParagraph = json['leadParagraph'];
    final l$address = json['address'];
    final l$location = json['location'];
    final l$isPrivate = json['isPrivate'];
    final l$isMyFavorite = json['isMyFavorite'];
    final l$pictures = json['pictures'];
    return Fragment$SaunaList(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
      leadParagraph: (l$leadParagraph as String?),
      address: (l$address as String?),
      location:
          Fragment$Location.fromJson((l$location as Map<String, dynamic>)),
      isPrivate: (l$isPrivate as bool),
      isMyFavorite: (l$isMyFavorite as bool),
      pictures: l$pictures == null
          ? null
          : Fragment$SaunaList$pictures.fromJson(
              (l$pictures as Map<String, dynamic>)),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  final String? leadParagraph;

  final String? address;

  final Fragment$Location location;

  final bool isPrivate;

  final bool isMyFavorite;

  final Fragment$SaunaList$pictures? pictures;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$leadParagraph = leadParagraph;
    _resultData['leadParagraph'] = l$leadParagraph;
    final l$address = address;
    _resultData['address'] = l$address;
    final l$location = location;
    _resultData['location'] = l$location.toJson();
    final l$isPrivate = isPrivate;
    _resultData['isPrivate'] = l$isPrivate;
    final l$isMyFavorite = isMyFavorite;
    _resultData['isMyFavorite'] = l$isMyFavorite;
    final l$pictures = pictures;
    _resultData['pictures'] = l$pictures?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    final l$leadParagraph = leadParagraph;
    final l$address = address;
    final l$location = location;
    final l$isPrivate = isPrivate;
    final l$isMyFavorite = isMyFavorite;
    final l$pictures = pictures;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
      l$leadParagraph,
      l$address,
      l$location,
      l$isPrivate,
      l$isMyFavorite,
      l$pictures,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$SaunaList) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$leadParagraph = leadParagraph;
    final lOther$leadParagraph = other.leadParagraph;
    if (l$leadParagraph != lOther$leadParagraph) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$isPrivate = isPrivate;
    final lOther$isPrivate = other.isPrivate;
    if (l$isPrivate != lOther$isPrivate) {
      return false;
    }
    final l$isMyFavorite = isMyFavorite;
    final lOther$isMyFavorite = other.isMyFavorite;
    if (l$isMyFavorite != lOther$isMyFavorite) {
      return false;
    }
    final l$pictures = pictures;
    final lOther$pictures = other.pictures;
    if (l$pictures != lOther$pictures) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$SaunaList on Fragment$SaunaList {
  CopyWith$Fragment$SaunaList<Fragment$SaunaList> get copyWith =>
      CopyWith$Fragment$SaunaList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$SaunaList<TRes> {
  factory CopyWith$Fragment$SaunaList(
    Fragment$SaunaList instance,
    TRes Function(Fragment$SaunaList) then,
  ) = _CopyWithImpl$Fragment$SaunaList;

  factory CopyWith$Fragment$SaunaList.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SaunaList;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
    String? leadParagraph,
    String? address,
    Fragment$Location? location,
    bool? isPrivate,
    bool? isMyFavorite,
    Fragment$SaunaList$pictures? pictures,
  });
  CopyWith$Fragment$Location<TRes> get location;
  CopyWith$Fragment$SaunaList$pictures<TRes> get pictures;
}

class _CopyWithImpl$Fragment$SaunaList<TRes>
    implements CopyWith$Fragment$SaunaList<TRes> {
  _CopyWithImpl$Fragment$SaunaList(
    this._instance,
    this._then,
  );

  final Fragment$SaunaList _instance;

  final TRes Function(Fragment$SaunaList) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
    Object? leadParagraph = _undefined,
    Object? address = _undefined,
    Object? location = _undefined,
    Object? isPrivate = _undefined,
    Object? isMyFavorite = _undefined,
    Object? pictures = _undefined,
  }) =>
      _then(Fragment$SaunaList(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        leadParagraph: leadParagraph == _undefined
            ? _instance.leadParagraph
            : (leadParagraph as String?),
        address:
            address == _undefined ? _instance.address : (address as String?),
        location: location == _undefined || location == null
            ? _instance.location
            : (location as Fragment$Location),
        isPrivate: isPrivate == _undefined || isPrivate == null
            ? _instance.isPrivate
            : (isPrivate as bool),
        isMyFavorite: isMyFavorite == _undefined || isMyFavorite == null
            ? _instance.isMyFavorite
            : (isMyFavorite as bool),
        pictures: pictures == _undefined
            ? _instance.pictures
            : (pictures as Fragment$SaunaList$pictures?),
      ));
  CopyWith$Fragment$Location<TRes> get location {
    final local$location = _instance.location;
    return CopyWith$Fragment$Location(local$location, (e) => call(location: e));
  }

  CopyWith$Fragment$SaunaList$pictures<TRes> get pictures {
    final local$pictures = _instance.pictures;
    return local$pictures == null
        ? CopyWith$Fragment$SaunaList$pictures.stub(_then(_instance))
        : CopyWith$Fragment$SaunaList$pictures(
            local$pictures, (e) => call(pictures: e));
  }
}

class _CopyWithStubImpl$Fragment$SaunaList<TRes>
    implements CopyWith$Fragment$SaunaList<TRes> {
  _CopyWithStubImpl$Fragment$SaunaList(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
    String? leadParagraph,
    String? address,
    Fragment$Location? location,
    bool? isPrivate,
    bool? isMyFavorite,
    Fragment$SaunaList$pictures? pictures,
  }) =>
      _res;
  CopyWith$Fragment$Location<TRes> get location =>
      CopyWith$Fragment$Location.stub(_res);
  CopyWith$Fragment$SaunaList$pictures<TRes> get pictures =>
      CopyWith$Fragment$SaunaList$pictures.stub(_res);
}

const fragmentDefinitionSaunaList = FragmentDefinitionNode(
  name: NameNode(value: 'SaunaList'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Sauna'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FragmentSpreadNode(
      name: NameNode(value: 'SaunaAutocompleteFragment'),
      directives: [],
    ),
    FieldNode(
      name: NameNode(value: 'leadParagraph'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'address'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'location'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Location'),
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
      name: NameNode(value: 'isPrivate'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isMyFavorite'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'pictures'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'first'),
          value: VariableNode(name: NameNode(value: 'picturesFirst')),
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
              name: NameNode(value: 'Picture'),
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
);
const documentNodeFragmentSaunaList = DocumentNode(definitions: [
  fragmentDefinitionSaunaList,
  fragmentDefinitionSaunaAutocompleteFragment,
  fragmentDefinitionLocation,
  fragmentDefinitionPicture,
]);

extension ClientExtension$Fragment$SaunaList on graphql.GraphQLClient {
  void writeFragment$SaunaList({
    required Fragment$SaunaList data,
    required Map<String, dynamic> idFields,
    Variables$Fragment$SaunaList? variables,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'SaunaList',
            document: documentNodeFragmentSaunaList,
          ),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$SaunaList? readFragment$SaunaList({
    required Map<String, dynamic> idFields,
    Variables$Fragment$SaunaList? variables,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'SaunaList',
          document: documentNodeFragmentSaunaList,
        ),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$SaunaList.fromJson(result);
  }
}

class Fragment$SaunaList$pictures {
  Fragment$SaunaList$pictures({
    this.nodes,
    required this.$__typename,
  });

  factory Fragment$SaunaList$pictures.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Fragment$SaunaList$pictures(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$Picture.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Picture?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
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
    if (!(other is Fragment$SaunaList$pictures) ||
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

extension UtilityExtension$Fragment$SaunaList$pictures
    on Fragment$SaunaList$pictures {
  CopyWith$Fragment$SaunaList$pictures<Fragment$SaunaList$pictures>
      get copyWith => CopyWith$Fragment$SaunaList$pictures(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SaunaList$pictures<TRes> {
  factory CopyWith$Fragment$SaunaList$pictures(
    Fragment$SaunaList$pictures instance,
    TRes Function(Fragment$SaunaList$pictures) then,
  ) = _CopyWithImpl$Fragment$SaunaList$pictures;

  factory CopyWith$Fragment$SaunaList$pictures.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SaunaList$pictures;

  TRes call({
    List<Fragment$Picture?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Fragment$Picture?>? Function(
              Iterable<CopyWith$Fragment$Picture<Fragment$Picture>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$SaunaList$pictures<TRes>
    implements CopyWith$Fragment$SaunaList$pictures<TRes> {
  _CopyWithImpl$Fragment$SaunaList$pictures(
    this._instance,
    this._then,
  );

  final Fragment$SaunaList$pictures _instance;

  final TRes Function(Fragment$SaunaList$pictures) _then;

  static const _undefined = {};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SaunaList$pictures(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$Picture?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes nodes(
          Iterable<Fragment$Picture?>? Function(
                  Iterable<CopyWith$Fragment$Picture<Fragment$Picture>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Fragment$Picture(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$SaunaList$pictures<TRes>
    implements CopyWith$Fragment$SaunaList$pictures<TRes> {
  _CopyWithStubImpl$Fragment$SaunaList$pictures(this._res);

  TRes _res;

  call({
    List<Fragment$Picture?>? nodes,
    String? $__typename,
  }) =>
      _res;
  nodes(_fn) => _res;
}

class Fragment$Location {
  Fragment$Location({
    required this.bbox,
    this.coordinates,
    required this.crs,
    required this.type,
    required this.$__typename,
  });

  factory Fragment$Location.fromJson(Map<String, dynamic> json) {
    final l$bbox = json['bbox'];
    final l$coordinates = json['coordinates'];
    final l$crs = json['crs'];
    final l$type = json['type'];
    final l$$__typename = json['__typename'];
    return Fragment$Location(
      bbox:
          (l$bbox as List<dynamic>).map((e) => (e as num).toDouble()).toList(),
      coordinates:
          l$coordinates == null ? null : customPositionFromJson(l$coordinates),
      crs: (l$crs as int),
      type: fromJson$Enum$GeoJSONGeometryType((l$type as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<double> bbox;

  final Position? coordinates;

  final int crs;

  final Enum$GeoJSONGeometryType type;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bbox = bbox;
    _resultData['bbox'] = l$bbox.map((e) => e).toList();
    final l$coordinates = coordinates;
    _resultData['coordinates'] =
        l$coordinates == null ? null : customPositionToJson(l$coordinates);
    final l$crs = crs;
    _resultData['crs'] = l$crs;
    final l$type = type;
    _resultData['type'] = toJson$Enum$GeoJSONGeometryType(l$type);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bbox = bbox;
    final l$coordinates = coordinates;
    final l$crs = crs;
    final l$type = type;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$bbox.map((v) => v)),
      l$coordinates,
      l$crs,
      l$type,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Location) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$bbox = bbox;
    final lOther$bbox = other.bbox;
    if (l$bbox.length != lOther$bbox.length) {
      return false;
    }
    for (int i = 0; i < l$bbox.length; i++) {
      final l$bbox$entry = l$bbox[i];
      final lOther$bbox$entry = lOther$bbox[i];
      if (l$bbox$entry != lOther$bbox$entry) {
        return false;
      }
    }
    final l$coordinates = coordinates;
    final lOther$coordinates = other.coordinates;
    if (l$coordinates != lOther$coordinates) {
      return false;
    }
    final l$crs = crs;
    final lOther$crs = other.crs;
    if (l$crs != lOther$crs) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
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

extension UtilityExtension$Fragment$Location on Fragment$Location {
  CopyWith$Fragment$Location<Fragment$Location> get copyWith =>
      CopyWith$Fragment$Location(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Location<TRes> {
  factory CopyWith$Fragment$Location(
    Fragment$Location instance,
    TRes Function(Fragment$Location) then,
  ) = _CopyWithImpl$Fragment$Location;

  factory CopyWith$Fragment$Location.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Location;

  TRes call({
    List<double>? bbox,
    Position? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Location<TRes>
    implements CopyWith$Fragment$Location<TRes> {
  _CopyWithImpl$Fragment$Location(
    this._instance,
    this._then,
  );

  final Fragment$Location _instance;

  final TRes Function(Fragment$Location) _then;

  static const _undefined = {};

  TRes call({
    Object? bbox = _undefined,
    Object? coordinates = _undefined,
    Object? crs = _undefined,
    Object? type = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Location(
        bbox: bbox == _undefined || bbox == null
            ? _instance.bbox
            : (bbox as List<double>),
        coordinates: coordinates == _undefined
            ? _instance.coordinates
            : (coordinates as Position?),
        crs: crs == _undefined || crs == null ? _instance.crs : (crs as int),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$GeoJSONGeometryType),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Location<TRes>
    implements CopyWith$Fragment$Location<TRes> {
  _CopyWithStubImpl$Fragment$Location(this._res);

  TRes _res;

  call({
    List<double>? bbox,
    Position? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionLocation = FragmentDefinitionNode(
  name: NameNode(value: 'Location'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'GeoJSONPointType'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'bbox'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'coordinates'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'crs'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'type'),
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
);
const documentNodeFragmentLocation = DocumentNode(definitions: [
  fragmentDefinitionLocation,
]);

extension ClientExtension$Fragment$Location on graphql.GraphQLClient {
  void writeFragment$Location({
    required Fragment$Location data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Location',
            document: documentNodeFragmentLocation,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Location? readFragment$Location({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Location',
          document: documentNodeFragmentLocation,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Location.fromJson(result);
  }
}

class Fragment$SaunaFullDetail {
  Fragment$SaunaFullDetail({
    required this.id,
    required this.name,
    this.leadParagraph,
    this.content,
    this.email,
    this.phone,
    this.address,
    required this.isPrivate,
    this.pictures,
    required this.openingHours,
    required this.prices,
    this.url,
    required this.location,
    required this.$__typename,
  });

  factory Fragment$SaunaFullDetail.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$leadParagraph = json['leadParagraph'];
    final l$content = json['content'];
    final l$email = json['email'];
    final l$phone = json['phone'];
    final l$address = json['address'];
    final l$isPrivate = json['isPrivate'];
    final l$pictures = json['pictures'];
    final l$openingHours = json['openingHours'];
    final l$prices = json['prices'];
    final l$url = json['url'];
    final l$location = json['location'];
    final l$$__typename = json['__typename'];
    return Fragment$SaunaFullDetail(
      id: (l$id as String),
      name: (l$name as String),
      leadParagraph: (l$leadParagraph as String?),
      content: (l$content as String?),
      email: (l$email as String?),
      phone: (l$phone as String?),
      address: (l$address as String?),
      isPrivate: (l$isPrivate as bool),
      pictures: l$pictures == null
          ? null
          : Fragment$SaunaFullDetail$pictures.fromJson(
              (l$pictures as Map<String, dynamic>)),
      openingHours: (l$openingHours as List<dynamic>)
          .map(
              (e) => Fragment$OpeningHour.fromJson((e as Map<String, dynamic>)))
          .toList(),
      prices: (l$prices as List<dynamic>)
          .map((e) => Fragment$Price.fromJson((e as Map<String, dynamic>)))
          .toList(),
      url: (l$url as String?),
      location: Fragment$SaunaFullDetail$location.fromJson(
          (l$location as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? leadParagraph;

  final String? content;

  final String? email;

  final String? phone;

  final String? address;

  final bool isPrivate;

  final Fragment$SaunaFullDetail$pictures? pictures;

  final List<Fragment$OpeningHour> openingHours;

  final List<Fragment$Price> prices;

  final String? url;

  final Fragment$SaunaFullDetail$location location;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$leadParagraph = leadParagraph;
    _resultData['leadParagraph'] = l$leadParagraph;
    final l$content = content;
    _resultData['content'] = l$content;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$address = address;
    _resultData['address'] = l$address;
    final l$isPrivate = isPrivate;
    _resultData['isPrivate'] = l$isPrivate;
    final l$pictures = pictures;
    _resultData['pictures'] = l$pictures?.toJson();
    final l$openingHours = openingHours;
    _resultData['openingHours'] =
        l$openingHours.map((e) => e.toJson()).toList();
    final l$prices = prices;
    _resultData['prices'] = l$prices.map((e) => e.toJson()).toList();
    final l$url = url;
    _resultData['url'] = l$url;
    final l$location = location;
    _resultData['location'] = l$location.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$leadParagraph = leadParagraph;
    final l$content = content;
    final l$email = email;
    final l$phone = phone;
    final l$address = address;
    final l$isPrivate = isPrivate;
    final l$pictures = pictures;
    final l$openingHours = openingHours;
    final l$prices = prices;
    final l$url = url;
    final l$location = location;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$leadParagraph,
      l$content,
      l$email,
      l$phone,
      l$address,
      l$isPrivate,
      l$pictures,
      Object.hashAll(l$openingHours.map((v) => v)),
      Object.hashAll(l$prices.map((v) => v)),
      l$url,
      l$location,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$SaunaFullDetail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$leadParagraph = leadParagraph;
    final lOther$leadParagraph = other.leadParagraph;
    if (l$leadParagraph != lOther$leadParagraph) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$isPrivate = isPrivate;
    final lOther$isPrivate = other.isPrivate;
    if (l$isPrivate != lOther$isPrivate) {
      return false;
    }
    final l$pictures = pictures;
    final lOther$pictures = other.pictures;
    if (l$pictures != lOther$pictures) {
      return false;
    }
    final l$openingHours = openingHours;
    final lOther$openingHours = other.openingHours;
    if (l$openingHours.length != lOther$openingHours.length) {
      return false;
    }
    for (int i = 0; i < l$openingHours.length; i++) {
      final l$openingHours$entry = l$openingHours[i];
      final lOther$openingHours$entry = lOther$openingHours[i];
      if (l$openingHours$entry != lOther$openingHours$entry) {
        return false;
      }
    }
    final l$prices = prices;
    final lOther$prices = other.prices;
    if (l$prices.length != lOther$prices.length) {
      return false;
    }
    for (int i = 0; i < l$prices.length; i++) {
      final l$prices$entry = l$prices[i];
      final lOther$prices$entry = lOther$prices[i];
      if (l$prices$entry != lOther$prices$entry) {
        return false;
      }
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
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

extension UtilityExtension$Fragment$SaunaFullDetail
    on Fragment$SaunaFullDetail {
  CopyWith$Fragment$SaunaFullDetail<Fragment$SaunaFullDetail> get copyWith =>
      CopyWith$Fragment$SaunaFullDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$SaunaFullDetail<TRes> {
  factory CopyWith$Fragment$SaunaFullDetail(
    Fragment$SaunaFullDetail instance,
    TRes Function(Fragment$SaunaFullDetail) then,
  ) = _CopyWithImpl$Fragment$SaunaFullDetail;

  factory CopyWith$Fragment$SaunaFullDetail.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SaunaFullDetail;

  TRes call({
    String? id,
    String? name,
    String? leadParagraph,
    String? content,
    String? email,
    String? phone,
    String? address,
    bool? isPrivate,
    Fragment$SaunaFullDetail$pictures? pictures,
    List<Fragment$OpeningHour>? openingHours,
    List<Fragment$Price>? prices,
    String? url,
    Fragment$SaunaFullDetail$location? location,
    String? $__typename,
  });
  CopyWith$Fragment$SaunaFullDetail$pictures<TRes> get pictures;
  TRes openingHours(
      Iterable<Fragment$OpeningHour> Function(
              Iterable<CopyWith$Fragment$OpeningHour<Fragment$OpeningHour>>)
          _fn);
  TRes prices(
      Iterable<Fragment$Price> Function(
              Iterable<CopyWith$Fragment$Price<Fragment$Price>>)
          _fn);
  CopyWith$Fragment$SaunaFullDetail$location<TRes> get location;
}

class _CopyWithImpl$Fragment$SaunaFullDetail<TRes>
    implements CopyWith$Fragment$SaunaFullDetail<TRes> {
  _CopyWithImpl$Fragment$SaunaFullDetail(
    this._instance,
    this._then,
  );

  final Fragment$SaunaFullDetail _instance;

  final TRes Function(Fragment$SaunaFullDetail) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? leadParagraph = _undefined,
    Object? content = _undefined,
    Object? email = _undefined,
    Object? phone = _undefined,
    Object? address = _undefined,
    Object? isPrivate = _undefined,
    Object? pictures = _undefined,
    Object? openingHours = _undefined,
    Object? prices = _undefined,
    Object? url = _undefined,
    Object? location = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SaunaFullDetail(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        leadParagraph: leadParagraph == _undefined
            ? _instance.leadParagraph
            : (leadParagraph as String?),
        content:
            content == _undefined ? _instance.content : (content as String?),
        email: email == _undefined ? _instance.email : (email as String?),
        phone: phone == _undefined ? _instance.phone : (phone as String?),
        address:
            address == _undefined ? _instance.address : (address as String?),
        isPrivate: isPrivate == _undefined || isPrivate == null
            ? _instance.isPrivate
            : (isPrivate as bool),
        pictures: pictures == _undefined
            ? _instance.pictures
            : (pictures as Fragment$SaunaFullDetail$pictures?),
        openingHours: openingHours == _undefined || openingHours == null
            ? _instance.openingHours
            : (openingHours as List<Fragment$OpeningHour>),
        prices: prices == _undefined || prices == null
            ? _instance.prices
            : (prices as List<Fragment$Price>),
        url: url == _undefined ? _instance.url : (url as String?),
        location: location == _undefined || location == null
            ? _instance.location
            : (location as Fragment$SaunaFullDetail$location),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$SaunaFullDetail$pictures<TRes> get pictures {
    final local$pictures = _instance.pictures;
    return local$pictures == null
        ? CopyWith$Fragment$SaunaFullDetail$pictures.stub(_then(_instance))
        : CopyWith$Fragment$SaunaFullDetail$pictures(
            local$pictures, (e) => call(pictures: e));
  }

  TRes openingHours(
          Iterable<Fragment$OpeningHour> Function(
                  Iterable<CopyWith$Fragment$OpeningHour<Fragment$OpeningHour>>)
              _fn) =>
      call(
          openingHours: _fn(
              _instance.openingHours.map((e) => CopyWith$Fragment$OpeningHour(
                    e,
                    (i) => i,
                  ))).toList());
  TRes prices(
          Iterable<Fragment$Price> Function(
                  Iterable<CopyWith$Fragment$Price<Fragment$Price>>)
              _fn) =>
      call(
          prices: _fn(_instance.prices.map((e) => CopyWith$Fragment$Price(
                e,
                (i) => i,
              ))).toList());
  CopyWith$Fragment$SaunaFullDetail$location<TRes> get location {
    final local$location = _instance.location;
    return CopyWith$Fragment$SaunaFullDetail$location(
        local$location, (e) => call(location: e));
  }
}

class _CopyWithStubImpl$Fragment$SaunaFullDetail<TRes>
    implements CopyWith$Fragment$SaunaFullDetail<TRes> {
  _CopyWithStubImpl$Fragment$SaunaFullDetail(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? leadParagraph,
    String? content,
    String? email,
    String? phone,
    String? address,
    bool? isPrivate,
    Fragment$SaunaFullDetail$pictures? pictures,
    List<Fragment$OpeningHour>? openingHours,
    List<Fragment$Price>? prices,
    String? url,
    Fragment$SaunaFullDetail$location? location,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$SaunaFullDetail$pictures<TRes> get pictures =>
      CopyWith$Fragment$SaunaFullDetail$pictures.stub(_res);
  openingHours(_fn) => _res;
  prices(_fn) => _res;
  CopyWith$Fragment$SaunaFullDetail$location<TRes> get location =>
      CopyWith$Fragment$SaunaFullDetail$location.stub(_res);
}

const fragmentDefinitionSaunaFullDetail = FragmentDefinitionNode(
  name: NameNode(value: 'SaunaFullDetail'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Sauna'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'leadParagraph'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'content'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'email'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'phone'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'address'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isPrivate'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'pictures'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'nodes'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'Picture'),
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
      name: NameNode(value: 'openingHours'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'OpeningHour'),
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
      name: NameNode(value: 'prices'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Price'),
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
      name: NameNode(value: 'url'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'location'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'coordinates'),
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
);
const documentNodeFragmentSaunaFullDetail = DocumentNode(definitions: [
  fragmentDefinitionSaunaFullDetail,
  fragmentDefinitionPicture,
  fragmentDefinitionOpeningHour,
  fragmentDefinitionPrice,
  fragmentDefinitionCurrency,
]);

extension ClientExtension$Fragment$SaunaFullDetail on graphql.GraphQLClient {
  void writeFragment$SaunaFullDetail({
    required Fragment$SaunaFullDetail data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'SaunaFullDetail',
            document: documentNodeFragmentSaunaFullDetail,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$SaunaFullDetail? readFragment$SaunaFullDetail({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'SaunaFullDetail',
          document: documentNodeFragmentSaunaFullDetail,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$SaunaFullDetail.fromJson(result);
  }
}

class Fragment$SaunaFullDetail$pictures {
  Fragment$SaunaFullDetail$pictures({
    this.nodes,
    required this.$__typename,
  });

  factory Fragment$SaunaFullDetail$pictures.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Fragment$SaunaFullDetail$pictures(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$Picture.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Picture?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
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
    if (!(other is Fragment$SaunaFullDetail$pictures) ||
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

extension UtilityExtension$Fragment$SaunaFullDetail$pictures
    on Fragment$SaunaFullDetail$pictures {
  CopyWith$Fragment$SaunaFullDetail$pictures<Fragment$SaunaFullDetail$pictures>
      get copyWith => CopyWith$Fragment$SaunaFullDetail$pictures(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SaunaFullDetail$pictures<TRes> {
  factory CopyWith$Fragment$SaunaFullDetail$pictures(
    Fragment$SaunaFullDetail$pictures instance,
    TRes Function(Fragment$SaunaFullDetail$pictures) then,
  ) = _CopyWithImpl$Fragment$SaunaFullDetail$pictures;

  factory CopyWith$Fragment$SaunaFullDetail$pictures.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SaunaFullDetail$pictures;

  TRes call({
    List<Fragment$Picture?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Fragment$Picture?>? Function(
              Iterable<CopyWith$Fragment$Picture<Fragment$Picture>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$SaunaFullDetail$pictures<TRes>
    implements CopyWith$Fragment$SaunaFullDetail$pictures<TRes> {
  _CopyWithImpl$Fragment$SaunaFullDetail$pictures(
    this._instance,
    this._then,
  );

  final Fragment$SaunaFullDetail$pictures _instance;

  final TRes Function(Fragment$SaunaFullDetail$pictures) _then;

  static const _undefined = {};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SaunaFullDetail$pictures(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$Picture?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes nodes(
          Iterable<Fragment$Picture?>? Function(
                  Iterable<CopyWith$Fragment$Picture<Fragment$Picture>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Fragment$Picture(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$SaunaFullDetail$pictures<TRes>
    implements CopyWith$Fragment$SaunaFullDetail$pictures<TRes> {
  _CopyWithStubImpl$Fragment$SaunaFullDetail$pictures(this._res);

  TRes _res;

  call({
    List<Fragment$Picture?>? nodes,
    String? $__typename,
  }) =>
      _res;
  nodes(_fn) => _res;
}

class Fragment$SaunaFullDetail$location {
  Fragment$SaunaFullDetail$location({
    this.coordinates,
    required this.$__typename,
  });

  factory Fragment$SaunaFullDetail$location.fromJson(
      Map<String, dynamic> json) {
    final l$coordinates = json['coordinates'];
    final l$$__typename = json['__typename'];
    return Fragment$SaunaFullDetail$location(
      coordinates:
          l$coordinates == null ? null : customPositionFromJson(l$coordinates),
      $__typename: (l$$__typename as String),
    );
  }

  final Position? coordinates;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$coordinates = coordinates;
    _resultData['coordinates'] =
        l$coordinates == null ? null : customPositionToJson(l$coordinates);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$coordinates = coordinates;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$coordinates,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$SaunaFullDetail$location) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$coordinates = coordinates;
    final lOther$coordinates = other.coordinates;
    if (l$coordinates != lOther$coordinates) {
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

extension UtilityExtension$Fragment$SaunaFullDetail$location
    on Fragment$SaunaFullDetail$location {
  CopyWith$Fragment$SaunaFullDetail$location<Fragment$SaunaFullDetail$location>
      get copyWith => CopyWith$Fragment$SaunaFullDetail$location(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SaunaFullDetail$location<TRes> {
  factory CopyWith$Fragment$SaunaFullDetail$location(
    Fragment$SaunaFullDetail$location instance,
    TRes Function(Fragment$SaunaFullDetail$location) then,
  ) = _CopyWithImpl$Fragment$SaunaFullDetail$location;

  factory CopyWith$Fragment$SaunaFullDetail$location.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SaunaFullDetail$location;

  TRes call({
    Position? coordinates,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$SaunaFullDetail$location<TRes>
    implements CopyWith$Fragment$SaunaFullDetail$location<TRes> {
  _CopyWithImpl$Fragment$SaunaFullDetail$location(
    this._instance,
    this._then,
  );

  final Fragment$SaunaFullDetail$location _instance;

  final TRes Function(Fragment$SaunaFullDetail$location) _then;

  static const _undefined = {};

  TRes call({
    Object? coordinates = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SaunaFullDetail$location(
        coordinates: coordinates == _undefined
            ? _instance.coordinates
            : (coordinates as Position?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$SaunaFullDetail$location<TRes>
    implements CopyWith$Fragment$SaunaFullDetail$location<TRes> {
  _CopyWithStubImpl$Fragment$SaunaFullDetail$location(this._res);

  TRes _res;

  call({
    Position? coordinates,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$Price {
  Fragment$Price({
    required this.id,
    required this.label,
    required this.value,
    required this.currency,
    required this.$__typename,
  });

  factory Fragment$Price.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$label = json['label'];
    final l$value = json['value'];
    final l$currency = json['currency'];
    final l$$__typename = json['__typename'];
    return Fragment$Price(
      id: (l$id as String),
      label: (l$label as String),
      value: (l$value as num).toDouble(),
      currency:
          Fragment$Currency.fromJson((l$currency as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String label;

  final double value;

  final Fragment$Currency currency;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$label = label;
    _resultData['label'] = l$label;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$currency = currency;
    _resultData['currency'] = l$currency.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$label = label;
    final l$value = value;
    final l$currency = currency;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$label,
      l$value,
      l$currency,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Price) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$label = label;
    final lOther$label = other.label;
    if (l$label != lOther$label) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
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

extension UtilityExtension$Fragment$Price on Fragment$Price {
  CopyWith$Fragment$Price<Fragment$Price> get copyWith =>
      CopyWith$Fragment$Price(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Price<TRes> {
  factory CopyWith$Fragment$Price(
    Fragment$Price instance,
    TRes Function(Fragment$Price) then,
  ) = _CopyWithImpl$Fragment$Price;

  factory CopyWith$Fragment$Price.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Price;

  TRes call({
    String? id,
    String? label,
    double? value,
    Fragment$Currency? currency,
    String? $__typename,
  });
  CopyWith$Fragment$Currency<TRes> get currency;
}

class _CopyWithImpl$Fragment$Price<TRes>
    implements CopyWith$Fragment$Price<TRes> {
  _CopyWithImpl$Fragment$Price(
    this._instance,
    this._then,
  );

  final Fragment$Price _instance;

  final TRes Function(Fragment$Price) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? label = _undefined,
    Object? value = _undefined,
    Object? currency = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Price(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        label: label == _undefined || label == null
            ? _instance.label
            : (label as String),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as Fragment$Currency),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Currency<TRes> get currency {
    final local$currency = _instance.currency;
    return CopyWith$Fragment$Currency(local$currency, (e) => call(currency: e));
  }
}

class _CopyWithStubImpl$Fragment$Price<TRes>
    implements CopyWith$Fragment$Price<TRes> {
  _CopyWithStubImpl$Fragment$Price(this._res);

  TRes _res;

  call({
    String? id,
    String? label,
    double? value,
    Fragment$Currency? currency,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Currency<TRes> get currency =>
      CopyWith$Fragment$Currency.stub(_res);
}

const fragmentDefinitionPrice = FragmentDefinitionNode(
  name: NameNode(value: 'Price'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Price'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'label'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'value'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'currency'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Currency'),
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
);
const documentNodeFragmentPrice = DocumentNode(definitions: [
  fragmentDefinitionPrice,
  fragmentDefinitionCurrency,
]);

extension ClientExtension$Fragment$Price on graphql.GraphQLClient {
  void writeFragment$Price({
    required Fragment$Price data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Price',
            document: documentNodeFragmentPrice,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Price? readFragment$Price({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Price',
          document: documentNodeFragmentPrice,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Price.fromJson(result);
  }
}

class Fragment$Currency {
  Fragment$Currency({
    required this.id,
    required this.code,
    required this.dollarRatio,
    required this.$__typename,
  });

  factory Fragment$Currency.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$dollarRatio = json['dollarRatio'];
    final l$$__typename = json['__typename'];
    return Fragment$Currency(
      id: (l$id as String),
      code: (l$code as String),
      dollarRatio: (l$dollarRatio as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final double dollarRatio;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$dollarRatio = dollarRatio;
    _resultData['dollarRatio'] = l$dollarRatio;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$dollarRatio = dollarRatio;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$dollarRatio,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Currency) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$dollarRatio = dollarRatio;
    final lOther$dollarRatio = other.dollarRatio;
    if (l$dollarRatio != lOther$dollarRatio) {
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

extension UtilityExtension$Fragment$Currency on Fragment$Currency {
  CopyWith$Fragment$Currency<Fragment$Currency> get copyWith =>
      CopyWith$Fragment$Currency(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Currency<TRes> {
  factory CopyWith$Fragment$Currency(
    Fragment$Currency instance,
    TRes Function(Fragment$Currency) then,
  ) = _CopyWithImpl$Fragment$Currency;

  factory CopyWith$Fragment$Currency.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Currency;

  TRes call({
    String? id,
    String? code,
    double? dollarRatio,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Currency<TRes>
    implements CopyWith$Fragment$Currency<TRes> {
  _CopyWithImpl$Fragment$Currency(
    this._instance,
    this._then,
  );

  final Fragment$Currency _instance;

  final TRes Function(Fragment$Currency) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? dollarRatio = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Currency(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        dollarRatio: dollarRatio == _undefined || dollarRatio == null
            ? _instance.dollarRatio
            : (dollarRatio as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Currency<TRes>
    implements CopyWith$Fragment$Currency<TRes> {
  _CopyWithStubImpl$Fragment$Currency(this._res);

  TRes _res;

  call({
    String? id,
    String? code,
    double? dollarRatio,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionCurrency = FragmentDefinitionNode(
  name: NameNode(value: 'Currency'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Currency'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'code'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'dollarRatio'),
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
);
const documentNodeFragmentCurrency = DocumentNode(definitions: [
  fragmentDefinitionCurrency,
]);

extension ClientExtension$Fragment$Currency on graphql.GraphQLClient {
  void writeFragment$Currency({
    required Fragment$Currency data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Currency',
            document: documentNodeFragmentCurrency,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Currency? readFragment$Currency({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Currency',
          document: documentNodeFragmentCurrency,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Currency.fromJson(result);
  }
}

class Fragment$OpeningHour {
  Fragment$OpeningHour({
    required this.id,
    required this.dayOfWeek,
    required this.open,
    required this.close,
    required this.$__typename,
  });

  factory Fragment$OpeningHour.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$dayOfWeek = json['dayOfWeek'];
    final l$open = json['open'];
    final l$close = json['close'];
    final l$$__typename = json['__typename'];
    return Fragment$OpeningHour(
      id: (l$id as String),
      dayOfWeek: fromJson$Enum$DayOfWeek((l$dayOfWeek as String)),
      open: (l$open as String),
      close: (l$close as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$DayOfWeek dayOfWeek;

  final String open;

  final String close;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$dayOfWeek = dayOfWeek;
    _resultData['dayOfWeek'] = toJson$Enum$DayOfWeek(l$dayOfWeek);
    final l$open = open;
    _resultData['open'] = l$open;
    final l$close = close;
    _resultData['close'] = l$close;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$dayOfWeek = dayOfWeek;
    final l$open = open;
    final l$close = close;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$dayOfWeek,
      l$open,
      l$close,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$OpeningHour) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$dayOfWeek = dayOfWeek;
    final lOther$dayOfWeek = other.dayOfWeek;
    if (l$dayOfWeek != lOther$dayOfWeek) {
      return false;
    }
    final l$open = open;
    final lOther$open = other.open;
    if (l$open != lOther$open) {
      return false;
    }
    final l$close = close;
    final lOther$close = other.close;
    if (l$close != lOther$close) {
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

extension UtilityExtension$Fragment$OpeningHour on Fragment$OpeningHour {
  CopyWith$Fragment$OpeningHour<Fragment$OpeningHour> get copyWith =>
      CopyWith$Fragment$OpeningHour(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$OpeningHour<TRes> {
  factory CopyWith$Fragment$OpeningHour(
    Fragment$OpeningHour instance,
    TRes Function(Fragment$OpeningHour) then,
  ) = _CopyWithImpl$Fragment$OpeningHour;

  factory CopyWith$Fragment$OpeningHour.stub(TRes res) =
      _CopyWithStubImpl$Fragment$OpeningHour;

  TRes call({
    String? id,
    Enum$DayOfWeek? dayOfWeek,
    String? open,
    String? close,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$OpeningHour<TRes>
    implements CopyWith$Fragment$OpeningHour<TRes> {
  _CopyWithImpl$Fragment$OpeningHour(
    this._instance,
    this._then,
  );

  final Fragment$OpeningHour _instance;

  final TRes Function(Fragment$OpeningHour) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? dayOfWeek = _undefined,
    Object? open = _undefined,
    Object? close = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$OpeningHour(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        dayOfWeek: dayOfWeek == _undefined || dayOfWeek == null
            ? _instance.dayOfWeek
            : (dayOfWeek as Enum$DayOfWeek),
        open: open == _undefined || open == null
            ? _instance.open
            : (open as String),
        close: close == _undefined || close == null
            ? _instance.close
            : (close as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$OpeningHour<TRes>
    implements CopyWith$Fragment$OpeningHour<TRes> {
  _CopyWithStubImpl$Fragment$OpeningHour(this._res);

  TRes _res;

  call({
    String? id,
    Enum$DayOfWeek? dayOfWeek,
    String? open,
    String? close,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionOpeningHour = FragmentDefinitionNode(
  name: NameNode(value: 'OpeningHour'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'OpeningHour'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'dayOfWeek'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'open'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'close'),
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
);
const documentNodeFragmentOpeningHour = DocumentNode(definitions: [
  fragmentDefinitionOpeningHour,
]);

extension ClientExtension$Fragment$OpeningHour on graphql.GraphQLClient {
  void writeFragment$OpeningHour({
    required Fragment$OpeningHour data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'OpeningHour',
            document: documentNodeFragmentOpeningHour,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$OpeningHour? readFragment$OpeningHour({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'OpeningHour',
          document: documentNodeFragmentOpeningHour,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$OpeningHour.fromJson(result);
  }
}

class Fragment$Picture {
  Fragment$Picture({
    required this.id,
    required this.thumbnailUrl,
    required this.fullSizeUrl,
    required this.$__typename,
  });

  factory Fragment$Picture.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$thumbnailUrl = json['thumbnailUrl'];
    final l$fullSizeUrl = json['fullSizeUrl'];
    final l$$__typename = json['__typename'];
    return Fragment$Picture(
      id: (l$id as String),
      thumbnailUrl: (l$thumbnailUrl as String),
      fullSizeUrl: (l$fullSizeUrl as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String thumbnailUrl;

  final String fullSizeUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$thumbnailUrl = thumbnailUrl;
    _resultData['thumbnailUrl'] = l$thumbnailUrl;
    final l$fullSizeUrl = fullSizeUrl;
    _resultData['fullSizeUrl'] = l$fullSizeUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$thumbnailUrl = thumbnailUrl;
    final l$fullSizeUrl = fullSizeUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$thumbnailUrl,
      l$fullSizeUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Picture) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$thumbnailUrl = thumbnailUrl;
    final lOther$thumbnailUrl = other.thumbnailUrl;
    if (l$thumbnailUrl != lOther$thumbnailUrl) {
      return false;
    }
    final l$fullSizeUrl = fullSizeUrl;
    final lOther$fullSizeUrl = other.fullSizeUrl;
    if (l$fullSizeUrl != lOther$fullSizeUrl) {
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

extension UtilityExtension$Fragment$Picture on Fragment$Picture {
  CopyWith$Fragment$Picture<Fragment$Picture> get copyWith =>
      CopyWith$Fragment$Picture(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Picture<TRes> {
  factory CopyWith$Fragment$Picture(
    Fragment$Picture instance,
    TRes Function(Fragment$Picture) then,
  ) = _CopyWithImpl$Fragment$Picture;

  factory CopyWith$Fragment$Picture.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Picture;

  TRes call({
    String? id,
    String? thumbnailUrl,
    String? fullSizeUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Picture<TRes>
    implements CopyWith$Fragment$Picture<TRes> {
  _CopyWithImpl$Fragment$Picture(
    this._instance,
    this._then,
  );

  final Fragment$Picture _instance;

  final TRes Function(Fragment$Picture) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? thumbnailUrl = _undefined,
    Object? fullSizeUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Picture(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        thumbnailUrl: thumbnailUrl == _undefined || thumbnailUrl == null
            ? _instance.thumbnailUrl
            : (thumbnailUrl as String),
        fullSizeUrl: fullSizeUrl == _undefined || fullSizeUrl == null
            ? _instance.fullSizeUrl
            : (fullSizeUrl as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Picture<TRes>
    implements CopyWith$Fragment$Picture<TRes> {
  _CopyWithStubImpl$Fragment$Picture(this._res);

  TRes _res;

  call({
    String? id,
    String? thumbnailUrl,
    String? fullSizeUrl,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionPicture = FragmentDefinitionNode(
  name: NameNode(value: 'Picture'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Picture'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'thumbnailUrl'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'fullSizeUrl'),
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
);
const documentNodeFragmentPicture = DocumentNode(definitions: [
  fragmentDefinitionPicture,
]);

extension ClientExtension$Fragment$Picture on graphql.GraphQLClient {
  void writeFragment$Picture({
    required Fragment$Picture data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Picture',
            document: documentNodeFragmentPicture,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Picture? readFragment$Picture({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Picture',
          document: documentNodeFragmentPicture,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Picture.fromJson(result);
  }
}

class Fragment$PictureThumbnail {
  Fragment$PictureThumbnail({
    required this.id,
    required this.thumbnailUrl,
    required this.$__typename,
  });

  factory Fragment$PictureThumbnail.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$thumbnailUrl = json['thumbnailUrl'];
    final l$$__typename = json['__typename'];
    return Fragment$PictureThumbnail(
      id: (l$id as String),
      thumbnailUrl: (l$thumbnailUrl as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String thumbnailUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$thumbnailUrl = thumbnailUrl;
    _resultData['thumbnailUrl'] = l$thumbnailUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$thumbnailUrl = thumbnailUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$thumbnailUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PictureThumbnail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$thumbnailUrl = thumbnailUrl;
    final lOther$thumbnailUrl = other.thumbnailUrl;
    if (l$thumbnailUrl != lOther$thumbnailUrl) {
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

extension UtilityExtension$Fragment$PictureThumbnail
    on Fragment$PictureThumbnail {
  CopyWith$Fragment$PictureThumbnail<Fragment$PictureThumbnail> get copyWith =>
      CopyWith$Fragment$PictureThumbnail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PictureThumbnail<TRes> {
  factory CopyWith$Fragment$PictureThumbnail(
    Fragment$PictureThumbnail instance,
    TRes Function(Fragment$PictureThumbnail) then,
  ) = _CopyWithImpl$Fragment$PictureThumbnail;

  factory CopyWith$Fragment$PictureThumbnail.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PictureThumbnail;

  TRes call({
    String? id,
    String? thumbnailUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PictureThumbnail<TRes>
    implements CopyWith$Fragment$PictureThumbnail<TRes> {
  _CopyWithImpl$Fragment$PictureThumbnail(
    this._instance,
    this._then,
  );

  final Fragment$PictureThumbnail _instance;

  final TRes Function(Fragment$PictureThumbnail) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? thumbnailUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PictureThumbnail(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        thumbnailUrl: thumbnailUrl == _undefined || thumbnailUrl == null
            ? _instance.thumbnailUrl
            : (thumbnailUrl as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PictureThumbnail<TRes>
    implements CopyWith$Fragment$PictureThumbnail<TRes> {
  _CopyWithStubImpl$Fragment$PictureThumbnail(this._res);

  TRes _res;

  call({
    String? id,
    String? thumbnailUrl,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionPictureThumbnail = FragmentDefinitionNode(
  name: NameNode(value: 'PictureThumbnail'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Picture'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'thumbnailUrl'),
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
);
const documentNodeFragmentPictureThumbnail = DocumentNode(definitions: [
  fragmentDefinitionPictureThumbnail,
]);

extension ClientExtension$Fragment$PictureThumbnail on graphql.GraphQLClient {
  void writeFragment$PictureThumbnail({
    required Fragment$PictureThumbnail data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PictureThumbnail',
            document: documentNodeFragmentPictureThumbnail,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$PictureThumbnail? readFragment$PictureThumbnail({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PictureThumbnail',
          document: documentNodeFragmentPictureThumbnail,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$PictureThumbnail.fromJson(result);
  }
}

class Fragment$AttributeDetail {
  Fragment$AttributeDetail({
    required this.id,
    required this.name,
    this.description,
    required this.icon,
    required this.$__typename,
  });

  factory Fragment$AttributeDetail.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$icon = json['icon'];
    final l$$__typename = json['__typename'];
    return Fragment$AttributeDetail(
      id: (l$id as int),
      name: (l$name as String),
      description: (l$description as String?),
      icon: (l$icon as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String? description;

  final String icon;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$icon = icon;
    _resultData['icon'] = l$icon;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$icon = icon;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$icon,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$AttributeDetail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$icon = icon;
    final lOther$icon = other.icon;
    if (l$icon != lOther$icon) {
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

extension UtilityExtension$Fragment$AttributeDetail
    on Fragment$AttributeDetail {
  CopyWith$Fragment$AttributeDetail<Fragment$AttributeDetail> get copyWith =>
      CopyWith$Fragment$AttributeDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$AttributeDetail<TRes> {
  factory CopyWith$Fragment$AttributeDetail(
    Fragment$AttributeDetail instance,
    TRes Function(Fragment$AttributeDetail) then,
  ) = _CopyWithImpl$Fragment$AttributeDetail;

  factory CopyWith$Fragment$AttributeDetail.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AttributeDetail;

  TRes call({
    int? id,
    String? name,
    String? description,
    String? icon,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AttributeDetail<TRes>
    implements CopyWith$Fragment$AttributeDetail<TRes> {
  _CopyWithImpl$Fragment$AttributeDetail(
    this._instance,
    this._then,
  );

  final Fragment$AttributeDetail _instance;

  final TRes Function(Fragment$AttributeDetail) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? icon = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$AttributeDetail(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        icon: icon == _undefined || icon == null
            ? _instance.icon
            : (icon as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$AttributeDetail<TRes>
    implements CopyWith$Fragment$AttributeDetail<TRes> {
  _CopyWithStubImpl$Fragment$AttributeDetail(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? description,
    String? icon,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionAttributeDetail = FragmentDefinitionNode(
  name: NameNode(value: 'AttributeDetail'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Attribute'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'description'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'icon'),
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
);
const documentNodeFragmentAttributeDetail = DocumentNode(definitions: [
  fragmentDefinitionAttributeDetail,
]);

extension ClientExtension$Fragment$AttributeDetail on graphql.GraphQLClient {
  void writeFragment$AttributeDetail({
    required Fragment$AttributeDetail data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'AttributeDetail',
            document: documentNodeFragmentAttributeDetail,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$AttributeDetail? readFragment$AttributeDetail({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'AttributeDetail',
          document: documentNodeFragmentAttributeDetail,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$AttributeDetail.fromJson(result);
  }
}

class Fragment$VisitHistoryListItem {
  Fragment$VisitHistoryListItem({
    required this.id,
    required this.sauna,
    required this.duration,
    required this.visitedAt,
    required this.$__typename,
  });

  factory Fragment$VisitHistoryListItem.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$sauna = json['sauna'];
    final l$duration = json['duration'];
    final l$visitedAt = json['visitedAt'];
    final l$$__typename = json['__typename'];
    return Fragment$VisitHistoryListItem(
      id: (l$id as String),
      sauna: Fragment$SaunaAutocompleteFragment.fromJson(
          (l$sauna as Map<String, dynamic>)),
      duration: (l$duration as int),
      visitedAt: DateTime.parse((l$visitedAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Fragment$SaunaAutocompleteFragment sauna;

  final int duration;

  final DateTime visitedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$sauna = sauna;
    _resultData['sauna'] = l$sauna.toJson();
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$visitedAt = visitedAt;
    _resultData['visitedAt'] = l$visitedAt.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$sauna = sauna;
    final l$duration = duration;
    final l$visitedAt = visitedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$sauna,
      l$duration,
      l$visitedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$VisitHistoryListItem) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$sauna = sauna;
    final lOther$sauna = other.sauna;
    if (l$sauna != lOther$sauna) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$visitedAt = visitedAt;
    final lOther$visitedAt = other.visitedAt;
    if (l$visitedAt != lOther$visitedAt) {
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

extension UtilityExtension$Fragment$VisitHistoryListItem
    on Fragment$VisitHistoryListItem {
  CopyWith$Fragment$VisitHistoryListItem<Fragment$VisitHistoryListItem>
      get copyWith => CopyWith$Fragment$VisitHistoryListItem(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$VisitHistoryListItem<TRes> {
  factory CopyWith$Fragment$VisitHistoryListItem(
    Fragment$VisitHistoryListItem instance,
    TRes Function(Fragment$VisitHistoryListItem) then,
  ) = _CopyWithImpl$Fragment$VisitHistoryListItem;

  factory CopyWith$Fragment$VisitHistoryListItem.stub(TRes res) =
      _CopyWithStubImpl$Fragment$VisitHistoryListItem;

  TRes call({
    String? id,
    Fragment$SaunaAutocompleteFragment? sauna,
    int? duration,
    DateTime? visitedAt,
    String? $__typename,
  });
  CopyWith$Fragment$SaunaAutocompleteFragment<TRes> get sauna;
}

class _CopyWithImpl$Fragment$VisitHistoryListItem<TRes>
    implements CopyWith$Fragment$VisitHistoryListItem<TRes> {
  _CopyWithImpl$Fragment$VisitHistoryListItem(
    this._instance,
    this._then,
  );

  final Fragment$VisitHistoryListItem _instance;

  final TRes Function(Fragment$VisitHistoryListItem) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? sauna = _undefined,
    Object? duration = _undefined,
    Object? visitedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$VisitHistoryListItem(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        sauna: sauna == _undefined || sauna == null
            ? _instance.sauna
            : (sauna as Fragment$SaunaAutocompleteFragment),
        duration: duration == _undefined || duration == null
            ? _instance.duration
            : (duration as int),
        visitedAt: visitedAt == _undefined || visitedAt == null
            ? _instance.visitedAt
            : (visitedAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$SaunaAutocompleteFragment<TRes> get sauna {
    final local$sauna = _instance.sauna;
    return CopyWith$Fragment$SaunaAutocompleteFragment(
        local$sauna, (e) => call(sauna: e));
  }
}

class _CopyWithStubImpl$Fragment$VisitHistoryListItem<TRes>
    implements CopyWith$Fragment$VisitHistoryListItem<TRes> {
  _CopyWithStubImpl$Fragment$VisitHistoryListItem(this._res);

  TRes _res;

  call({
    String? id,
    Fragment$SaunaAutocompleteFragment? sauna,
    int? duration,
    DateTime? visitedAt,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$SaunaAutocompleteFragment<TRes> get sauna =>
      CopyWith$Fragment$SaunaAutocompleteFragment.stub(_res);
}

const fragmentDefinitionVisitHistoryListItem = FragmentDefinitionNode(
  name: NameNode(value: 'VisitHistoryListItem'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'VisitHistory'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'sauna'),
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
      name: NameNode(value: 'duration'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'visitedAt'),
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
);
const documentNodeFragmentVisitHistoryListItem = DocumentNode(definitions: [
  fragmentDefinitionVisitHistoryListItem,
  fragmentDefinitionSaunaAutocompleteFragment,
]);

extension ClientExtension$Fragment$VisitHistoryListItem
    on graphql.GraphQLClient {
  void writeFragment$VisitHistoryListItem({
    required Fragment$VisitHistoryListItem data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'VisitHistoryListItem',
            document: documentNodeFragmentVisitHistoryListItem,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$VisitHistoryListItem? readFragment$VisitHistoryListItem({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'VisitHistoryListItem',
          document: documentNodeFragmentVisitHistoryListItem,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$VisitHistoryListItem.fromJson(result);
  }
}

class Fragment$VisitHistoryDetail {
  Fragment$VisitHistoryDetail({
    required this.id,
    required this.sauna,
    required this.visitedAt,
    required this.duration,
    required this.cycles,
    this.rating,
    this.review,
    this.note,
    required this.$__typename,
  });

  factory Fragment$VisitHistoryDetail.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$sauna = json['sauna'];
    final l$visitedAt = json['visitedAt'];
    final l$duration = json['duration'];
    final l$cycles = json['cycles'];
    final l$rating = json['rating'];
    final l$review = json['review'];
    final l$note = json['note'];
    final l$$__typename = json['__typename'];
    return Fragment$VisitHistoryDetail(
      id: (l$id as String),
      sauna: Fragment$SaunaAutocompleteFragment.fromJson(
          (l$sauna as Map<String, dynamic>)),
      visitedAt: DateTime.parse((l$visitedAt as String)),
      duration: (l$duration as int),
      cycles: (l$cycles as int),
      rating: (l$rating as int?),
      review: (l$review as String?),
      note: (l$note as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Fragment$SaunaAutocompleteFragment sauna;

  final DateTime visitedAt;

  final int duration;

  final int cycles;

  final int? rating;

  final String? review;

  final String? note;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$sauna = sauna;
    _resultData['sauna'] = l$sauna.toJson();
    final l$visitedAt = visitedAt;
    _resultData['visitedAt'] = l$visitedAt.toIso8601String();
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$cycles = cycles;
    _resultData['cycles'] = l$cycles;
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$review = review;
    _resultData['review'] = l$review;
    final l$note = note;
    _resultData['note'] = l$note;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$sauna = sauna;
    final l$visitedAt = visitedAt;
    final l$duration = duration;
    final l$cycles = cycles;
    final l$rating = rating;
    final l$review = review;
    final l$note = note;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$sauna,
      l$visitedAt,
      l$duration,
      l$cycles,
      l$rating,
      l$review,
      l$note,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$VisitHistoryDetail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$sauna = sauna;
    final lOther$sauna = other.sauna;
    if (l$sauna != lOther$sauna) {
      return false;
    }
    final l$visitedAt = visitedAt;
    final lOther$visitedAt = other.visitedAt;
    if (l$visitedAt != lOther$visitedAt) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$cycles = cycles;
    final lOther$cycles = other.cycles;
    if (l$cycles != lOther$cycles) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$review = review;
    final lOther$review = other.review;
    if (l$review != lOther$review) {
      return false;
    }
    final l$note = note;
    final lOther$note = other.note;
    if (l$note != lOther$note) {
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

extension UtilityExtension$Fragment$VisitHistoryDetail
    on Fragment$VisitHistoryDetail {
  CopyWith$Fragment$VisitHistoryDetail<Fragment$VisitHistoryDetail>
      get copyWith => CopyWith$Fragment$VisitHistoryDetail(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$VisitHistoryDetail<TRes> {
  factory CopyWith$Fragment$VisitHistoryDetail(
    Fragment$VisitHistoryDetail instance,
    TRes Function(Fragment$VisitHistoryDetail) then,
  ) = _CopyWithImpl$Fragment$VisitHistoryDetail;

  factory CopyWith$Fragment$VisitHistoryDetail.stub(TRes res) =
      _CopyWithStubImpl$Fragment$VisitHistoryDetail;

  TRes call({
    String? id,
    Fragment$SaunaAutocompleteFragment? sauna,
    DateTime? visitedAt,
    int? duration,
    int? cycles,
    int? rating,
    String? review,
    String? note,
    String? $__typename,
  });
  CopyWith$Fragment$SaunaAutocompleteFragment<TRes> get sauna;
}

class _CopyWithImpl$Fragment$VisitHistoryDetail<TRes>
    implements CopyWith$Fragment$VisitHistoryDetail<TRes> {
  _CopyWithImpl$Fragment$VisitHistoryDetail(
    this._instance,
    this._then,
  );

  final Fragment$VisitHistoryDetail _instance;

  final TRes Function(Fragment$VisitHistoryDetail) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? sauna = _undefined,
    Object? visitedAt = _undefined,
    Object? duration = _undefined,
    Object? cycles = _undefined,
    Object? rating = _undefined,
    Object? review = _undefined,
    Object? note = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$VisitHistoryDetail(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        sauna: sauna == _undefined || sauna == null
            ? _instance.sauna
            : (sauna as Fragment$SaunaAutocompleteFragment),
        visitedAt: visitedAt == _undefined || visitedAt == null
            ? _instance.visitedAt
            : (visitedAt as DateTime),
        duration: duration == _undefined || duration == null
            ? _instance.duration
            : (duration as int),
        cycles: cycles == _undefined || cycles == null
            ? _instance.cycles
            : (cycles as int),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        review: review == _undefined ? _instance.review : (review as String?),
        note: note == _undefined ? _instance.note : (note as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$SaunaAutocompleteFragment<TRes> get sauna {
    final local$sauna = _instance.sauna;
    return CopyWith$Fragment$SaunaAutocompleteFragment(
        local$sauna, (e) => call(sauna: e));
  }
}

class _CopyWithStubImpl$Fragment$VisitHistoryDetail<TRes>
    implements CopyWith$Fragment$VisitHistoryDetail<TRes> {
  _CopyWithStubImpl$Fragment$VisitHistoryDetail(this._res);

  TRes _res;

  call({
    String? id,
    Fragment$SaunaAutocompleteFragment? sauna,
    DateTime? visitedAt,
    int? duration,
    int? cycles,
    int? rating,
    String? review,
    String? note,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$SaunaAutocompleteFragment<TRes> get sauna =>
      CopyWith$Fragment$SaunaAutocompleteFragment.stub(_res);
}

const fragmentDefinitionVisitHistoryDetail = FragmentDefinitionNode(
  name: NameNode(value: 'VisitHistoryDetail'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'VisitHistory'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'sauna'),
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
      name: NameNode(value: 'visitedAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'duration'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'cycles'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'rating'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'review'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'note'),
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
);
const documentNodeFragmentVisitHistoryDetail = DocumentNode(definitions: [
  fragmentDefinitionVisitHistoryDetail,
  fragmentDefinitionSaunaAutocompleteFragment,
]);

extension ClientExtension$Fragment$VisitHistoryDetail on graphql.GraphQLClient {
  void writeFragment$VisitHistoryDetail({
    required Fragment$VisitHistoryDetail data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'VisitHistoryDetail',
            document: documentNodeFragmentVisitHistoryDetail,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$VisitHistoryDetail? readFragment$VisitHistoryDetail({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'VisitHistoryDetail',
          document: documentNodeFragmentVisitHistoryDetail,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$VisitHistoryDetail.fromJson(result);
  }
}

class Fragment$UserFragment {
  Fragment$UserFragment({
    required this.id,
    this.name,
    this.avatarUrl,
    required this.$__typename,
  });

  factory Fragment$UserFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatarUrl = json['avatarUrl'];
    final l$$__typename = json['__typename'];
    return Fragment$UserFragment(
      id: (l$id as String),
      name: (l$name as String?),
      avatarUrl: (l$avatarUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? name;

  final String? avatarUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatarUrl = avatarUrl;
    _resultData['avatarUrl'] = l$avatarUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatarUrl = avatarUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatarUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$UserFragment) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatarUrl = avatarUrl;
    final lOther$avatarUrl = other.avatarUrl;
    if (l$avatarUrl != lOther$avatarUrl) {
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

extension UtilityExtension$Fragment$UserFragment on Fragment$UserFragment {
  CopyWith$Fragment$UserFragment<Fragment$UserFragment> get copyWith =>
      CopyWith$Fragment$UserFragment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$UserFragment<TRes> {
  factory CopyWith$Fragment$UserFragment(
    Fragment$UserFragment instance,
    TRes Function(Fragment$UserFragment) then,
  ) = _CopyWithImpl$Fragment$UserFragment;

  factory CopyWith$Fragment$UserFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserFragment;

  TRes call({
    String? id,
    String? name,
    String? avatarUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserFragment<TRes>
    implements CopyWith$Fragment$UserFragment<TRes> {
  _CopyWithImpl$Fragment$UserFragment(
    this._instance,
    this._then,
  );

  final Fragment$UserFragment _instance;

  final TRes Function(Fragment$UserFragment) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatarUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserFragment(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined ? _instance.name : (name as String?),
        avatarUrl: avatarUrl == _undefined
            ? _instance.avatarUrl
            : (avatarUrl as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserFragment<TRes>
    implements CopyWith$Fragment$UserFragment<TRes> {
  _CopyWithStubImpl$Fragment$UserFragment(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? avatarUrl,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionUserFragment = FragmentDefinitionNode(
  name: NameNode(value: 'UserFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'User'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'avatarUrl'),
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
);
const documentNodeFragmentUserFragment = DocumentNode(definitions: [
  fragmentDefinitionUserFragment,
]);

extension ClientExtension$Fragment$UserFragment on graphql.GraphQLClient {
  void writeFragment$UserFragment({
    required Fragment$UserFragment data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'UserFragment',
            document: documentNodeFragmentUserFragment,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$UserFragment? readFragment$UserFragment({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'UserFragment',
          document: documentNodeFragmentUserFragment,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$UserFragment.fromJson(result);
  }
}

class Fragment$MeFragment implements Fragment$UserFragment {
  Fragment$MeFragment({
    required this.id,
    this.name,
    this.avatarUrl,
    required this.$__typename,
    required this.email,
  });

  factory Fragment$MeFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatarUrl = json['avatarUrl'];
    final l$$__typename = json['__typename'];
    final l$email = json['email'];
    return Fragment$MeFragment(
      id: (l$id as String),
      name: (l$name as String?),
      avatarUrl: (l$avatarUrl as String?),
      $__typename: (l$$__typename as String),
      email: (l$email as String),
    );
  }

  final String id;

  final String? name;

  final String? avatarUrl;

  final String $__typename;

  final String email;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatarUrl = avatarUrl;
    _resultData['avatarUrl'] = l$avatarUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$email = email;
    _resultData['email'] = l$email;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatarUrl = avatarUrl;
    final l$$__typename = $__typename;
    final l$email = email;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatarUrl,
      l$$__typename,
      l$email,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MeFragment) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatarUrl = avatarUrl;
    final lOther$avatarUrl = other.avatarUrl;
    if (l$avatarUrl != lOther$avatarUrl) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$MeFragment on Fragment$MeFragment {
  CopyWith$Fragment$MeFragment<Fragment$MeFragment> get copyWith =>
      CopyWith$Fragment$MeFragment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MeFragment<TRes> {
  factory CopyWith$Fragment$MeFragment(
    Fragment$MeFragment instance,
    TRes Function(Fragment$MeFragment) then,
  ) = _CopyWithImpl$Fragment$MeFragment;

  factory CopyWith$Fragment$MeFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MeFragment;

  TRes call({
    String? id,
    String? name,
    String? avatarUrl,
    String? $__typename,
    String? email,
  });
}

class _CopyWithImpl$Fragment$MeFragment<TRes>
    implements CopyWith$Fragment$MeFragment<TRes> {
  _CopyWithImpl$Fragment$MeFragment(
    this._instance,
    this._then,
  );

  final Fragment$MeFragment _instance;

  final TRes Function(Fragment$MeFragment) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatarUrl = _undefined,
    Object? $__typename = _undefined,
    Object? email = _undefined,
  }) =>
      _then(Fragment$MeFragment(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined ? _instance.name : (name as String?),
        avatarUrl: avatarUrl == _undefined
            ? _instance.avatarUrl
            : (avatarUrl as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
      ));
}

class _CopyWithStubImpl$Fragment$MeFragment<TRes>
    implements CopyWith$Fragment$MeFragment<TRes> {
  _CopyWithStubImpl$Fragment$MeFragment(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? avatarUrl,
    String? $__typename,
    String? email,
  }) =>
      _res;
}

const fragmentDefinitionMeFragment = FragmentDefinitionNode(
  name: NameNode(value: 'MeFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'User'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FragmentSpreadNode(
      name: NameNode(value: 'UserFragment'),
      directives: [],
    ),
    FieldNode(
      name: NameNode(value: 'email'),
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
);
const documentNodeFragmentMeFragment = DocumentNode(definitions: [
  fragmentDefinitionMeFragment,
  fragmentDefinitionUserFragment,
]);

extension ClientExtension$Fragment$MeFragment on graphql.GraphQLClient {
  void writeFragment$MeFragment({
    required Fragment$MeFragment data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'MeFragment',
            document: documentNodeFragmentMeFragment,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$MeFragment? readFragment$MeFragment({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'MeFragment',
          document: documentNodeFragmentMeFragment,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$MeFragment.fromJson(result);
  }
}
