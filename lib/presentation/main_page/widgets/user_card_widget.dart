import 'package:eds_test/data/models/user_model.dart';
import 'package:eds_test/utils/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../utils/theme/app_colors.dart';

class UserCardWidget extends StatelessWidget {
  final UserModel user;

  const UserCardWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.gray,
      padding: const EdgeInsets.all(10),
      child: ListTile(
        horizontalTitleGap: 8,
        title: Text(
          user.username,
          style: AppTextStyles.title,
        ),
        subtitle: Text(
          user.name,
          style: AppTextStyles.subtitle,
        ),
        leading: const Icon(
          Icons.person,
          size: 32,
          color: AppColors.white,
        ),
      ),
    );
  }
}
