// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_detail_page_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postDetailPageStateHash() =>
    r'16a217cb731f2d81e3485328aaff9575f963d9f6';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$PostDetailPageState
    extends BuildlessAutoDisposeNotifier<PostDetailPageStateData> {
  late final int postId;

  PostDetailPageStateData build(
    int postId,
  );
}

/// See also [PostDetailPageState].
@ProviderFor(PostDetailPageState)
const postDetailPageStateProvider = PostDetailPageStateFamily();

/// See also [PostDetailPageState].
class PostDetailPageStateFamily extends Family<PostDetailPageStateData> {
  /// See also [PostDetailPageState].
  const PostDetailPageStateFamily();

  /// See also [PostDetailPageState].
  PostDetailPageStateProvider call(
    int postId,
  ) {
    return PostDetailPageStateProvider(
      postId,
    );
  }

  @override
  PostDetailPageStateProvider getProviderOverride(
    covariant PostDetailPageStateProvider provider,
  ) {
    return call(
      provider.postId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'postDetailPageStateProvider';
}

/// See also [PostDetailPageState].
class PostDetailPageStateProvider extends AutoDisposeNotifierProviderImpl<
    PostDetailPageState, PostDetailPageStateData> {
  /// See also [PostDetailPageState].
  PostDetailPageStateProvider(
    int postId,
  ) : this._internal(
          () => PostDetailPageState()..postId = postId,
          from: postDetailPageStateProvider,
          name: r'postDetailPageStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postDetailPageStateHash,
          dependencies: PostDetailPageStateFamily._dependencies,
          allTransitiveDependencies:
              PostDetailPageStateFamily._allTransitiveDependencies,
          postId: postId,
        );

  PostDetailPageStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.postId,
  }) : super.internal();

  final int postId;

  @override
  PostDetailPageStateData runNotifierBuild(
    covariant PostDetailPageState notifier,
  ) {
    return notifier.build(
      postId,
    );
  }

  @override
  Override overrideWith(PostDetailPageState Function() create) {
    return ProviderOverride(
      origin: this,
      override: PostDetailPageStateProvider._internal(
        () => create()..postId = postId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        postId: postId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<PostDetailPageState,
      PostDetailPageStateData> createElement() {
    return _PostDetailPageStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostDetailPageStateProvider && other.postId == postId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, postId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PostDetailPageStateRef
    on AutoDisposeNotifierProviderRef<PostDetailPageStateData> {
  /// The parameter `postId` of this provider.
  int get postId;
}

class _PostDetailPageStateProviderElement
    extends AutoDisposeNotifierProviderElement<PostDetailPageState,
        PostDetailPageStateData> with PostDetailPageStateRef {
  _PostDetailPageStateProviderElement(super.provider);

  @override
  int get postId => (origin as PostDetailPageStateProvider).postId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
