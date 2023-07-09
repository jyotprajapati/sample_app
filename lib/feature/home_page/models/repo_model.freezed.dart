// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepoFeedModel _$RepoFeedModelFromJson(Map<String, dynamic> json) {
  return _RepoFeedModel.fromJson(json);
}

/// @nodoc
mixin _$RepoFeedModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "full_name")
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  Commit? get lastCommit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepoFeedModelCopyWith<RepoFeedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoFeedModelCopyWith<$Res> {
  factory $RepoFeedModelCopyWith(
          RepoFeedModel value, $Res Function(RepoFeedModel) then) =
      _$RepoFeedModelCopyWithImpl<$Res, RepoFeedModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: "full_name") String fullName,
      @JsonKey(ignore: true) Commit? lastCommit});
}

/// @nodoc
class _$RepoFeedModelCopyWithImpl<$Res, $Val extends RepoFeedModel>
    implements $RepoFeedModelCopyWith<$Res> {
  _$RepoFeedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fullName = null,
    Object? lastCommit = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      lastCommit: freezed == lastCommit
          ? _value.lastCommit
          : lastCommit // ignore: cast_nullable_to_non_nullable
              as Commit?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RepoFeedModelCopyWith<$Res>
    implements $RepoFeedModelCopyWith<$Res> {
  factory _$$_RepoFeedModelCopyWith(
          _$_RepoFeedModel value, $Res Function(_$_RepoFeedModel) then) =
      __$$_RepoFeedModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: "full_name") String fullName,
      @JsonKey(ignore: true) Commit? lastCommit});
}

/// @nodoc
class __$$_RepoFeedModelCopyWithImpl<$Res>
    extends _$RepoFeedModelCopyWithImpl<$Res, _$_RepoFeedModel>
    implements _$$_RepoFeedModelCopyWith<$Res> {
  __$$_RepoFeedModelCopyWithImpl(
      _$_RepoFeedModel _value, $Res Function(_$_RepoFeedModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fullName = null,
    Object? lastCommit = freezed,
  }) {
    return _then(_$_RepoFeedModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      lastCommit: freezed == lastCommit
          ? _value.lastCommit
          : lastCommit // ignore: cast_nullable_to_non_nullable
              as Commit?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RepoFeedModel implements _RepoFeedModel {
  const _$_RepoFeedModel(
      {required this.id,
      required this.name,
      @JsonKey(name: "full_name") required this.fullName,
      @JsonKey(ignore: true) this.lastCommit});

  factory _$_RepoFeedModel.fromJson(Map<String, dynamic> json) =>
      _$$_RepoFeedModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: "full_name")
  final String fullName;
  @override
  @JsonKey(ignore: true)
  final Commit? lastCommit;

  @override
  String toString() {
    return 'RepoFeedModel(id: $id, name: $name, fullName: $fullName, lastCommit: $lastCommit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepoFeedModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.lastCommit, lastCommit) ||
                other.lastCommit == lastCommit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, fullName, lastCommit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RepoFeedModelCopyWith<_$_RepoFeedModel> get copyWith =>
      __$$_RepoFeedModelCopyWithImpl<_$_RepoFeedModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepoFeedModelToJson(
      this,
    );
  }
}

abstract class _RepoFeedModel implements RepoFeedModel {
  const factory _RepoFeedModel(
      {required final int id,
      required final String name,
      @JsonKey(name: "full_name") required final String fullName,
      @JsonKey(ignore: true) final Commit? lastCommit}) = _$_RepoFeedModel;

  factory _RepoFeedModel.fromJson(Map<String, dynamic> json) =
      _$_RepoFeedModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: "full_name")
  String get fullName;
  @override
  @JsonKey(ignore: true)
  Commit? get lastCommit;
  @override
  @JsonKey(ignore: true)
  _$$_RepoFeedModelCopyWith<_$_RepoFeedModel> get copyWith =>
      throw _privateConstructorUsedError;
}
