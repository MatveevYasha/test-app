import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: CircularProgressIndicator(
          color: AppColors.gray,
        ),
      ),
    );
  }
}
