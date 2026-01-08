import 'package:cat_breeds/features/cat_breeds/domain/entities/cat_breed.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'breeds_state.freezed.dart';

enum BreedsStatus { initial, loading, success, error }

@freezed
abstract class BreedsState with _$BreedsState {
  const factory BreedsState({
    @Default(BreedsStatus.initial) BreedsStatus status,
    @Default([]) List<CatBreed> breeds,
    @Default(false) bool hasReachedMax,
    @Default('') String errorMessage,
    @Default(false) bool isLoadingMore,
    @Default('') String searchQuery,
    @Default(0) int page,
  }) = _BreedsState;
}
