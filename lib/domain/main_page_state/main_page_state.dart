import 'package:eds_test/data/models/user_model.dart';
import 'package:eds_test/data/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main_page_state.freezed.dart';

part 'main_page_state.g.dart';

@riverpod
class MainPageState extends _$MainPageState {
  @override
  MainPageStateData build() {
    getAllUsers();

    return const MainPageStateData(users: []);
  }

  Future<void> getAllUsers() async {
    try {
      final result = await ApiService.getAllUsers();

      state = state.copyWith(users: result, isLoading: false);
    } on Exception catch (e) {
      debugPrint('Exception: $e');

      state = state.copyWith(hasLoadingError: true, isLoading: false);
    }
  }
}

@freezed
class MainPageStateData with _$MainPageStateData {
  const factory MainPageStateData({
    required List<UserModel> users,
    @Default(false) bool hasLoadingError,
    @Default(true) bool isLoading,
  }) = _MainPageStateData;
}
