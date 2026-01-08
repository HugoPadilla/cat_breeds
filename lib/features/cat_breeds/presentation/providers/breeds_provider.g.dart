// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breeds_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BreedsNotifier)
final breedsProvider = BreedsNotifierProvider._();

final class BreedsNotifierProvider
    extends $NotifierProvider<BreedsNotifier, BreedsState> {
  BreedsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'breedsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$breedsNotifierHash();

  @$internal
  @override
  BreedsNotifier create() => BreedsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BreedsState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BreedsState>(value),
    );
  }
}

String _$breedsNotifierHash() => r'738657b19a823cc4b0393a17933200e69324ad08';

abstract class _$BreedsNotifier extends $Notifier<BreedsState> {
  BreedsState build();

  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<BreedsState, BreedsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BreedsState, BreedsState>,
              BreedsState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
