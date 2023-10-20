import 'package:eds_test/data/models/post_model.dart';
import 'package:eds_test/utils/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class PostMainInfoWidget extends StatelessWidget {
  final PostModel post;

  const PostMainInfoWidget({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          post.title,
          style: AppTextStyles.title.copyWith(
            color: Colors.black,
          ),
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 8),
        Text(
          post.body,
          style: AppTextStyles.bodyTextStyle.copyWith(
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'Comments:',
          style: AppTextStyles.title.copyWith(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
