import 'package:saunatonttu/custom_graphql_scalars.dart';

class Input$EmailSignInInputTypeInput {
  factory Input$EmailSignInInputTypeInput({
    required String email,
    required String password,
  }) =>
      Input$EmailSignInInputTypeInput._({
        r'email': email,
        r'password': password,
      });

  Input$EmailSignInInputTypeInput._(this._$data);

  factory Input$EmailSignInInputTypeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$EmailSignInInputTypeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);
  String get password => (_$data['password'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$EmailSignInInputTypeInput<Input$EmailSignInInputTypeInput>
      get copyWith => CopyWith$Input$EmailSignInInputTypeInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$EmailSignInInputTypeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$password = password;
    return Object.hashAll([
      l$email,
      l$password,
    ]);
  }
}

abstract class CopyWith$Input$EmailSignInInputTypeInput<TRes> {
  factory CopyWith$Input$EmailSignInInputTypeInput(
    Input$EmailSignInInputTypeInput instance,
    TRes Function(Input$EmailSignInInputTypeInput) then,
  ) = _CopyWithImpl$Input$EmailSignInInputTypeInput;

  factory CopyWith$Input$EmailSignInInputTypeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$EmailSignInInputTypeInput;

  TRes call({
    String? email,
    String? password,
  });
}

class _CopyWithImpl$Input$EmailSignInInputTypeInput<TRes>
    implements CopyWith$Input$EmailSignInInputTypeInput<TRes> {
  _CopyWithImpl$Input$EmailSignInInputTypeInput(
    this._instance,
    this._then,
  );

  final Input$EmailSignInInputTypeInput _instance;

  final TRes Function(Input$EmailSignInInputTypeInput) _then;

  static const _undefined = {};

  TRes call({
    Object? email = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$EmailSignInInputTypeInput._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$EmailSignInInputTypeInput<TRes>
    implements CopyWith$Input$EmailSignInInputTypeInput<TRes> {
  _CopyWithStubImpl$Input$EmailSignInInputTypeInput(this._res);

  TRes _res;

  call({
    String? email,
    String? password,
  }) =>
      _res;
}

class Input$EmailSignUpInputTypeInput {
  factory Input$EmailSignUpInputTypeInput({
    required String email,
    required String name,
    required String password,
  }) =>
      Input$EmailSignUpInputTypeInput._({
        r'email': email,
        r'name': name,
        r'password': password,
      });

  Input$EmailSignUpInputTypeInput._(this._$data);

  factory Input$EmailSignUpInputTypeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$EmailSignUpInputTypeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);
  String get name => (_$data['name'] as String);
  String get password => (_$data['password'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    final l$name = name;
    result$data['name'] = l$name;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$EmailSignUpInputTypeInput<Input$EmailSignUpInputTypeInput>
      get copyWith => CopyWith$Input$EmailSignUpInputTypeInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$EmailSignUpInputTypeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$name = name;
    final l$password = password;
    return Object.hashAll([
      l$email,
      l$name,
      l$password,
    ]);
  }
}

abstract class CopyWith$Input$EmailSignUpInputTypeInput<TRes> {
  factory CopyWith$Input$EmailSignUpInputTypeInput(
    Input$EmailSignUpInputTypeInput instance,
    TRes Function(Input$EmailSignUpInputTypeInput) then,
  ) = _CopyWithImpl$Input$EmailSignUpInputTypeInput;

  factory CopyWith$Input$EmailSignUpInputTypeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$EmailSignUpInputTypeInput;

  TRes call({
    String? email,
    String? name,
    String? password,
  });
}

class _CopyWithImpl$Input$EmailSignUpInputTypeInput<TRes>
    implements CopyWith$Input$EmailSignUpInputTypeInput<TRes> {
  _CopyWithImpl$Input$EmailSignUpInputTypeInput(
    this._instance,
    this._then,
  );

  final Input$EmailSignUpInputTypeInput _instance;

  final TRes Function(Input$EmailSignUpInputTypeInput) _then;

  static const _undefined = {};

  TRes call({
    Object? email = _undefined,
    Object? name = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$EmailSignUpInputTypeInput._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
        if (name != _undefined && name != null) 'name': (name as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$EmailSignUpInputTypeInput<TRes>
    implements CopyWith$Input$EmailSignUpInputTypeInput<TRes> {
  _CopyWithStubImpl$Input$EmailSignUpInputTypeInput(this._res);

  TRes _res;

  call({
    String? email,
    String? name,
    String? password,
  }) =>
      _res;
}

class Input$GeoJSONLineStringInput {
  factory Input$GeoJSONLineStringInput({
    List<Position?>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  }) =>
      Input$GeoJSONLineStringInput._({
        if (coordinates != null) r'coordinates': coordinates,
        if (crs != null) r'crs': crs,
        if (type != null) r'type': type,
      });

  Input$GeoJSONLineStringInput._(this._$data);

  factory Input$GeoJSONLineStringInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('coordinates')) {
      final l$coordinates = data['coordinates'];
      result$data['coordinates'] = (l$coordinates as List<dynamic>?)
          ?.map((e) => e == null ? null : customPositionFromJson(e))
          .toList();
    }
    if (data.containsKey('crs')) {
      final l$crs = data['crs'];
      result$data['crs'] = (l$crs as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJson$Enum$GeoJSONGeometryType((l$type as String));
    }
    return Input$GeoJSONLineStringInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Position?>? get coordinates =>
      (_$data['coordinates'] as List<Position?>?);
  int? get crs => (_$data['crs'] as int?);
  Enum$GeoJSONGeometryType? get type =>
      (_$data['type'] as Enum$GeoJSONGeometryType?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('coordinates')) {
      final l$coordinates = coordinates;
      result$data['coordinates'] = l$coordinates
          ?.map((e) => e == null ? null : customPositionToJson(e))
          .toList();
    }
    if (_$data.containsKey('crs')) {
      final l$crs = crs;
      result$data['crs'] = l$crs;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$GeoJSONGeometryType(l$type);
    }
    return result$data;
  }

  CopyWith$Input$GeoJSONLineStringInput<Input$GeoJSONLineStringInput>
      get copyWith => CopyWith$Input$GeoJSONLineStringInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GeoJSONLineStringInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$coordinates = coordinates;
    final lOther$coordinates = other.coordinates;
    if (_$data.containsKey('coordinates') !=
        other._$data.containsKey('coordinates')) {
      return false;
    }
    if (l$coordinates != null && lOther$coordinates != null) {
      if (l$coordinates.length != lOther$coordinates.length) {
        return false;
      }
      for (int i = 0; i < l$coordinates.length; i++) {
        final l$coordinates$entry = l$coordinates[i];
        final lOther$coordinates$entry = lOther$coordinates[i];
        if (l$coordinates$entry != lOther$coordinates$entry) {
          return false;
        }
      }
    } else if (l$coordinates != lOther$coordinates) {
      return false;
    }
    final l$crs = crs;
    final lOther$crs = other.crs;
    if (_$data.containsKey('crs') != other._$data.containsKey('crs')) {
      return false;
    }
    if (l$crs != lOther$crs) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$coordinates = coordinates;
    final l$crs = crs;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('coordinates')
          ? l$coordinates == null
              ? null
              : Object.hashAll(l$coordinates.map((v) => v))
          : const {},
      _$data.containsKey('crs') ? l$crs : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$GeoJSONLineStringInput<TRes> {
  factory CopyWith$Input$GeoJSONLineStringInput(
    Input$GeoJSONLineStringInput instance,
    TRes Function(Input$GeoJSONLineStringInput) then,
  ) = _CopyWithImpl$Input$GeoJSONLineStringInput;

  factory CopyWith$Input$GeoJSONLineStringInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GeoJSONLineStringInput;

  TRes call({
    List<Position?>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  });
}

class _CopyWithImpl$Input$GeoJSONLineStringInput<TRes>
    implements CopyWith$Input$GeoJSONLineStringInput<TRes> {
  _CopyWithImpl$Input$GeoJSONLineStringInput(
    this._instance,
    this._then,
  );

  final Input$GeoJSONLineStringInput _instance;

  final TRes Function(Input$GeoJSONLineStringInput) _then;

  static const _undefined = {};

  TRes call({
    Object? coordinates = _undefined,
    Object? crs = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$GeoJSONLineStringInput._({
        ..._instance._$data,
        if (coordinates != _undefined)
          'coordinates': (coordinates as List<Position?>?),
        if (crs != _undefined) 'crs': (crs as int?),
        if (type != _undefined) 'type': (type as Enum$GeoJSONGeometryType?),
      }));
}

class _CopyWithStubImpl$Input$GeoJSONLineStringInput<TRes>
    implements CopyWith$Input$GeoJSONLineStringInput<TRes> {
  _CopyWithStubImpl$Input$GeoJSONLineStringInput(this._res);

  TRes _res;

  call({
    List<Position?>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  }) =>
      _res;
}

class Input$GeoJSONMultiLineStringInput {
  factory Input$GeoJSONMultiLineStringInput({
    List<List<Position?>?>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  }) =>
      Input$GeoJSONMultiLineStringInput._({
        if (coordinates != null) r'coordinates': coordinates,
        if (crs != null) r'crs': crs,
        if (type != null) r'type': type,
      });

  Input$GeoJSONMultiLineStringInput._(this._$data);

  factory Input$GeoJSONMultiLineStringInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('coordinates')) {
      final l$coordinates = data['coordinates'];
      result$data['coordinates'] = (l$coordinates as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>?)
              ?.map((e) => e == null ? null : customPositionFromJson(e))
              .toList())
          .toList();
    }
    if (data.containsKey('crs')) {
      final l$crs = data['crs'];
      result$data['crs'] = (l$crs as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJson$Enum$GeoJSONGeometryType((l$type as String));
    }
    return Input$GeoJSONMultiLineStringInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<List<Position?>?>? get coordinates =>
      (_$data['coordinates'] as List<List<Position?>?>?);
  int? get crs => (_$data['crs'] as int?);
  Enum$GeoJSONGeometryType? get type =>
      (_$data['type'] as Enum$GeoJSONGeometryType?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('coordinates')) {
      final l$coordinates = coordinates;
      result$data['coordinates'] = l$coordinates
          ?.map((e) => e
              ?.map((e) => e == null ? null : customPositionToJson(e))
              .toList())
          .toList();
    }
    if (_$data.containsKey('crs')) {
      final l$crs = crs;
      result$data['crs'] = l$crs;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$GeoJSONGeometryType(l$type);
    }
    return result$data;
  }

  CopyWith$Input$GeoJSONMultiLineStringInput<Input$GeoJSONMultiLineStringInput>
      get copyWith => CopyWith$Input$GeoJSONMultiLineStringInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GeoJSONMultiLineStringInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$coordinates = coordinates;
    final lOther$coordinates = other.coordinates;
    if (_$data.containsKey('coordinates') !=
        other._$data.containsKey('coordinates')) {
      return false;
    }
    if (l$coordinates != null && lOther$coordinates != null) {
      if (l$coordinates.length != lOther$coordinates.length) {
        return false;
      }
      for (int i = 0; i < l$coordinates.length; i++) {
        final l$coordinates$entry = l$coordinates[i];
        final lOther$coordinates$entry = lOther$coordinates[i];
        if (l$coordinates$entry != null && lOther$coordinates$entry != null) {
          if (l$coordinates$entry.length != lOther$coordinates$entry.length) {
            return false;
          }
          for (int i = 0; i < l$coordinates$entry.length; i++) {
            final l$coordinates$entry$entry = l$coordinates$entry[i];
            final lOther$coordinates$entry$entry = lOther$coordinates$entry[i];
            if (l$coordinates$entry$entry != lOther$coordinates$entry$entry) {
              return false;
            }
          }
        } else if (l$coordinates$entry != lOther$coordinates$entry) {
          return false;
        }
      }
    } else if (l$coordinates != lOther$coordinates) {
      return false;
    }
    final l$crs = crs;
    final lOther$crs = other.crs;
    if (_$data.containsKey('crs') != other._$data.containsKey('crs')) {
      return false;
    }
    if (l$crs != lOther$crs) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$coordinates = coordinates;
    final l$crs = crs;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('coordinates')
          ? l$coordinates == null
              ? null
              : Object.hashAll(l$coordinates.map(
                  (v) => v == null ? null : Object.hashAll(v.map((v) => v))))
          : const {},
      _$data.containsKey('crs') ? l$crs : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$GeoJSONMultiLineStringInput<TRes> {
  factory CopyWith$Input$GeoJSONMultiLineStringInput(
    Input$GeoJSONMultiLineStringInput instance,
    TRes Function(Input$GeoJSONMultiLineStringInput) then,
  ) = _CopyWithImpl$Input$GeoJSONMultiLineStringInput;

  factory CopyWith$Input$GeoJSONMultiLineStringInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GeoJSONMultiLineStringInput;

  TRes call({
    List<List<Position?>?>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  });
}

class _CopyWithImpl$Input$GeoJSONMultiLineStringInput<TRes>
    implements CopyWith$Input$GeoJSONMultiLineStringInput<TRes> {
  _CopyWithImpl$Input$GeoJSONMultiLineStringInput(
    this._instance,
    this._then,
  );

  final Input$GeoJSONMultiLineStringInput _instance;

  final TRes Function(Input$GeoJSONMultiLineStringInput) _then;

  static const _undefined = {};

  TRes call({
    Object? coordinates = _undefined,
    Object? crs = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$GeoJSONMultiLineStringInput._({
        ..._instance._$data,
        if (coordinates != _undefined)
          'coordinates': (coordinates as List<List<Position?>?>?),
        if (crs != _undefined) 'crs': (crs as int?),
        if (type != _undefined) 'type': (type as Enum$GeoJSONGeometryType?),
      }));
}

class _CopyWithStubImpl$Input$GeoJSONMultiLineStringInput<TRes>
    implements CopyWith$Input$GeoJSONMultiLineStringInput<TRes> {
  _CopyWithStubImpl$Input$GeoJSONMultiLineStringInput(this._res);

  TRes _res;

  call({
    List<List<Position?>?>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  }) =>
      _res;
}

class Input$GeoJSONMultiPointInput {
  factory Input$GeoJSONMultiPointInput({
    List<Position?>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  }) =>
      Input$GeoJSONMultiPointInput._({
        if (coordinates != null) r'coordinates': coordinates,
        if (crs != null) r'crs': crs,
        if (type != null) r'type': type,
      });

  Input$GeoJSONMultiPointInput._(this._$data);

  factory Input$GeoJSONMultiPointInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('coordinates')) {
      final l$coordinates = data['coordinates'];
      result$data['coordinates'] = (l$coordinates as List<dynamic>?)
          ?.map((e) => e == null ? null : customPositionFromJson(e))
          .toList();
    }
    if (data.containsKey('crs')) {
      final l$crs = data['crs'];
      result$data['crs'] = (l$crs as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJson$Enum$GeoJSONGeometryType((l$type as String));
    }
    return Input$GeoJSONMultiPointInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Position?>? get coordinates =>
      (_$data['coordinates'] as List<Position?>?);
  int? get crs => (_$data['crs'] as int?);
  Enum$GeoJSONGeometryType? get type =>
      (_$data['type'] as Enum$GeoJSONGeometryType?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('coordinates')) {
      final l$coordinates = coordinates;
      result$data['coordinates'] = l$coordinates
          ?.map((e) => e == null ? null : customPositionToJson(e))
          .toList();
    }
    if (_$data.containsKey('crs')) {
      final l$crs = crs;
      result$data['crs'] = l$crs;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$GeoJSONGeometryType(l$type);
    }
    return result$data;
  }

  CopyWith$Input$GeoJSONMultiPointInput<Input$GeoJSONMultiPointInput>
      get copyWith => CopyWith$Input$GeoJSONMultiPointInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GeoJSONMultiPointInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$coordinates = coordinates;
    final lOther$coordinates = other.coordinates;
    if (_$data.containsKey('coordinates') !=
        other._$data.containsKey('coordinates')) {
      return false;
    }
    if (l$coordinates != null && lOther$coordinates != null) {
      if (l$coordinates.length != lOther$coordinates.length) {
        return false;
      }
      for (int i = 0; i < l$coordinates.length; i++) {
        final l$coordinates$entry = l$coordinates[i];
        final lOther$coordinates$entry = lOther$coordinates[i];
        if (l$coordinates$entry != lOther$coordinates$entry) {
          return false;
        }
      }
    } else if (l$coordinates != lOther$coordinates) {
      return false;
    }
    final l$crs = crs;
    final lOther$crs = other.crs;
    if (_$data.containsKey('crs') != other._$data.containsKey('crs')) {
      return false;
    }
    if (l$crs != lOther$crs) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$coordinates = coordinates;
    final l$crs = crs;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('coordinates')
          ? l$coordinates == null
              ? null
              : Object.hashAll(l$coordinates.map((v) => v))
          : const {},
      _$data.containsKey('crs') ? l$crs : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$GeoJSONMultiPointInput<TRes> {
  factory CopyWith$Input$GeoJSONMultiPointInput(
    Input$GeoJSONMultiPointInput instance,
    TRes Function(Input$GeoJSONMultiPointInput) then,
  ) = _CopyWithImpl$Input$GeoJSONMultiPointInput;

  factory CopyWith$Input$GeoJSONMultiPointInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GeoJSONMultiPointInput;

  TRes call({
    List<Position?>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  });
}

class _CopyWithImpl$Input$GeoJSONMultiPointInput<TRes>
    implements CopyWith$Input$GeoJSONMultiPointInput<TRes> {
  _CopyWithImpl$Input$GeoJSONMultiPointInput(
    this._instance,
    this._then,
  );

  final Input$GeoJSONMultiPointInput _instance;

  final TRes Function(Input$GeoJSONMultiPointInput) _then;

  static const _undefined = {};

  TRes call({
    Object? coordinates = _undefined,
    Object? crs = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$GeoJSONMultiPointInput._({
        ..._instance._$data,
        if (coordinates != _undefined)
          'coordinates': (coordinates as List<Position?>?),
        if (crs != _undefined) 'crs': (crs as int?),
        if (type != _undefined) 'type': (type as Enum$GeoJSONGeometryType?),
      }));
}

class _CopyWithStubImpl$Input$GeoJSONMultiPointInput<TRes>
    implements CopyWith$Input$GeoJSONMultiPointInput<TRes> {
  _CopyWithStubImpl$Input$GeoJSONMultiPointInput(this._res);

  TRes _res;

  call({
    List<Position?>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  }) =>
      _res;
}

class Input$GeoJSONMultiPolygonInput {
  factory Input$GeoJSONMultiPolygonInput({
    List<double>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  }) =>
      Input$GeoJSONMultiPolygonInput._({
        if (coordinates != null) r'coordinates': coordinates,
        if (crs != null) r'crs': crs,
        if (type != null) r'type': type,
      });

  Input$GeoJSONMultiPolygonInput._(this._$data);

  factory Input$GeoJSONMultiPolygonInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('coordinates')) {
      final l$coordinates = data['coordinates'];
      result$data['coordinates'] = (l$coordinates as List<double>?);
    }
    if (data.containsKey('crs')) {
      final l$crs = data['crs'];
      result$data['crs'] = (l$crs as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJson$Enum$GeoJSONGeometryType((l$type as String));
    }
    return Input$GeoJSONMultiPolygonInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<double>? get coordinates => (_$data['coordinates'] as List<double>?);
  int? get crs => (_$data['crs'] as int?);
  Enum$GeoJSONGeometryType? get type =>
      (_$data['type'] as Enum$GeoJSONGeometryType?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('coordinates')) {
      final l$coordinates = coordinates;
      result$data['coordinates'] = l$coordinates;
    }
    if (_$data.containsKey('crs')) {
      final l$crs = crs;
      result$data['crs'] = l$crs;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$GeoJSONGeometryType(l$type);
    }
    return result$data;
  }

  CopyWith$Input$GeoJSONMultiPolygonInput<Input$GeoJSONMultiPolygonInput>
      get copyWith => CopyWith$Input$GeoJSONMultiPolygonInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GeoJSONMultiPolygonInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$coordinates = coordinates;
    final lOther$coordinates = other.coordinates;
    if (_$data.containsKey('coordinates') !=
        other._$data.containsKey('coordinates')) {
      return false;
    }
    if (l$coordinates != lOther$coordinates) {
      return false;
    }
    final l$crs = crs;
    final lOther$crs = other.crs;
    if (_$data.containsKey('crs') != other._$data.containsKey('crs')) {
      return false;
    }
    if (l$crs != lOther$crs) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$coordinates = coordinates;
    final l$crs = crs;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('coordinates') ? l$coordinates : const {},
      _$data.containsKey('crs') ? l$crs : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$GeoJSONMultiPolygonInput<TRes> {
  factory CopyWith$Input$GeoJSONMultiPolygonInput(
    Input$GeoJSONMultiPolygonInput instance,
    TRes Function(Input$GeoJSONMultiPolygonInput) then,
  ) = _CopyWithImpl$Input$GeoJSONMultiPolygonInput;

  factory CopyWith$Input$GeoJSONMultiPolygonInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GeoJSONMultiPolygonInput;

  TRes call({
    List<double>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  });
}

class _CopyWithImpl$Input$GeoJSONMultiPolygonInput<TRes>
    implements CopyWith$Input$GeoJSONMultiPolygonInput<TRes> {
  _CopyWithImpl$Input$GeoJSONMultiPolygonInput(
    this._instance,
    this._then,
  );

  final Input$GeoJSONMultiPolygonInput _instance;

  final TRes Function(Input$GeoJSONMultiPolygonInput) _then;

  static const _undefined = {};

  TRes call({
    Object? coordinates = _undefined,
    Object? crs = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$GeoJSONMultiPolygonInput._({
        ..._instance._$data,
        if (coordinates != _undefined)
          'coordinates': (coordinates as List<double>?),
        if (crs != _undefined) 'crs': (crs as int?),
        if (type != _undefined) 'type': (type as Enum$GeoJSONGeometryType?),
      }));
}

class _CopyWithStubImpl$Input$GeoJSONMultiPolygonInput<TRes>
    implements CopyWith$Input$GeoJSONMultiPolygonInput<TRes> {
  _CopyWithStubImpl$Input$GeoJSONMultiPolygonInput(this._res);

  TRes _res;

  call({
    List<double>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  }) =>
      _res;
}

class Input$GeoJSONPointInput {
  factory Input$GeoJSONPointInput({
    Position? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  }) =>
      Input$GeoJSONPointInput._({
        if (coordinates != null) r'coordinates': coordinates,
        if (crs != null) r'crs': crs,
        if (type != null) r'type': type,
      });

  Input$GeoJSONPointInput._(this._$data);

  factory Input$GeoJSONPointInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('coordinates')) {
      final l$coordinates = data['coordinates'];
      result$data['coordinates'] =
          l$coordinates == null ? null : customPositionFromJson(l$coordinates);
    }
    if (data.containsKey('crs')) {
      final l$crs = data['crs'];
      result$data['crs'] = (l$crs as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJson$Enum$GeoJSONGeometryType((l$type as String));
    }
    return Input$GeoJSONPointInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Position? get coordinates => (_$data['coordinates'] as Position?);
  int? get crs => (_$data['crs'] as int?);
  Enum$GeoJSONGeometryType? get type =>
      (_$data['type'] as Enum$GeoJSONGeometryType?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('coordinates')) {
      final l$coordinates = coordinates;
      result$data['coordinates'] =
          l$coordinates == null ? null : customPositionToJson(l$coordinates);
    }
    if (_$data.containsKey('crs')) {
      final l$crs = crs;
      result$data['crs'] = l$crs;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$GeoJSONGeometryType(l$type);
    }
    return result$data;
  }

  CopyWith$Input$GeoJSONPointInput<Input$GeoJSONPointInput> get copyWith =>
      CopyWith$Input$GeoJSONPointInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GeoJSONPointInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$coordinates = coordinates;
    final lOther$coordinates = other.coordinates;
    if (_$data.containsKey('coordinates') !=
        other._$data.containsKey('coordinates')) {
      return false;
    }
    if (l$coordinates != lOther$coordinates) {
      return false;
    }
    final l$crs = crs;
    final lOther$crs = other.crs;
    if (_$data.containsKey('crs') != other._$data.containsKey('crs')) {
      return false;
    }
    if (l$crs != lOther$crs) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$coordinates = coordinates;
    final l$crs = crs;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('coordinates') ? l$coordinates : const {},
      _$data.containsKey('crs') ? l$crs : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$GeoJSONPointInput<TRes> {
  factory CopyWith$Input$GeoJSONPointInput(
    Input$GeoJSONPointInput instance,
    TRes Function(Input$GeoJSONPointInput) then,
  ) = _CopyWithImpl$Input$GeoJSONPointInput;

  factory CopyWith$Input$GeoJSONPointInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GeoJSONPointInput;

  TRes call({
    Position? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  });
}

class _CopyWithImpl$Input$GeoJSONPointInput<TRes>
    implements CopyWith$Input$GeoJSONPointInput<TRes> {
  _CopyWithImpl$Input$GeoJSONPointInput(
    this._instance,
    this._then,
  );

  final Input$GeoJSONPointInput _instance;

  final TRes Function(Input$GeoJSONPointInput) _then;

  static const _undefined = {};

  TRes call({
    Object? coordinates = _undefined,
    Object? crs = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$GeoJSONPointInput._({
        ..._instance._$data,
        if (coordinates != _undefined)
          'coordinates': (coordinates as Position?),
        if (crs != _undefined) 'crs': (crs as int?),
        if (type != _undefined) 'type': (type as Enum$GeoJSONGeometryType?),
      }));
}

class _CopyWithStubImpl$Input$GeoJSONPointInput<TRes>
    implements CopyWith$Input$GeoJSONPointInput<TRes> {
  _CopyWithStubImpl$Input$GeoJSONPointInput(this._res);

  TRes _res;

  call({
    Position? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  }) =>
      _res;
}

class Input$GeoJSONPolygonInput {
  factory Input$GeoJSONPolygonInput({
    List<List<Position?>?>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  }) =>
      Input$GeoJSONPolygonInput._({
        if (coordinates != null) r'coordinates': coordinates,
        if (crs != null) r'crs': crs,
        if (type != null) r'type': type,
      });

  Input$GeoJSONPolygonInput._(this._$data);

  factory Input$GeoJSONPolygonInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('coordinates')) {
      final l$coordinates = data['coordinates'];
      result$data['coordinates'] = (l$coordinates as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>?)
              ?.map((e) => e == null ? null : customPositionFromJson(e))
              .toList())
          .toList();
    }
    if (data.containsKey('crs')) {
      final l$crs = data['crs'];
      result$data['crs'] = (l$crs as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJson$Enum$GeoJSONGeometryType((l$type as String));
    }
    return Input$GeoJSONPolygonInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<List<Position?>?>? get coordinates =>
      (_$data['coordinates'] as List<List<Position?>?>?);
  int? get crs => (_$data['crs'] as int?);
  Enum$GeoJSONGeometryType? get type =>
      (_$data['type'] as Enum$GeoJSONGeometryType?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('coordinates')) {
      final l$coordinates = coordinates;
      result$data['coordinates'] = l$coordinates
          ?.map((e) => e
              ?.map((e) => e == null ? null : customPositionToJson(e))
              .toList())
          .toList();
    }
    if (_$data.containsKey('crs')) {
      final l$crs = crs;
      result$data['crs'] = l$crs;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$GeoJSONGeometryType(l$type);
    }
    return result$data;
  }

  CopyWith$Input$GeoJSONPolygonInput<Input$GeoJSONPolygonInput> get copyWith =>
      CopyWith$Input$GeoJSONPolygonInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GeoJSONPolygonInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$coordinates = coordinates;
    final lOther$coordinates = other.coordinates;
    if (_$data.containsKey('coordinates') !=
        other._$data.containsKey('coordinates')) {
      return false;
    }
    if (l$coordinates != null && lOther$coordinates != null) {
      if (l$coordinates.length != lOther$coordinates.length) {
        return false;
      }
      for (int i = 0; i < l$coordinates.length; i++) {
        final l$coordinates$entry = l$coordinates[i];
        final lOther$coordinates$entry = lOther$coordinates[i];
        if (l$coordinates$entry != null && lOther$coordinates$entry != null) {
          if (l$coordinates$entry.length != lOther$coordinates$entry.length) {
            return false;
          }
          for (int i = 0; i < l$coordinates$entry.length; i++) {
            final l$coordinates$entry$entry = l$coordinates$entry[i];
            final lOther$coordinates$entry$entry = lOther$coordinates$entry[i];
            if (l$coordinates$entry$entry != lOther$coordinates$entry$entry) {
              return false;
            }
          }
        } else if (l$coordinates$entry != lOther$coordinates$entry) {
          return false;
        }
      }
    } else if (l$coordinates != lOther$coordinates) {
      return false;
    }
    final l$crs = crs;
    final lOther$crs = other.crs;
    if (_$data.containsKey('crs') != other._$data.containsKey('crs')) {
      return false;
    }
    if (l$crs != lOther$crs) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$coordinates = coordinates;
    final l$crs = crs;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('coordinates')
          ? l$coordinates == null
              ? null
              : Object.hashAll(l$coordinates.map(
                  (v) => v == null ? null : Object.hashAll(v.map((v) => v))))
          : const {},
      _$data.containsKey('crs') ? l$crs : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$GeoJSONPolygonInput<TRes> {
  factory CopyWith$Input$GeoJSONPolygonInput(
    Input$GeoJSONPolygonInput instance,
    TRes Function(Input$GeoJSONPolygonInput) then,
  ) = _CopyWithImpl$Input$GeoJSONPolygonInput;

  factory CopyWith$Input$GeoJSONPolygonInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GeoJSONPolygonInput;

  TRes call({
    List<List<Position?>?>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  });
}

class _CopyWithImpl$Input$GeoJSONPolygonInput<TRes>
    implements CopyWith$Input$GeoJSONPolygonInput<TRes> {
  _CopyWithImpl$Input$GeoJSONPolygonInput(
    this._instance,
    this._then,
  );

  final Input$GeoJSONPolygonInput _instance;

  final TRes Function(Input$GeoJSONPolygonInput) _then;

  static const _undefined = {};

  TRes call({
    Object? coordinates = _undefined,
    Object? crs = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$GeoJSONPolygonInput._({
        ..._instance._$data,
        if (coordinates != _undefined)
          'coordinates': (coordinates as List<List<Position?>?>?),
        if (crs != _undefined) 'crs': (crs as int?),
        if (type != _undefined) 'type': (type as Enum$GeoJSONGeometryType?),
      }));
}

class _CopyWithStubImpl$Input$GeoJSONPolygonInput<TRes>
    implements CopyWith$Input$GeoJSONPolygonInput<TRes> {
  _CopyWithStubImpl$Input$GeoJSONPolygonInput(this._res);

  TRes _res;

  call({
    List<List<Position?>?>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  }) =>
      _res;
}

class Input$GroupCreateInputTypeInput {
  factory Input$GroupCreateInputTypeInput({required String name}) =>
      Input$GroupCreateInputTypeInput._({
        r'name': name,
      });

  Input$GroupCreateInputTypeInput._(this._$data);

  factory Input$GroupCreateInputTypeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Input$GroupCreateInputTypeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Input$GroupCreateInputTypeInput<Input$GroupCreateInputTypeInput>
      get copyWith => CopyWith$Input$GroupCreateInputTypeInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GroupCreateInputTypeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }
}

abstract class CopyWith$Input$GroupCreateInputTypeInput<TRes> {
  factory CopyWith$Input$GroupCreateInputTypeInput(
    Input$GroupCreateInputTypeInput instance,
    TRes Function(Input$GroupCreateInputTypeInput) then,
  ) = _CopyWithImpl$Input$GroupCreateInputTypeInput;

  factory CopyWith$Input$GroupCreateInputTypeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GroupCreateInputTypeInput;

  TRes call({String? name});
}

class _CopyWithImpl$Input$GroupCreateInputTypeInput<TRes>
    implements CopyWith$Input$GroupCreateInputTypeInput<TRes> {
  _CopyWithImpl$Input$GroupCreateInputTypeInput(
    this._instance,
    this._then,
  );

  final Input$GroupCreateInputTypeInput _instance;

  final TRes Function(Input$GroupCreateInputTypeInput) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) =>
      _then(Input$GroupCreateInputTypeInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Input$GroupCreateInputTypeInput<TRes>
    implements CopyWith$Input$GroupCreateInputTypeInput<TRes> {
  _CopyWithStubImpl$Input$GroupCreateInputTypeInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input$GroupUpdateInputTypeInput {
  factory Input$GroupUpdateInputTypeInput({
    required String groupId,
    String? name,
  }) =>
      Input$GroupUpdateInputTypeInput._({
        r'groupId': groupId,
        if (name != null) r'name': name,
      });

  Input$GroupUpdateInputTypeInput._(this._$data);

  factory Input$GroupUpdateInputTypeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$groupId = data['groupId'];
    result$data['groupId'] = (l$groupId as String);
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input$GroupUpdateInputTypeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get groupId => (_$data['groupId'] as String);
  String? get name => (_$data['name'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$groupId = groupId;
    result$data['groupId'] = l$groupId;
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith$Input$GroupUpdateInputTypeInput<Input$GroupUpdateInputTypeInput>
      get copyWith => CopyWith$Input$GroupUpdateInputTypeInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GroupUpdateInputTypeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (l$groupId != lOther$groupId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$groupId = groupId;
    final l$name = name;
    return Object.hashAll([
      l$groupId,
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith$Input$GroupUpdateInputTypeInput<TRes> {
  factory CopyWith$Input$GroupUpdateInputTypeInput(
    Input$GroupUpdateInputTypeInput instance,
    TRes Function(Input$GroupUpdateInputTypeInput) then,
  ) = _CopyWithImpl$Input$GroupUpdateInputTypeInput;

  factory CopyWith$Input$GroupUpdateInputTypeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GroupUpdateInputTypeInput;

  TRes call({
    String? groupId,
    String? name,
  });
}

class _CopyWithImpl$Input$GroupUpdateInputTypeInput<TRes>
    implements CopyWith$Input$GroupUpdateInputTypeInput<TRes> {
  _CopyWithImpl$Input$GroupUpdateInputTypeInput(
    this._instance,
    this._then,
  );

  final Input$GroupUpdateInputTypeInput _instance;

  final TRes Function(Input$GroupUpdateInputTypeInput) _then;

  static const _undefined = {};

  TRes call({
    Object? groupId = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Input$GroupUpdateInputTypeInput._({
        ..._instance._$data,
        if (groupId != _undefined && groupId != null)
          'groupId': (groupId as String),
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl$Input$GroupUpdateInputTypeInput<TRes>
    implements CopyWith$Input$GroupUpdateInputTypeInput<TRes> {
  _CopyWithStubImpl$Input$GroupUpdateInputTypeInput(this._res);

  TRes _res;

  call({
    String? groupId,
    String? name,
  }) =>
      _res;
}

class Input$GroupUserExpelInputTypeInput {
  factory Input$GroupUserExpelInputTypeInput({
    required String groupId,
    required String userId,
  }) =>
      Input$GroupUserExpelInputTypeInput._({
        r'groupId': groupId,
        r'userId': userId,
      });

  Input$GroupUserExpelInputTypeInput._(this._$data);

  factory Input$GroupUserExpelInputTypeInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$groupId = data['groupId'];
    result$data['groupId'] = (l$groupId as String);
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    return Input$GroupUserExpelInputTypeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get groupId => (_$data['groupId'] as String);
  String get userId => (_$data['userId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$groupId = groupId;
    result$data['groupId'] = l$groupId;
    final l$userId = userId;
    result$data['userId'] = l$userId;
    return result$data;
  }

  CopyWith$Input$GroupUserExpelInputTypeInput<
          Input$GroupUserExpelInputTypeInput>
      get copyWith => CopyWith$Input$GroupUserExpelInputTypeInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GroupUserExpelInputTypeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (l$groupId != lOther$groupId) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$groupId = groupId;
    final l$userId = userId;
    return Object.hashAll([
      l$groupId,
      l$userId,
    ]);
  }
}

abstract class CopyWith$Input$GroupUserExpelInputTypeInput<TRes> {
  factory CopyWith$Input$GroupUserExpelInputTypeInput(
    Input$GroupUserExpelInputTypeInput instance,
    TRes Function(Input$GroupUserExpelInputTypeInput) then,
  ) = _CopyWithImpl$Input$GroupUserExpelInputTypeInput;

  factory CopyWith$Input$GroupUserExpelInputTypeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GroupUserExpelInputTypeInput;

  TRes call({
    String? groupId,
    String? userId,
  });
}

class _CopyWithImpl$Input$GroupUserExpelInputTypeInput<TRes>
    implements CopyWith$Input$GroupUserExpelInputTypeInput<TRes> {
  _CopyWithImpl$Input$GroupUserExpelInputTypeInput(
    this._instance,
    this._then,
  );

  final Input$GroupUserExpelInputTypeInput _instance;

  final TRes Function(Input$GroupUserExpelInputTypeInput) _then;

  static const _undefined = {};

  TRes call({
    Object? groupId = _undefined,
    Object? userId = _undefined,
  }) =>
      _then(Input$GroupUserExpelInputTypeInput._({
        ..._instance._$data,
        if (groupId != _undefined && groupId != null)
          'groupId': (groupId as String),
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
      }));
}

class _CopyWithStubImpl$Input$GroupUserExpelInputTypeInput<TRes>
    implements CopyWith$Input$GroupUserExpelInputTypeInput<TRes> {
  _CopyWithStubImpl$Input$GroupUserExpelInputTypeInput(this._res);

  TRes _res;

  call({
    String? groupId,
    String? userId,
  }) =>
      _res;
}

class Input$PositionInput {
  factory Input$PositionInput({
    required double lat,
    required double lon,
  }) =>
      Input$PositionInput._({
        r'lat': lat,
        r'lon': lon,
      });

  Input$PositionInput._(this._$data);

  factory Input$PositionInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$lat = data['lat'];
    result$data['lat'] = (l$lat as num).toDouble();
    final l$lon = data['lon'];
    result$data['lon'] = (l$lon as num).toDouble();
    return Input$PositionInput._(result$data);
  }

  Map<String, dynamic> _$data;

  double get lat => (_$data['lat'] as double);
  double get lon => (_$data['lon'] as double);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$lat = lat;
    result$data['lat'] = l$lat;
    final l$lon = lon;
    result$data['lon'] = l$lon;
    return result$data;
  }

  CopyWith$Input$PositionInput<Input$PositionInput> get copyWith =>
      CopyWith$Input$PositionInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PositionInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$lat = lat;
    final lOther$lat = other.lat;
    if (l$lat != lOther$lat) {
      return false;
    }
    final l$lon = lon;
    final lOther$lon = other.lon;
    if (l$lon != lOther$lon) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$lat = lat;
    final l$lon = lon;
    return Object.hashAll([
      l$lat,
      l$lon,
    ]);
  }
}

abstract class CopyWith$Input$PositionInput<TRes> {
  factory CopyWith$Input$PositionInput(
    Input$PositionInput instance,
    TRes Function(Input$PositionInput) then,
  ) = _CopyWithImpl$Input$PositionInput;

  factory CopyWith$Input$PositionInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PositionInput;

  TRes call({
    double? lat,
    double? lon,
  });
}

class _CopyWithImpl$Input$PositionInput<TRes>
    implements CopyWith$Input$PositionInput<TRes> {
  _CopyWithImpl$Input$PositionInput(
    this._instance,
    this._then,
  );

  final Input$PositionInput _instance;

  final TRes Function(Input$PositionInput) _then;

  static const _undefined = {};

  TRes call({
    Object? lat = _undefined,
    Object? lon = _undefined,
  }) =>
      _then(Input$PositionInput._({
        ..._instance._$data,
        if (lat != _undefined && lat != null) 'lat': (lat as double),
        if (lon != _undefined && lon != null) 'lon': (lon as double),
      }));
}

class _CopyWithStubImpl$Input$PositionInput<TRes>
    implements CopyWith$Input$PositionInput<TRes> {
  _CopyWithStubImpl$Input$PositionInput(this._res);

  TRes _res;

  call({
    double? lat,
    double? lon,
  }) =>
      _res;
}

class Input$ReportInput {
  factory Input$ReportInput({
    required String message,
    required String reportType,
    required int subjectId,
    required String subjectName,
  }) =>
      Input$ReportInput._({
        r'message': message,
        r'reportType': reportType,
        r'subjectId': subjectId,
        r'subjectName': subjectName,
      });

  Input$ReportInput._(this._$data);

  factory Input$ReportInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$message = data['message'];
    result$data['message'] = (l$message as String);
    final l$reportType = data['reportType'];
    result$data['reportType'] = (l$reportType as String);
    final l$subjectId = data['subjectId'];
    result$data['subjectId'] = (l$subjectId as int);
    final l$subjectName = data['subjectName'];
    result$data['subjectName'] = (l$subjectName as String);
    return Input$ReportInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get message => (_$data['message'] as String);
  String get reportType => (_$data['reportType'] as String);
  int get subjectId => (_$data['subjectId'] as int);
  String get subjectName => (_$data['subjectName'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$message = message;
    result$data['message'] = l$message;
    final l$reportType = reportType;
    result$data['reportType'] = l$reportType;
    final l$subjectId = subjectId;
    result$data['subjectId'] = l$subjectId;
    final l$subjectName = subjectName;
    result$data['subjectName'] = l$subjectName;
    return result$data;
  }

  CopyWith$Input$ReportInput<Input$ReportInput> get copyWith =>
      CopyWith$Input$ReportInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ReportInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$reportType = reportType;
    final lOther$reportType = other.reportType;
    if (l$reportType != lOther$reportType) {
      return false;
    }
    final l$subjectId = subjectId;
    final lOther$subjectId = other.subjectId;
    if (l$subjectId != lOther$subjectId) {
      return false;
    }
    final l$subjectName = subjectName;
    final lOther$subjectName = other.subjectName;
    if (l$subjectName != lOther$subjectName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$reportType = reportType;
    final l$subjectId = subjectId;
    final l$subjectName = subjectName;
    return Object.hashAll([
      l$message,
      l$reportType,
      l$subjectId,
      l$subjectName,
    ]);
  }
}

abstract class CopyWith$Input$ReportInput<TRes> {
  factory CopyWith$Input$ReportInput(
    Input$ReportInput instance,
    TRes Function(Input$ReportInput) then,
  ) = _CopyWithImpl$Input$ReportInput;

  factory CopyWith$Input$ReportInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ReportInput;

  TRes call({
    String? message,
    String? reportType,
    int? subjectId,
    String? subjectName,
  });
}

class _CopyWithImpl$Input$ReportInput<TRes>
    implements CopyWith$Input$ReportInput<TRes> {
  _CopyWithImpl$Input$ReportInput(
    this._instance,
    this._then,
  );

  final Input$ReportInput _instance;

  final TRes Function(Input$ReportInput) _then;

  static const _undefined = {};

  TRes call({
    Object? message = _undefined,
    Object? reportType = _undefined,
    Object? subjectId = _undefined,
    Object? subjectName = _undefined,
  }) =>
      _then(Input$ReportInput._({
        ..._instance._$data,
        if (message != _undefined && message != null)
          'message': (message as String),
        if (reportType != _undefined && reportType != null)
          'reportType': (reportType as String),
        if (subjectId != _undefined && subjectId != null)
          'subjectId': (subjectId as int),
        if (subjectName != _undefined && subjectName != null)
          'subjectName': (subjectName as String),
      }));
}

class _CopyWithStubImpl$Input$ReportInput<TRes>
    implements CopyWith$Input$ReportInput<TRes> {
  _CopyWithStubImpl$Input$ReportInput(this._res);

  TRes _res;

  call({
    String? message,
    String? reportType,
    int? subjectId,
    String? subjectName,
  }) =>
      _res;
}

class Input$SaunaFilterInput {
  factory Input$SaunaFilterInput({
    String? fulltext,
    Input$PositionInput? position,
  }) =>
      Input$SaunaFilterInput._({
        if (fulltext != null) r'fulltext': fulltext,
        if (position != null) r'position': position,
      });

  Input$SaunaFilterInput._(this._$data);

  factory Input$SaunaFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('fulltext')) {
      final l$fulltext = data['fulltext'];
      result$data['fulltext'] = (l$fulltext as String?);
    }
    if (data.containsKey('position')) {
      final l$position = data['position'];
      result$data['position'] = l$position == null
          ? null
          : Input$PositionInput.fromJson((l$position as Map<String, dynamic>));
    }
    return Input$SaunaFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get fulltext => (_$data['fulltext'] as String?);
  Input$PositionInput? get position =>
      (_$data['position'] as Input$PositionInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('fulltext')) {
      final l$fulltext = fulltext;
      result$data['fulltext'] = l$fulltext;
    }
    if (_$data.containsKey('position')) {
      final l$position = position;
      result$data['position'] = l$position?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$SaunaFilterInput<Input$SaunaFilterInput> get copyWith =>
      CopyWith$Input$SaunaFilterInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SaunaFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fulltext = fulltext;
    final lOther$fulltext = other.fulltext;
    if (_$data.containsKey('fulltext') !=
        other._$data.containsKey('fulltext')) {
      return false;
    }
    if (l$fulltext != lOther$fulltext) {
      return false;
    }
    final l$position = position;
    final lOther$position = other.position;
    if (_$data.containsKey('position') !=
        other._$data.containsKey('position')) {
      return false;
    }
    if (l$position != lOther$position) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$fulltext = fulltext;
    final l$position = position;
    return Object.hashAll([
      _$data.containsKey('fulltext') ? l$fulltext : const {},
      _$data.containsKey('position') ? l$position : const {},
    ]);
  }
}

abstract class CopyWith$Input$SaunaFilterInput<TRes> {
  factory CopyWith$Input$SaunaFilterInput(
    Input$SaunaFilterInput instance,
    TRes Function(Input$SaunaFilterInput) then,
  ) = _CopyWithImpl$Input$SaunaFilterInput;

  factory CopyWith$Input$SaunaFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SaunaFilterInput;

  TRes call({
    String? fulltext,
    Input$PositionInput? position,
  });
  CopyWith$Input$PositionInput<TRes> get position;
}

class _CopyWithImpl$Input$SaunaFilterInput<TRes>
    implements CopyWith$Input$SaunaFilterInput<TRes> {
  _CopyWithImpl$Input$SaunaFilterInput(
    this._instance,
    this._then,
  );

  final Input$SaunaFilterInput _instance;

  final TRes Function(Input$SaunaFilterInput) _then;

  static const _undefined = {};

  TRes call({
    Object? fulltext = _undefined,
    Object? position = _undefined,
  }) =>
      _then(Input$SaunaFilterInput._({
        ..._instance._$data,
        if (fulltext != _undefined) 'fulltext': (fulltext as String?),
        if (position != _undefined)
          'position': (position as Input$PositionInput?),
      }));
  CopyWith$Input$PositionInput<TRes> get position {
    final local$position = _instance.position;
    return local$position == null
        ? CopyWith$Input$PositionInput.stub(_then(_instance))
        : CopyWith$Input$PositionInput(
            local$position, (e) => call(position: e));
  }
}

class _CopyWithStubImpl$Input$SaunaFilterInput<TRes>
    implements CopyWith$Input$SaunaFilterInput<TRes> {
  _CopyWithStubImpl$Input$SaunaFilterInput(this._res);

  TRes _res;

  call({
    String? fulltext,
    Input$PositionInput? position,
  }) =>
      _res;
  CopyWith$Input$PositionInput<TRes> get position =>
      CopyWith$Input$PositionInput.stub(_res);
}

class Input$VisitHistoryCreateInput {
  factory Input$VisitHistoryCreateInput({
    required int cycles,
    required int duration,
    String? note,
    int? rating,
    String? review,
    required String saunaId,
    required DateTime visitedAt,
  }) =>
      Input$VisitHistoryCreateInput._({
        r'cycles': cycles,
        r'duration': duration,
        if (note != null) r'note': note,
        if (rating != null) r'rating': rating,
        if (review != null) r'review': review,
        r'saunaId': saunaId,
        r'visitedAt': visitedAt,
      });

  Input$VisitHistoryCreateInput._(this._$data);

  factory Input$VisitHistoryCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$cycles = data['cycles'];
    result$data['cycles'] = (l$cycles as int);
    final l$duration = data['duration'];
    result$data['duration'] = (l$duration as int);
    if (data.containsKey('note')) {
      final l$note = data['note'];
      result$data['note'] = (l$note as String?);
    }
    if (data.containsKey('rating')) {
      final l$rating = data['rating'];
      result$data['rating'] = (l$rating as int?);
    }
    if (data.containsKey('review')) {
      final l$review = data['review'];
      result$data['review'] = (l$review as String?);
    }
    final l$saunaId = data['saunaId'];
    result$data['saunaId'] = (l$saunaId as String);
    final l$visitedAt = data['visitedAt'];
    result$data['visitedAt'] = DateTime.parse((l$visitedAt as String));
    return Input$VisitHistoryCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get cycles => (_$data['cycles'] as int);
  int get duration => (_$data['duration'] as int);
  String? get note => (_$data['note'] as String?);
  int? get rating => (_$data['rating'] as int?);
  String? get review => (_$data['review'] as String?);
  String get saunaId => (_$data['saunaId'] as String);
  DateTime get visitedAt => (_$data['visitedAt'] as DateTime);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$cycles = cycles;
    result$data['cycles'] = l$cycles;
    final l$duration = duration;
    result$data['duration'] = l$duration;
    if (_$data.containsKey('note')) {
      final l$note = note;
      result$data['note'] = l$note;
    }
    if (_$data.containsKey('rating')) {
      final l$rating = rating;
      result$data['rating'] = l$rating;
    }
    if (_$data.containsKey('review')) {
      final l$review = review;
      result$data['review'] = l$review;
    }
    final l$saunaId = saunaId;
    result$data['saunaId'] = l$saunaId;
    final l$visitedAt = visitedAt;
    result$data['visitedAt'] = l$visitedAt.toIso8601String();
    return result$data;
  }

  CopyWith$Input$VisitHistoryCreateInput<Input$VisitHistoryCreateInput>
      get copyWith => CopyWith$Input$VisitHistoryCreateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$VisitHistoryCreateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cycles = cycles;
    final lOther$cycles = other.cycles;
    if (l$cycles != lOther$cycles) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$note = note;
    final lOther$note = other.note;
    if (_$data.containsKey('note') != other._$data.containsKey('note')) {
      return false;
    }
    if (l$note != lOther$note) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (_$data.containsKey('rating') != other._$data.containsKey('rating')) {
      return false;
    }
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$review = review;
    final lOther$review = other.review;
    if (_$data.containsKey('review') != other._$data.containsKey('review')) {
      return false;
    }
    if (l$review != lOther$review) {
      return false;
    }
    final l$saunaId = saunaId;
    final lOther$saunaId = other.saunaId;
    if (l$saunaId != lOther$saunaId) {
      return false;
    }
    final l$visitedAt = visitedAt;
    final lOther$visitedAt = other.visitedAt;
    if (l$visitedAt != lOther$visitedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cycles = cycles;
    final l$duration = duration;
    final l$note = note;
    final l$rating = rating;
    final l$review = review;
    final l$saunaId = saunaId;
    final l$visitedAt = visitedAt;
    return Object.hashAll([
      l$cycles,
      l$duration,
      _$data.containsKey('note') ? l$note : const {},
      _$data.containsKey('rating') ? l$rating : const {},
      _$data.containsKey('review') ? l$review : const {},
      l$saunaId,
      l$visitedAt,
    ]);
  }
}

abstract class CopyWith$Input$VisitHistoryCreateInput<TRes> {
  factory CopyWith$Input$VisitHistoryCreateInput(
    Input$VisitHistoryCreateInput instance,
    TRes Function(Input$VisitHistoryCreateInput) then,
  ) = _CopyWithImpl$Input$VisitHistoryCreateInput;

  factory CopyWith$Input$VisitHistoryCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$VisitHistoryCreateInput;

  TRes call({
    int? cycles,
    int? duration,
    String? note,
    int? rating,
    String? review,
    String? saunaId,
    DateTime? visitedAt,
  });
}

class _CopyWithImpl$Input$VisitHistoryCreateInput<TRes>
    implements CopyWith$Input$VisitHistoryCreateInput<TRes> {
  _CopyWithImpl$Input$VisitHistoryCreateInput(
    this._instance,
    this._then,
  );

  final Input$VisitHistoryCreateInput _instance;

  final TRes Function(Input$VisitHistoryCreateInput) _then;

  static const _undefined = {};

  TRes call({
    Object? cycles = _undefined,
    Object? duration = _undefined,
    Object? note = _undefined,
    Object? rating = _undefined,
    Object? review = _undefined,
    Object? saunaId = _undefined,
    Object? visitedAt = _undefined,
  }) =>
      _then(Input$VisitHistoryCreateInput._({
        ..._instance._$data,
        if (cycles != _undefined && cycles != null) 'cycles': (cycles as int),
        if (duration != _undefined && duration != null)
          'duration': (duration as int),
        if (note != _undefined) 'note': (note as String?),
        if (rating != _undefined) 'rating': (rating as int?),
        if (review != _undefined) 'review': (review as String?),
        if (saunaId != _undefined && saunaId != null)
          'saunaId': (saunaId as String),
        if (visitedAt != _undefined && visitedAt != null)
          'visitedAt': (visitedAt as DateTime),
      }));
}

class _CopyWithStubImpl$Input$VisitHistoryCreateInput<TRes>
    implements CopyWith$Input$VisitHistoryCreateInput<TRes> {
  _CopyWithStubImpl$Input$VisitHistoryCreateInput(this._res);

  TRes _res;

  call({
    int? cycles,
    int? duration,
    String? note,
    int? rating,
    String? review,
    String? saunaId,
    DateTime? visitedAt,
  }) =>
      _res;
}

class Input$VisitHistoryUpdateInput {
  factory Input$VisitHistoryUpdateInput({
    int? cycles,
    int? duration,
    String? note,
    int? rating,
    String? review,
    required int visitId,
    DateTime? visitedAt,
  }) =>
      Input$VisitHistoryUpdateInput._({
        if (cycles != null) r'cycles': cycles,
        if (duration != null) r'duration': duration,
        if (note != null) r'note': note,
        if (rating != null) r'rating': rating,
        if (review != null) r'review': review,
        r'visitId': visitId,
        if (visitedAt != null) r'visitedAt': visitedAt,
      });

  Input$VisitHistoryUpdateInput._(this._$data);

  factory Input$VisitHistoryUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('cycles')) {
      final l$cycles = data['cycles'];
      result$data['cycles'] = (l$cycles as int?);
    }
    if (data.containsKey('duration')) {
      final l$duration = data['duration'];
      result$data['duration'] = (l$duration as int?);
    }
    if (data.containsKey('note')) {
      final l$note = data['note'];
      result$data['note'] = (l$note as String?);
    }
    if (data.containsKey('rating')) {
      final l$rating = data['rating'];
      result$data['rating'] = (l$rating as int?);
    }
    if (data.containsKey('review')) {
      final l$review = data['review'];
      result$data['review'] = (l$review as String?);
    }
    final l$visitId = data['visitId'];
    result$data['visitId'] = (l$visitId as int);
    if (data.containsKey('visitedAt')) {
      final l$visitedAt = data['visitedAt'];
      result$data['visitedAt'] =
          l$visitedAt == null ? null : DateTime.parse((l$visitedAt as String));
    }
    return Input$VisitHistoryUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get cycles => (_$data['cycles'] as int?);
  int? get duration => (_$data['duration'] as int?);
  String? get note => (_$data['note'] as String?);
  int? get rating => (_$data['rating'] as int?);
  String? get review => (_$data['review'] as String?);
  int get visitId => (_$data['visitId'] as int);
  DateTime? get visitedAt => (_$data['visitedAt'] as DateTime?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('cycles')) {
      final l$cycles = cycles;
      result$data['cycles'] = l$cycles;
    }
    if (_$data.containsKey('duration')) {
      final l$duration = duration;
      result$data['duration'] = l$duration;
    }
    if (_$data.containsKey('note')) {
      final l$note = note;
      result$data['note'] = l$note;
    }
    if (_$data.containsKey('rating')) {
      final l$rating = rating;
      result$data['rating'] = l$rating;
    }
    if (_$data.containsKey('review')) {
      final l$review = review;
      result$data['review'] = l$review;
    }
    final l$visitId = visitId;
    result$data['visitId'] = l$visitId;
    if (_$data.containsKey('visitedAt')) {
      final l$visitedAt = visitedAt;
      result$data['visitedAt'] = l$visitedAt?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$VisitHistoryUpdateInput<Input$VisitHistoryUpdateInput>
      get copyWith => CopyWith$Input$VisitHistoryUpdateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$VisitHistoryUpdateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cycles = cycles;
    final lOther$cycles = other.cycles;
    if (_$data.containsKey('cycles') != other._$data.containsKey('cycles')) {
      return false;
    }
    if (l$cycles != lOther$cycles) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (_$data.containsKey('duration') !=
        other._$data.containsKey('duration')) {
      return false;
    }
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$note = note;
    final lOther$note = other.note;
    if (_$data.containsKey('note') != other._$data.containsKey('note')) {
      return false;
    }
    if (l$note != lOther$note) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (_$data.containsKey('rating') != other._$data.containsKey('rating')) {
      return false;
    }
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$review = review;
    final lOther$review = other.review;
    if (_$data.containsKey('review') != other._$data.containsKey('review')) {
      return false;
    }
    if (l$review != lOther$review) {
      return false;
    }
    final l$visitId = visitId;
    final lOther$visitId = other.visitId;
    if (l$visitId != lOther$visitId) {
      return false;
    }
    final l$visitedAt = visitedAt;
    final lOther$visitedAt = other.visitedAt;
    if (_$data.containsKey('visitedAt') !=
        other._$data.containsKey('visitedAt')) {
      return false;
    }
    if (l$visitedAt != lOther$visitedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cycles = cycles;
    final l$duration = duration;
    final l$note = note;
    final l$rating = rating;
    final l$review = review;
    final l$visitId = visitId;
    final l$visitedAt = visitedAt;
    return Object.hashAll([
      _$data.containsKey('cycles') ? l$cycles : const {},
      _$data.containsKey('duration') ? l$duration : const {},
      _$data.containsKey('note') ? l$note : const {},
      _$data.containsKey('rating') ? l$rating : const {},
      _$data.containsKey('review') ? l$review : const {},
      l$visitId,
      _$data.containsKey('visitedAt') ? l$visitedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$VisitHistoryUpdateInput<TRes> {
  factory CopyWith$Input$VisitHistoryUpdateInput(
    Input$VisitHistoryUpdateInput instance,
    TRes Function(Input$VisitHistoryUpdateInput) then,
  ) = _CopyWithImpl$Input$VisitHistoryUpdateInput;

  factory CopyWith$Input$VisitHistoryUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$VisitHistoryUpdateInput;

  TRes call({
    int? cycles,
    int? duration,
    String? note,
    int? rating,
    String? review,
    int? visitId,
    DateTime? visitedAt,
  });
}

class _CopyWithImpl$Input$VisitHistoryUpdateInput<TRes>
    implements CopyWith$Input$VisitHistoryUpdateInput<TRes> {
  _CopyWithImpl$Input$VisitHistoryUpdateInput(
    this._instance,
    this._then,
  );

  final Input$VisitHistoryUpdateInput _instance;

  final TRes Function(Input$VisitHistoryUpdateInput) _then;

  static const _undefined = {};

  TRes call({
    Object? cycles = _undefined,
    Object? duration = _undefined,
    Object? note = _undefined,
    Object? rating = _undefined,
    Object? review = _undefined,
    Object? visitId = _undefined,
    Object? visitedAt = _undefined,
  }) =>
      _then(Input$VisitHistoryUpdateInput._({
        ..._instance._$data,
        if (cycles != _undefined) 'cycles': (cycles as int?),
        if (duration != _undefined) 'duration': (duration as int?),
        if (note != _undefined) 'note': (note as String?),
        if (rating != _undefined) 'rating': (rating as int?),
        if (review != _undefined) 'review': (review as String?),
        if (visitId != _undefined && visitId != null)
          'visitId': (visitId as int),
        if (visitedAt != _undefined) 'visitedAt': (visitedAt as DateTime?),
      }));
}

class _CopyWithStubImpl$Input$VisitHistoryUpdateInput<TRes>
    implements CopyWith$Input$VisitHistoryUpdateInput<TRes> {
  _CopyWithStubImpl$Input$VisitHistoryUpdateInput(this._res);

  TRes _res;

  call({
    int? cycles,
    int? duration,
    String? note,
    int? rating,
    String? review,
    int? visitId,
    DateTime? visitedAt,
  }) =>
      _res;
}

enum Enum$ApplyPolicy { AFTER_RESOLVER, BEFORE_RESOLVER, $unknown }

String toJson$Enum$ApplyPolicy(Enum$ApplyPolicy e) {
  switch (e) {
    case Enum$ApplyPolicy.AFTER_RESOLVER:
      return r'AFTER_RESOLVER';
    case Enum$ApplyPolicy.BEFORE_RESOLVER:
      return r'BEFORE_RESOLVER';
    case Enum$ApplyPolicy.$unknown:
      return r'$unknown';
  }
}

Enum$ApplyPolicy fromJson$Enum$ApplyPolicy(String value) {
  switch (value) {
    case r'AFTER_RESOLVER':
      return Enum$ApplyPolicy.AFTER_RESOLVER;
    case r'BEFORE_RESOLVER':
      return Enum$ApplyPolicy.BEFORE_RESOLVER;
    default:
      return Enum$ApplyPolicy.$unknown;
  }
}

enum Enum$DayOfWeek {
  FRIDAY,
  MONDAY,
  SATURDAY,
  SUNDAY,
  THURSDAY,
  TUESDAY,
  WEDNESDAY,
  $unknown
}

String toJson$Enum$DayOfWeek(Enum$DayOfWeek e) {
  switch (e) {
    case Enum$DayOfWeek.FRIDAY:
      return r'FRIDAY';
    case Enum$DayOfWeek.MONDAY:
      return r'MONDAY';
    case Enum$DayOfWeek.SATURDAY:
      return r'SATURDAY';
    case Enum$DayOfWeek.SUNDAY:
      return r'SUNDAY';
    case Enum$DayOfWeek.THURSDAY:
      return r'THURSDAY';
    case Enum$DayOfWeek.TUESDAY:
      return r'TUESDAY';
    case Enum$DayOfWeek.WEDNESDAY:
      return r'WEDNESDAY';
    case Enum$DayOfWeek.$unknown:
      return r'$unknown';
  }
}

Enum$DayOfWeek fromJson$Enum$DayOfWeek(String value) {
  switch (value) {
    case r'FRIDAY':
      return Enum$DayOfWeek.FRIDAY;
    case r'MONDAY':
      return Enum$DayOfWeek.MONDAY;
    case r'SATURDAY':
      return Enum$DayOfWeek.SATURDAY;
    case r'SUNDAY':
      return Enum$DayOfWeek.SUNDAY;
    case r'THURSDAY':
      return Enum$DayOfWeek.THURSDAY;
    case r'TUESDAY':
      return Enum$DayOfWeek.TUESDAY;
    case r'WEDNESDAY':
      return Enum$DayOfWeek.WEDNESDAY;
    default:
      return Enum$DayOfWeek.$unknown;
  }
}

enum Enum$GeoJSONGeometryType {
  GeometryCollection,
  LineString,
  MultiLineString,
  MultiPoint,
  MultiPolygon,
  Point,
  Polygon,
  $unknown
}

String toJson$Enum$GeoJSONGeometryType(Enum$GeoJSONGeometryType e) {
  switch (e) {
    case Enum$GeoJSONGeometryType.GeometryCollection:
      return r'GeometryCollection';
    case Enum$GeoJSONGeometryType.LineString:
      return r'LineString';
    case Enum$GeoJSONGeometryType.MultiLineString:
      return r'MultiLineString';
    case Enum$GeoJSONGeometryType.MultiPoint:
      return r'MultiPoint';
    case Enum$GeoJSONGeometryType.MultiPolygon:
      return r'MultiPolygon';
    case Enum$GeoJSONGeometryType.Point:
      return r'Point';
    case Enum$GeoJSONGeometryType.Polygon:
      return r'Polygon';
    case Enum$GeoJSONGeometryType.$unknown:
      return r'$unknown';
  }
}

Enum$GeoJSONGeometryType fromJson$Enum$GeoJSONGeometryType(String value) {
  switch (value) {
    case r'GeometryCollection':
      return Enum$GeoJSONGeometryType.GeometryCollection;
    case r'LineString':
      return Enum$GeoJSONGeometryType.LineString;
    case r'MultiLineString':
      return Enum$GeoJSONGeometryType.MultiLineString;
    case r'MultiPoint':
      return Enum$GeoJSONGeometryType.MultiPoint;
    case r'MultiPolygon':
      return Enum$GeoJSONGeometryType.MultiPolygon;
    case r'Point':
      return Enum$GeoJSONGeometryType.Point;
    case r'Polygon':
      return Enum$GeoJSONGeometryType.Polygon;
    default:
      return Enum$GeoJSONGeometryType.$unknown;
  }
}

const possibleTypesMap = {
  'GeoJSONInterface': {
    'GeoJSONLineStringType',
    'GeoJSONMultiLineStringType',
    'GeoJSONMultiPointType',
    'GeoJSONMultiPolygonType',
    'GeoJSONPointType',
    'GeoJSONPolygonType',
  }
};
