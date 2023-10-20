import 'package:eds_test/data/models/user_model.dart';
import 'package:eds_test/domain/user_page_state/user_page_state.dart';
import 'package:eds_test/presentation/all_albums_page/all_albums_page.dart';
import 'package:eds_test/presentation/all_posts_page/all_posts_page.dart';
import 'package:eds_test/presentation/shared_widgets/loader.dart';
import 'package:eds_test/presentation/shared_widgets/albums_list_widget.dart';
import 'package:eds_test/presentation/user_page/widgets/main_user_info_widget.dart';
import 'package:eds_test/presentation/shared_widgets/post_list_widget.dart';
import 'package:eds_test/presentation/user_page/widgets/row_with_button_forvard_widget.dart';
import 'package:eds_test/utils/theme/app_colors.dart';
import 'package:eds_test/utils/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserPage extends ConsumerWidget {
  final UserModel userModel;

  const UserPage({
    Key? key,
    required this.userModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(userPageStateProvider(userModel.id));

    if (state.isLoading) {
      return const Loader();
    }

    if (state.hasLoadingError) {
      return const Material(
        child: Center(
          child: Text('Произошла ошибка, перезагрузите страницу!'),
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(userModel.username),
        centerTitle: true,
        titleTextStyle: AppTextStyles.title,
        backgroundColor: AppColors.gray,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainUserInfoWidget(userModel: userModel),
            const SizedBox(height: 8),
            RowWithButtonForvardWidget(
              userModel: userModel,
              state: state,
              title: 'User Posts',
              onPressed: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AllPostsPage(
                      user: userModel,
                      posts: state.posts,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 8),
            PostListWidget(
              posts: state.posts,
              isShortList: true,
            ),
            RowWithButtonForvardWidget(
              userModel: userModel,
              state: state,
              title: 'User Albums',
              onPressed: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AllAlbumsPage(
                      user: userModel,
                      albums: state.albums,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 8),
            AlbumsListWidget(
              albums: state.albums,
              isShortList: true,
            ),
          ],
        ),
      ),
    );
  }
}
