// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_page_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userPageStateHash() => r'8b399bc27f38c6edcec099ded42297386d98756f';

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

abstract class _$UserPageState
    extends BuildlessAutoDisposeNotifier<UserPageStateData> {
  late final int userId;

  UserPageStateData build(
    int userId,
  );
}

/// See also [UserPageState].
@ProviderFor(UserPageState)
const userPageStateProvider = UserPageStateFamily();

/// See also [UserPageState].
class UserPageStateFamily extends Family<UserPageStateData> {
  /// See also [UserPageState].
  const UserPageStateFamily();

  /// See also [UserPageState].
  UserPageStateProvider call(
    int userId,
  ) {
    return UserPageStateProvider(
      userId,
    );
  }

  @override
  UserPageStateProvider getProviderOverride(
    covariant UserPageStateProvider provider,
  ) {
    return call(
      provider.userId,
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
  String? get name => r'userPageStateProvider';
}

/// See also [UserPageState].
class UserPageStateProvider
    extends AutoDisposeNotifierProviderImpl<UserPageState, UserPageStateData> {
  /// See also [UserPageState].
  UserPageStateProvider(
    int userId,
  ) : this._internal(
          () => UserPageState()..userId = userId,
          from: userPageStateProvider,
          name: r'userPageStateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userPageStateHash,
          dependencies: UserPageStateFamily._dependencies,
          allTransitiveDependencies:
              UserPageStateFamily._allTransitiveDependencies,
          userId: userId,
        );

  UserPageStateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final int userId;

  @override
  UserPageStateData runNotifierBuild(
    covariant UserPageState notifier,
  ) {
    return notifier.build(
      userId,
    );
  }

  @override
  Override overrideWith(UserPageState Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserPageStateProvider._internal(
        () => create()..userId = userId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<UserPageState, UserPageStateData>
      createElement() {
    return _UserPageStateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserPageStateProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UserPageStateRef on AutoDisposeNotifierProviderRef<UserPageStateData> {
  /// The parameter `userId` of this provider.
  int get userId;
}

class _UserPageStateProviderElement
    extends AutoDisposeNotifierProviderElement<UserPageState, UserPageStateData>
    with UserPageStateRef {
  _UserPageStateProviderElement(super.provider);

  @override
  int get userId => (origin as UserPageStateProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
