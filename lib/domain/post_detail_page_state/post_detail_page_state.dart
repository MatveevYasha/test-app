import 'package:eds_test/data/models/comment_model.dart';
import 'package:eds_test/data/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_detail_page_state.freezed.dart';

part 'post_detail_page_state.g.dart';

@riverpod
class PostDetailPageState extends _$PostDetailPageState {
  @override
  PostDetailPageStateData build(int postId) {
    getAllComments(postId);

    return const PostDetailPageStateData(
      comments: [],
    );
  }

  Future<void> getAllComments(int postId) async {
    try {
      final comments = await ApiService.getCommentsByPostId(postId);

      state = state.copyWith(comments: comments, isLoading: false);
    } on Exception catch (e) {
      debugPrint('Exception: $e');

      state = state.copyWith(hasLoadingError: true, isLoading: false);
    }
  }
}

@freezed
class PostDetailPageStateData with _$PostDetailPageStateData {
  const factory PostDetailPageStateData({
    required List<CommentModel> comments,
    @Default(false) bool hasLoadingError,
    @Default(true) bool isLoading,
  }) = _PostDetailPageStateData;
}
