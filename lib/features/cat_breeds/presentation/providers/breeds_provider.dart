import 'package:cat_breeds/core/error/api_failure.dart';
import 'package:cat_breeds/di/dependency_injector.dart';
import 'package:cat_breeds/features/cat_breeds/domain/entities/cat_breed.dart';
import 'package:cat_breeds/features/cat_breeds/domain/usecases/get_cat_breeds_use_case.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/providers/state/breeds_state.dart';
import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'breeds_provider.g.dart';

@riverpod
class BreedsNotifier extends _$BreedsNotifier {
  late final GetCatBreedsUseCase _getCatBreedsUseCase;

  @override
  BreedsState build() {
    _getCatBreedsUseCase = getIt<GetCatBreedsUseCase>();
    // Trigger initial load
    Future<void>.microtask(() => getBreeds());
    return const BreedsState();
  }

  Future<void> getBreeds() async {
    if (state.isLoadingMore || state.hasReachedMax) return;

    if (state.status == BreedsStatus.initial) {
      state = state.copyWith(status: BreedsStatus.loading);
    } else {
      state = state.copyWith(isLoadingMore: true);
    }

    final Either<ApiFailure, List<CatBreed>> result = await _getCatBreedsUseCase
        .execute();

    result.fold(
      (ApiFailure failure) {
        state = state.copyWith(
          status: BreedsStatus.error,
          errorMessage: _mapFailureToMessage(failure),
          isLoadingMore: false,
        );
      },
      (List<CatBreed> newBreeds) {
        final List<CatBreed> allBreeds = <CatBreed>[
          ...state.breeds,
          ...newBreeds,
        ];

        final bool isMax = newBreeds.isEmpty;

        state = state.copyWith(
          status: BreedsStatus.success,
          breeds: allBreeds,
          hasReachedMax: isMax || newBreeds.length < 5,
          isLoadingMore: false,
        );
      },
    );
  }

  void onSearchChanged(String query) {
    state = state.copyWith(searchQuery: query);
  }

  String _mapFailureToMessage(ApiFailure failure) {
    // You might want to map specific failures here if ApiFailure has types
    return "Something went wrong. Please try again.";
  }
}
