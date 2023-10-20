import 'package:eds_test/presentation/shared_widgets/post_list_widget.dart';
import 'package:flutter/material.dart';

import '../../data/models/post_model.dart';
import '../../data/models/user_model.dart';
import '../../utils/theme/app_colors.dart';
import '../../utils/theme/app_text_styles.dart';

class AllPostsPage extends StatelessWidget {
  final UserModel user;
  final List<PostModel> posts;

  const AllPostsPage({
    required this.user,
    required this.posts,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(user.username),
        centerTitle: true,
        titleTextStyle: AppTextStyles.title,
        backgroundColor: AppColors.gray,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: PostListWidget(
          posts: posts,
        ),
      ),
    );
  }
}
