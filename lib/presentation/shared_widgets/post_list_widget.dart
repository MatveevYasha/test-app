import 'package:eds_test/data/models/post_model.dart';
import 'package:eds_test/presentation/post_detail_page/post_detail_page.dart';
import 'package:eds_test/presentation/shared_widgets/post_card.dart';
import 'package:flutter/material.dart';

class PostListWidget extends StatelessWidget {
  final List<PostModel> posts;
  final bool isShortList;

  const PostListWidget({
    super.key,
    required this.posts,
    this.isShortList = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: (posts.length > 3 && isShortList) ? 3 : posts.length,
      shrinkWrap: true,
      physics: isShortList ? const NeverScrollableScrollPhysics() : null,
      separatorBuilder: (_, __) => const SizedBox(
        height: 16,
      ),
      itemBuilder: (context, index) {
        final post = posts[index];
        return GestureDetector(
          onTap: () {
            Navigator.push<void>(
              context,
              MaterialPageRoute(
                builder: (context) => PostDetailPage(
                  post: post,
                ),
              ),
            );
          },
          child: PostCard(
            post: post,
          ),
        );
      },
    );
  }
}
