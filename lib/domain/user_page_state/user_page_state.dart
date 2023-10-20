import 'package:eds_test/data/models/album_model.dart';
import 'package:eds_test/data/models/post_model.dart';
import 'package:eds_test/data/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_page_state.freezed.dart';

part 'user_page_state.g.dart';

@riverpod
class UserPageState extends _$UserPageState {
  @override
  UserPageStateData build(int userId) {
    getAllPosts(userId);
    getAllAlbums(userId);

    return const UserPageStateData(
      posts: [],
      albums: [],
    );
  }

  Future<void> getAllPosts(int userId) async {
    try {
      final posts = await ApiService.getPostsByUserId(userId);

      state = state.copyWith(posts: posts);
    } on Exception catch (e) {
      debugPrint('Exception: $e');

      state = state.copyWith(hasLoadingError: true, isLoading: false);
    }
  }

  Future<void> getAllAlbums(int userId) async {
    try {
      final albums = await ApiService.getAlbumsByUserIdWithPhotos(userId);

      state = state.copyWith(albums: albums, isLoading: false);
    } on Exception catch (e) {
      debugPrint('Exception: $e');

      state = state.copyWith(hasLoadingError: true, isLoading: false);
    }
  }
}

@freezed
class UserPageStateData with _$UserPageStateData {
  const factory UserPageStateData({
    required List<PostModel> posts,
    required List<AlbumModelWithPhotos> albums,
    @Default(false) bool hasLoadingError,
    @Default(true) bool isLoading,
  }) = _UserPageStateData;
}
