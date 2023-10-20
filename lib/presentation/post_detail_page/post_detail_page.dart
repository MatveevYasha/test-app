import 'package:eds_test/data/models/post_model.dart';
import 'package:eds_test/domain/post_detail_page_state/post_detail_page_state.dart';
import 'package:eds_test/presentation/post_detail_page/widgets/add_new_comment_dialog_widget.dart';
import 'package:eds_test/presentation/post_detail_page/widgets/post_main_info_widget.dart';
import 'package:eds_test/presentation/shared_widgets/comment_card.dart';
import 'package:eds_test/presentation/shared_widgets/loader.dart';
import 'package:eds_test/utils/theme/app_colors.dart';
import 'package:eds_test/utils/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostDetailPage extends ConsumerWidget {
  final PostModel post;

  const PostDetailPage({
    required this.post,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(postDetailPageStateProvider(post.id));

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
      appBar: AppBar(
        title: Text(post.title),
        centerTitle: true,
        titleTextStyle: AppTextStyles.title,
        backgroundColor: AppColors.gray,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          PostMainInfoWidget(
            post: post,
          ),
          const SizedBox(
            height: 8,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final comment = state.comments[index];
              return CommentCard(
                username: comment.name,
                comment: comment.body,
                email: comment.email,
              );
            },
            itemCount: state.comments.length,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.gray,
        child: const Icon(
          Icons.add,
        ),
        onPressed: () => _displayDialog(context),
      ),
    );
  }

  Future<void> _displayDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return const AddNewCommentDialogWidget();
      },
    );
  }
}
