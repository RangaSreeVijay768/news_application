// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articles_selected_articles_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticlesSelectedArticlesState {
  GetArticleDetailsResponse? get getArticleDetailsResponse =>
      throw _privateConstructorUsedError;
  BooleanStatus get getArticleDetailsStatus =>
      throw _privateConstructorUsedError;
  String? get newsId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetArticleDetailsResponse? getArticleDetailsResponse,
            BooleanStatus getArticleDetailsStatus,
            String? newsId)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetArticleDetailsResponse? getArticleDetailsResponse,
            BooleanStatus getArticleDetailsStatus, String? newsId)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetArticleDetailsResponse? getArticleDetailsResponse,
            BooleanStatus getArticleDetailsStatus, String? newsId)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticlesSelectedArticlesStateCopyWith<ArticlesSelectedArticlesState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticlesSelectedArticlesStateCopyWith<$Res> {
  factory $ArticlesSelectedArticlesStateCopyWith(
          ArticlesSelectedArticlesState value,
          $Res Function(ArticlesSelectedArticlesState) then) =
      _$ArticlesSelectedArticlesStateCopyWithImpl<$Res,
          ArticlesSelectedArticlesState>;
  @useResult
  $Res call(
      {GetArticleDetailsResponse? getArticleDetailsResponse,
      BooleanStatus getArticleDetailsStatus,
      String? newsId});
}

/// @nodoc
class _$ArticlesSelectedArticlesStateCopyWithImpl<$Res,
        $Val extends ArticlesSelectedArticlesState>
    implements $ArticlesSelectedArticlesStateCopyWith<$Res> {
  _$ArticlesSelectedArticlesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getArticleDetailsResponse = freezed,
    Object? getArticleDetailsStatus = null,
    Object? newsId = freezed,
  }) {
    return _then(_value.copyWith(
      getArticleDetailsResponse: freezed == getArticleDetailsResponse
          ? _value.getArticleDetailsResponse
          : getArticleDetailsResponse // ignore: cast_nullable_to_non_nullable
              as GetArticleDetailsResponse?,
      getArticleDetailsStatus: null == getArticleDetailsStatus
          ? _value.getArticleDetailsStatus
          : getArticleDetailsStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
      newsId: freezed == newsId
          ? _value.newsId
          : newsId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ArticlesSelectedArticlesStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GetArticleDetailsResponse? getArticleDetailsResponse,
      BooleanStatus getArticleDetailsStatus,
      String? newsId});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ArticlesSelectedArticlesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getArticleDetailsResponse = freezed,
    Object? getArticleDetailsStatus = null,
    Object? newsId = freezed,
  }) {
    return _then(_$_Initial(
      getArticleDetailsResponse: freezed == getArticleDetailsResponse
          ? _value.getArticleDetailsResponse
          : getArticleDetailsResponse // ignore: cast_nullable_to_non_nullable
              as GetArticleDetailsResponse?,
      getArticleDetailsStatus: null == getArticleDetailsStatus
          ? _value.getArticleDetailsStatus
          : getArticleDetailsStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
      newsId: freezed == newsId
          ? _value.newsId
          : newsId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.getArticleDetailsResponse,
      this.getArticleDetailsStatus = BooleanStatus.initial,
      this.newsId});

  @override
  final GetArticleDetailsResponse? getArticleDetailsResponse;
  @override
  @JsonKey()
  final BooleanStatus getArticleDetailsStatus;
  @override
  final String? newsId;

  @override
  String toString() {
    return 'ArticlesSelectedArticlesState.initial(getArticleDetailsResponse: $getArticleDetailsResponse, getArticleDetailsStatus: $getArticleDetailsStatus, newsId: $newsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.getArticleDetailsResponse,
                    getArticleDetailsResponse) ||
                other.getArticleDetailsResponse == getArticleDetailsResponse) &&
            (identical(
                    other.getArticleDetailsStatus, getArticleDetailsStatus) ||
                other.getArticleDetailsStatus == getArticleDetailsStatus) &&
            (identical(other.newsId, newsId) || other.newsId == newsId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, getArticleDetailsResponse, getArticleDetailsStatus, newsId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GetArticleDetailsResponse? getArticleDetailsResponse,
            BooleanStatus getArticleDetailsStatus,
            String? newsId)
        initial,
  }) {
    return initial(getArticleDetailsResponse, getArticleDetailsStatus, newsId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetArticleDetailsResponse? getArticleDetailsResponse,
            BooleanStatus getArticleDetailsStatus, String? newsId)?
        initial,
  }) {
    return initial?.call(
        getArticleDetailsResponse, getArticleDetailsStatus, newsId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetArticleDetailsResponse? getArticleDetailsResponse,
            BooleanStatus getArticleDetailsStatus, String? newsId)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          getArticleDetailsResponse, getArticleDetailsStatus, newsId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ArticlesSelectedArticlesState {
  const factory _Initial(
      {final GetArticleDetailsResponse? getArticleDetailsResponse,
      final BooleanStatus getArticleDetailsStatus,
      final String? newsId}) = _$_Initial;

  @override
  GetArticleDetailsResponse? get getArticleDetailsResponse;
  @override
  BooleanStatus get getArticleDetailsStatus;
  @override
  String? get newsId;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
