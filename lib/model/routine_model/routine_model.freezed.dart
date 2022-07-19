// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'routine_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoutineModel _$RoutineModelFromJson(Map<String, dynamic> json) {
  return _RoutineModel.fromJson(json);
}

/// @nodoc
mixin _$RoutineModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get dueTime => throw _privateConstructorUsedError;
  bool get checked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoutineModelCopyWith<RoutineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineModelCopyWith<$Res> {
  factory $RoutineModelCopyWith(
          RoutineModel value, $Res Function(RoutineModel) then) =
      _$RoutineModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String? description,
      String dueTime,
      bool checked});
}

/// @nodoc
class _$RoutineModelCopyWithImpl<$Res> implements $RoutineModelCopyWith<$Res> {
  _$RoutineModelCopyWithImpl(this._value, this._then);

  final RoutineModel _value;
  // ignore: unused_field
  final $Res Function(RoutineModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? dueTime = freezed,
    Object? checked = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      dueTime: dueTime == freezed
          ? _value.dueTime
          : dueTime // ignore: cast_nullable_to_non_nullable
              as String,
      checked: checked == freezed
          ? _value.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_RoutineModelCopyWith<$Res>
    implements $RoutineModelCopyWith<$Res> {
  factory _$$_RoutineModelCopyWith(
          _$_RoutineModel value, $Res Function(_$_RoutineModel) then) =
      __$$_RoutineModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String? description,
      String dueTime,
      bool checked});
}

/// @nodoc
class __$$_RoutineModelCopyWithImpl<$Res>
    extends _$RoutineModelCopyWithImpl<$Res>
    implements _$$_RoutineModelCopyWith<$Res> {
  __$$_RoutineModelCopyWithImpl(
      _$_RoutineModel _value, $Res Function(_$_RoutineModel) _then)
      : super(_value, (v) => _then(v as _$_RoutineModel));

  @override
  _$_RoutineModel get _value => super._value as _$_RoutineModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? dueTime = freezed,
    Object? checked = freezed,
  }) {
    return _then(_$_RoutineModel(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      dueTime == freezed
          ? _value.dueTime
          : dueTime // ignore: cast_nullable_to_non_nullable
              as String,
      checked == freezed
          ? _value.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoutineModel implements _RoutineModel {
  _$_RoutineModel(
      this.id, this.title, this.description, this.dueTime, this.checked);

  factory _$_RoutineModel.fromJson(Map<String, dynamic> json) =>
      _$$_RoutineModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String dueTime;
  @override
  final bool checked;

  @override
  String toString() {
    return 'RoutineModel(id: $id, title: $title, description: $description, dueTime: $dueTime, checked: $checked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoutineModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.dueTime, dueTime) &&
            const DeepCollectionEquality().equals(other.checked, checked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(dueTime),
      const DeepCollectionEquality().hash(checked));

  @JsonKey(ignore: true)
  @override
  _$$_RoutineModelCopyWith<_$_RoutineModel> get copyWith =>
      __$$_RoutineModelCopyWithImpl<_$_RoutineModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoutineModelToJson(this);
  }
}

abstract class _RoutineModel implements RoutineModel {
  factory _RoutineModel(
      final int id,
      final String title,
      final String? description,
      final String dueTime,
      final bool checked) = _$_RoutineModel;

  factory _RoutineModel.fromJson(Map<String, dynamic> json) =
      _$_RoutineModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  String get dueTime;
  @override
  bool get checked;
  @override
  @JsonKey(ignore: true)
  _$$_RoutineModelCopyWith<_$_RoutineModel> get copyWith =>
      throw _privateConstructorUsedError;
}
