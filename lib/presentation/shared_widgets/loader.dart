import 'package:flutter/material.dart';

import '../../utils/theme/app_colors.dart';

// TODO: Убрать комментарий: смотрел
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
