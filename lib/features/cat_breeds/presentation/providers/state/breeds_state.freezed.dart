// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breeds_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BreedsState {

  BreedsStatus get status;

  List<CatBreed> get breeds;

  bool get hasReachedMax;

  String get errorMessage;

  bool get isLoadingMore;

  String get searchQuery;

  int get page;

  /// Create a copy of BreedsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BreedsStateCopyWith<BreedsState> get copyWith =>
      _$BreedsStateCopyWithImpl<BreedsState>(this as BreedsState, _$identity);


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BreedsState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.breeds, breeds) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.page, page) || other.page == page));
}


  @override
  int get hashCode =>
      Object.hash(
          runtimeType,
          status,
          const DeepCollectionEquality().hash(breeds),
          hasReachedMax,
          errorMessage,
          isLoadingMore,
          searchQuery,
          page);

  @override
  String toString() {
    return 'BreedsState(status: $status, breeds: $breeds, hasReachedMax: $hasReachedMax, errorMessage: $errorMessage, isLoadingMore: $isLoadingMore, searchQuery: $searchQuery, page: $page)';
  }


}

/// @nodoc
abstract mixin class $BreedsStateCopyWith<$Res> {
  factory $BreedsStateCopyWith(BreedsState value,
      $Res Function(BreedsState) _then) = _$BreedsStateCopyWithImpl;

  @useResult
  $Res call({
    BreedsStatus status, List<
        CatBreed> breeds, bool hasReachedMax, String errorMessage, bool isLoadingMore, String searchQuery, int page
  });


}
/// @nodoc
class _$BreedsStateCopyWithImpl<$Res>
    implements $BreedsStateCopyWith<$Res> {
  _$BreedsStateCopyWithImpl(this._self, this._then);

  final BreedsState _self;
  final $Res Function(BreedsState) _then;

  /// Create a copy of BreedsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call(
      {Object? status = null, Object? breeds = null, Object? hasReachedMax = null, Object? errorMessage = null, Object? isLoadingMore = null, Object? searchQuery = null, Object? page = null,}) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
      as BreedsStatus,
      breeds: null == breeds
          ? _self.breeds
          : breeds // ignore: cast_nullable_to_non_nullable
      as List<CatBreed>,
      hasReachedMax: null == hasReachedMax
          ? _self.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
      as bool,
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
      as String,
      isLoadingMore: null == isLoadingMore
          ? _self.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
      as bool,
      searchQuery: null == searchQuery
          ? _self.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
      as String,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
      as int,
    ));
  }

}


/// Adds pattern-matching-related methods to [BreedsState].
extension BreedsStatePatterns on BreedsState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs TResult maybeMap

  <

  TResult

  extends

  Object?

  >

  (

  TResult Function( _BreedsState value)? $default,{required TResult orElse(),}){
  final _that = this;
  switch (_that) {
  case _BreedsState() when $default != null:
  return $default(_that);case _:
  return orElse();

  }
  }
  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BreedsState value) $default,){
  final _that = this;
  switch (_that) {
  case _BreedsState():
  return $default(_that);case _:
  throw StateError('Unexpected subclass');

  }
  }
  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BreedsState value)? $default,){
  final _that = this;
  switch (_that) {
  case _BreedsState() when $default != null:
  return $default(_that);case _:
  return null;

  }
  }
  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BreedsStatus status, List<CatBreed> breeds, bool hasReachedMax, String errorMessage, bool isLoadingMore, String searchQuery, int page)? $default,{required TResult orElse(),}) {final _that = this;
  switch (_that) {
  case _BreedsState() when $default != null:
  return $default(_that.status,_that.breeds,_that.hasReachedMax,_that.errorMessage,_that.isLoadingMore,_that.searchQuery,_that.page);case _:
  return orElse();

  }
  }
  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BreedsStatus status, List<CatBreed> breeds, bool hasReachedMax, String errorMessage, bool isLoadingMore, String searchQuery, int page) $default,) {final _that = this;
  switch (_that) {
  case _BreedsState():
  return $default(_that.status,_that.breeds,_that.hasReachedMax,_that.errorMessage,_that.isLoadingMore,_that.searchQuery,_that.page);case _:
  throw StateError('Unexpected subclass');

  }
  }
  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BreedsStatus status, List<CatBreed> breeds, bool hasReachedMax, String errorMessage, bool isLoadingMore, String searchQuery, int page)? $default,) {final _that = this;
  switch (_that) {
  case _BreedsState() when $default != null:
  return $default(_that.status,_that.breeds,_that.hasReachedMax,_that.errorMessage,_that.isLoadingMore,_that.searchQuery,_that.page);case _:
  return null;

  }
  }

}

/// @nodoc


class _BreedsState implements BreedsState {
  const _BreedsState(
      {this.status = BreedsStatus.initial, final List<CatBreed> breeds = const [
      ], this.hasReachedMax = false, this.errorMessage = '', this.isLoadingMore = false, this.searchQuery = '', this.page = 0})
      : _breeds = breeds;


  @override
  @JsonKey()
  final BreedsStatus status;
  final List<CatBreed> _breeds;

  @override
  @JsonKey()
  List<CatBreed> get breeds {
    if (_breeds is EqualUnmodifiableListView) return _breeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breeds);
  }

  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  @JsonKey()
  final String searchQuery;
  @override
  @JsonKey()
  final int page;

  /// Create a copy of BreedsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BreedsStateCopyWith<_BreedsState> get copyWith =>
      __$BreedsStateCopyWithImpl<_BreedsState>(this, _$identity);


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _BreedsState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._breeds, _breeds) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.page, page) || other.page == page));
  }


  @override
  int get hashCode =>
      Object.hash(
          runtimeType,
          status,
          const DeepCollectionEquality().hash(_breeds),
          hasReachedMax,
          errorMessage,
          isLoadingMore,
          searchQuery,
          page);

  @override
  String toString() {
    return 'BreedsState(status: $status, breeds: $breeds, hasReachedMax: $hasReachedMax, errorMessage: $errorMessage, isLoadingMore: $isLoadingMore, searchQuery: $searchQuery, page: $page)';
  }


}

/// @nodoc
abstract mixin class _$BreedsStateCopyWith<$Res>
    implements $BreedsStateCopyWith<$Res> {
  factory _$BreedsStateCopyWith(_BreedsState value,
      $Res Function(_BreedsState) _then) = __$BreedsStateCopyWithImpl;

  @override
  @useResult
  $Res call({
    BreedsStatus status, List<
        CatBreed> breeds, bool hasReachedMax, String errorMessage, bool isLoadingMore, String searchQuery, int page
  });


}

/// @nodoc
class __$BreedsStateCopyWithImpl<$Res>
    implements _$BreedsStateCopyWith<$Res> {
  __$BreedsStateCopyWithImpl(this._self, this._then);

  final _BreedsState _self;
  final $Res Function(_BreedsState) _then;

  /// Create a copy of BreedsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call(
      {Object? status = null, Object? breeds = null, Object? hasReachedMax = null, Object? errorMessage = null, Object? isLoadingMore = null, Object? searchQuery = null, Object? page = null,}) {
    return _then(_BreedsState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
      as BreedsStatus,
      breeds: null == breeds
          ? _self._breeds
          : breeds // ignore: cast_nullable_to_non_nullable
      as List<CatBreed>,
      hasReachedMax: null == hasReachedMax
          ? _self.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
      as bool,
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
      as String,
      isLoadingMore: null == isLoadingMore
          ? _self.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
      as bool,
      searchQuery: null == searchQuery
          ? _self.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
      as String,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
      as int,
    ));
}


}

// dart format on
