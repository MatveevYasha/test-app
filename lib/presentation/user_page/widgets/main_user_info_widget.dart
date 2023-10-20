import 'package:eds_test/data/models/user_model.dart';
import 'package:eds_test/utils/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class MainUserInfoWidget extends StatelessWidget {
  final UserModel userModel;

  const MainUserInfoWidget({
    super.key,
    required this.userModel,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: AppTextStyles.bodyTextStyle,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Main User Info',
            style: AppTextStyles.bodyTextStyle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Name: ${userModel.name}',
          ),
          const SizedBox(height: 8),
          Text(
            'Email: ${userModel.email}',
          ),
          const SizedBox(height: 8),
          Text(
            'Phone: ${userModel.phone}',
          ),
          const SizedBox(height: 8),
          Text(
            'Website: ${userModel.website}',
          ),
          const SizedBox(height: 16),
          Text(
            'Working Company',
            style: AppTextStyles.bodyTextStyle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Name: ${userModel.company.name}',
          ),
          const SizedBox(height: 8),
          Text(
            'BS: ${userModel.company.bs}',
          ),
          const SizedBox(height: 8),
          Text(
            "Catch phase: '${userModel.company.catchPhrase}'",
          ),
          const SizedBox(height: 16),
          Text(
            'Address',
            style: AppTextStyles.bodyTextStyle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'City: ${userModel.address.city}',
          ),
          const SizedBox(height: 8),
          Text(
            'Street: ${userModel.address.street}',
          ),
        ],
      ),
    );
  }
}
