import 'package:cat_breeds/features/cat_breeds/domain/entities/cat_breed.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/providers/breeds_provider.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/providers/state/breeds_state.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/screens/breed_detail_page.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/widgets/adaptive_retry_widget.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/widgets/cat_card.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/widgets/search_bar_molecule.dart';
import 'package:cat_breeds/features/cat_breeds/presentation/widgets/shimmer_list.dart';
import 'package:cat_breeds/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BreedsPage extends ConsumerStatefulWidget {
  const BreedsPage({super.key});

  @override
  ConsumerState<BreedsPage> createState() => _BreedsPageState();
}

class _BreedsPageState extends ConsumerState<BreedsPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      ref.read(breedsProvider.notifier).getBreeds();
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final double maxScroll = _scrollController.position.maxScrollExtent;
    final double currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.8);
  }

  @override
  Widget build(BuildContext context) {
    final BreedsState state = ref.watch(breedsProvider);
    final List<CatBreed> breeds = state.breeds;
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    // Local filtering for search
    final List<CatBreed> filteredBreeds = breeds.where((CatBreed breed) {
      return breed.name.toLowerCase().contains(state.searchQuery.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(title: Text(l10n.catBreedsTitle)),
      body: Column(
        children: <Widget>[
          SearchBarMolecule(
            onChanged: (String value) {
              ref.read(breedsProvider.notifier).onSearchChanged(value);
            },
          ),
          Expanded(
            child: Builder(
              builder: (BuildContext context) {
                if (state.status == BreedsStatus.loading && breeds.isEmpty) {
                  return const ShimmerList();
                }

                if (state.status == BreedsStatus.error && breeds.isEmpty) {
                  return AdaptiveRetryWidget(
                    message: state.errorMessage,
                    onRetry: () {
                      ref.read(breedsProvider.notifier).getBreeds();
                    },
                  );
                }

                if (breeds.isEmpty && state.status == BreedsStatus.success) {
                  return Center(child: Text(l10n.noBreedsFound));
                }

                // Show filtered results, but if filtering is active, infinite scroll might behave oddly
                // (usually search hits API). Assuming local filter for now.
                final List<CatBreed> listToShow = state.searchQuery.isNotEmpty
                    ? filteredBreeds
                    : breeds;

                return ListView.builder(
                  controller: _scrollController,
                  itemCount: listToShow.length + (state.isLoadingMore ? 1 : 0),
                  itemBuilder: (BuildContext context, int index) {
                    if (index >= listToShow.length) {
                      return const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                      );
                    }
                    final CatBreed breed = listToShow[index];
                    return CatCard(
                      breed: breed,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<dynamic>(
                            builder: (BuildContext context) =>
                                BreedDetailPage(breed: breed),
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
