import 'package:eds_test/domain/main_page_state/main_page_state.dart';
import 'package:eds_test/presentation/theme/app_colors.dart';
import 'package:eds_test/presentation/theme/app_text_styles.dart';
import 'package:eds_test/presentation/user_page/user_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../shared_widgets/loader.dart';
import 'widgets/user_card_widget.dart';

class MainPage extends ConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(mainPageStateProvider);

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
        title: const Text('All Users'),
        centerTitle: true,
        titleTextStyle: AppTextStyles.title,
        backgroundColor: AppColors.gray,
      ),
      body: SafeArea(
        child: Scrollbar(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: state.users?.length ?? 0,
            itemBuilder: (context, index) {
              final user = state.users![index];
              return InkWell(
                onTap: () {
                  // TODO: заменить навигацию
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserPage(
                        userModel: user,
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(top: (index == 0) ? 12 : 6, bottom: 6),
                  child: UserCardWidget(
                    user: user,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
