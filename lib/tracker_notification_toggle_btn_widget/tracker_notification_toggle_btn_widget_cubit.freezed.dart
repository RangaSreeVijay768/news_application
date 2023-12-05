// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracker_notification_toggle_btn_widget_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrackerNotificationToggleBtnWidgetState {
  double get brightnessValue => throw _privateConstructorUsedError;
  bool get isLightModeEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackerNotificationToggleBtnWidgetStateCopyWith<
          TrackerNotificationToggleBtnWidgetState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackerNotificationToggleBtnWidgetStateCopyWith<$Res> {
  factory $TrackerNotificationToggleBtnWidgetStateCopyWith(
          TrackerNotificationToggleBtnWidgetState value,
          $Res Function(TrackerNotificationToggleBtnWidgetState) then) =
      _$TrackerNotificationToggleBtnWidgetStateCopyWithImpl<$Res,
          TrackerNotificationToggleBtnWidgetState>;
  @useResult
  $Res call({double brightnessValue, bool isLightModeEnabled});
}

/// @nodoc
class _$TrackerNotificationToggleBtnWidgetStateCopyWithImpl<$Res,
        $Val extends TrackerNotificationToggleBtnWidgetState>
    implements $TrackerNotificationToggleBtnWidgetStateCopyWith<$Res> {
  _$TrackerNotificationToggleBtnWidgetStateCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brightnessValue = null,
    Object? isLightModeEnabled = null,
  }) {
    return _then(_value.copyWith(
      brightnessValue: null == brightnessValue
          ? _value.brightnessValue
          : brightnessValue // ignore: cast_nullable_to_non_nullable
              as double,
      isLightModeEnabled: null == isLightModeEnabled
          ? _value.isLightModeEnabled
          : isLightModeEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TrackerNotificationToggleBtnWidgetStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double brightnessValue, bool isLightModeEnabled});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TrackerNotificationToggleBtnWidgetStateCopyWithImpl<$Res,
        _$_Initial> implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brightnessValue = null,
    Object? isLightModeEnabled = null,
  }) {
    return _then(_$_Initial(
      brightnessValue: null == brightnessValue
          ? _value.brightnessValue
          : brightnessValue // ignore: cast_nullable_to_non_nullable
              as double,
      isLightModeEnabled: null == isLightModeEnabled
          ? _value.isLightModeEnabled
          : isLightModeEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.brightnessValue, required this.isLightModeEnabled});

  @override
  final double brightnessValue;
  @override
  final bool isLightModeEnabled;

  @override
  String toString() {
    return 'TrackerNotificationToggleBtnWidgetState(brightnessValue: $brightnessValue, isLightModeEnabled: $isLightModeEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.brightnessValue, brightnessValue) ||
                other.brightnessValue == brightnessValue) &&
            (identical(other.isLightModeEnabled, isLightModeEnabled) ||
                other.isLightModeEnabled == isLightModeEnabled));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, brightnessValue, isLightModeEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements TrackerNotificationToggleBtnWidgetState {
  const factory _Initial(
      {required final double brightnessValue,
      required final bool isLightModeEnabled}) = _$_Initial;

  @override
  double get brightnessValue;
  @override
  bool get isLightModeEnabled;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
