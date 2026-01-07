// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breeds_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BreedsState {
  BreedsStatus get status => throw _privateConstructorUsedError;

  List<CatBreed> get breeds => throw _privateConstructorUsedError;

  bool get hasReachedMax => throw _privateConstructorUsedError;

  String get errorMessage => throw _privateConstructorUsedError;

  bool get isLoadingMore => throw _privateConstructorUsedError;

  String get searchQuery => throw _privateConstructorUsedError;

  /// Create a copy of BreedsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BreedsStateCopyWith<BreedsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedsStateCopyWith<$Res> {
  factory $BreedsStateCopyWith(
    BreedsState value,
    $Res Function(BreedsState) then,
  ) = _$BreedsStateCopyWithImpl<$Res, BreedsState>;

  @useResult
  $Res call({
    BreedsStatus status,
    List<CatBreed> breeds,
    bool hasReachedMax,
    String errorMessage,
    bool isLoadingMore,
    String searchQuery,
  });
}

/// @nodoc
class _$BreedsStateCopyWithImpl<$Res, $Val extends BreedsState>
    implements $BreedsStateCopyWith<$Res> {
  _$BreedsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BreedsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? breeds = null,
    Object? hasReachedMax = null,
    Object? errorMessage = null,
    Object? isLoadingMore = null,
    Object? searchQuery = null,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as BreedsStatus,
            breeds: null == breeds
                ? _value.breeds
                : breeds // ignore: cast_nullable_to_non_nullable
                      as List<CatBreed>,
            hasReachedMax: null == hasReachedMax
                ? _value.hasReachedMax
                : hasReachedMax // ignore: cast_nullable_to_non_nullable
                      as bool,
            errorMessage: null == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String,
            isLoadingMore: null == isLoadingMore
                ? _value.isLoadingMore
                : isLoadingMore // ignore: cast_nullable_to_non_nullable
                      as bool,
            searchQuery: null == searchQuery
                ? _value.searchQuery
                : searchQuery // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BreedsStateImplCopyWith<$Res>
    implements $BreedsStateCopyWith<$Res> {
  factory _$$BreedsStateImplCopyWith(
    _$BreedsStateImpl value,
    $Res Function(_$BreedsStateImpl) then,
  ) = __$$BreedsStateImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({
    BreedsStatus status,
    List<CatBreed> breeds,
    bool hasReachedMax,
    String errorMessage,
    bool isLoadingMore,
    String searchQuery,
  });
}

/// @nodoc
class __$$BreedsStateImplCopyWithImpl<$Res>
    extends _$BreedsStateCopyWithImpl<$Res, _$BreedsStateImpl>
    implements _$$BreedsStateImplCopyWith<$Res> {
  __$$BreedsStateImplCopyWithImpl(
    _$BreedsStateImpl _value,
    $Res Function(_$BreedsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BreedsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? breeds = null,
    Object? hasReachedMax = null,
    Object? errorMessage = null,
    Object? isLoadingMore = null,
    Object? searchQuery = null,
  }) {
    return _then(
      _$BreedsStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as BreedsStatus,
        breeds: null == breeds
            ? _value._breeds
            : breeds // ignore: cast_nullable_to_non_nullable
                  as List<CatBreed>,
        hasReachedMax: null == hasReachedMax
            ? _value.hasReachedMax
            : hasReachedMax // ignore: cast_nullable_to_non_nullable
                  as bool,
        errorMessage: null == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String,
        isLoadingMore: null == isLoadingMore
            ? _value.isLoadingMore
            : isLoadingMore // ignore: cast_nullable_to_non_nullable
                  as bool,
        searchQuery: null == searchQuery
            ? _value.searchQuery
            : searchQuery // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$BreedsStateImpl implements _BreedsState {
  const _$BreedsStateImpl({
    this.status = BreedsStatus.initial,
    final List<CatBreed> breeds = const [],
    this.hasReachedMax = false,
    this.errorMessage = '',
    this.isLoadingMore = false,
    this.searchQuery = '',
  }) : _breeds = breeds;

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
  String toString() {
    return 'BreedsState(status: $status, breeds: $breeds, hasReachedMax: $hasReachedMax, errorMessage: $errorMessage, isLoadingMore: $isLoadingMore, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreedsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._breeds, _breeds) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_breeds),
    hasReachedMax,
    errorMessage,
    isLoadingMore,
    searchQuery,
  );

  /// Create a copy of BreedsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BreedsStateImplCopyWith<_$BreedsStateImpl> get copyWith =>
      __$$BreedsStateImplCopyWithImpl<_$BreedsStateImpl>(this, _$identity);
}

abstract class _BreedsState implements BreedsState {
  const factory _BreedsState({
    final BreedsStatus status,
    final List<CatBreed> breeds,
    final bool hasReachedMax,
    final String errorMessage,
    final bool isLoadingMore,
    final String searchQuery,
  }) = _$BreedsStateImpl;

  @override
  BreedsStatus get status;

  @override
  List<CatBreed> get breeds;

  @override
  bool get hasReachedMax;

  @override
  String get errorMessage;

  @override
  bool get isLoadingMore;

  @override
  String get searchQuery;

  /// Create a copy of BreedsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BreedsStateImplCopyWith<_$BreedsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
