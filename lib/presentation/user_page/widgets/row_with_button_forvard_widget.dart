import 'package:eds_test/data/models/user_model.dart';
import 'package:eds_test/domain/user_page_state/user_page_state.dart';
import 'package:eds_test/utils/theme/app_colors.dart';
import 'package:eds_test/utils/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class RowWithButtonForvardWidget extends StatelessWidget {
  final UserModel userModel;
  final UserPageStateData state;
  final String title;
  final double iconSize;
  final VoidCallback onPressed;

  const RowWithButtonForvardWidget({
    super.key,
    required this.userModel,
    required this.state,
    required this.title,
    required this.onPressed,
    this.iconSize = 30,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyles.bodyTextStyle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.chevron_right,
            size: iconSize,
            color: AppColors.black,
          ),
        ],
      ),
    );
  }
}
