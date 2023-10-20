import 'package:eds_test/data/services/api_service.dart';
import 'package:eds_test/presentation/post_detail_page/widgets/custom_text_field.dart';
import 'package:eds_test/utils/theme/app_colors.dart';
import 'package:eds_test/utils/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class AddNewCommentDialogWidget extends StatefulWidget {
  const AddNewCommentDialogWidget({
    super.key,
  });

  @override
  State<AddNewCommentDialogWidget> createState() => _AddNewCommentDialogWidgetState();
}

class _AddNewCommentDialogWidgetState extends State<AddNewCommentDialogWidget> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.zero,
      scrollable: true,
      title: Text(
        'Add new comment',
        style: AppTextStyles.title.copyWith(
          color: AppColors.black,
        ),
      ),
      content: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.45,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextField(
                  controller: _nameController,
                  prefixIcon: const Icon(Icons.person),
                  hintText: 'Name',
                  validatorMessage: 'Name cannot be empty',
                ),
                CustomTextField(
                  controller: _emailController,
                  prefixIcon: const Icon(Icons.email),
                  hintText: 'E-mail',
                  validatorMessage: 'Email cannot be empty',
                ),
                CustomTextField(
                  controller: _commentController,
                  prefixIcon: const Icon(Icons.message),
                  hintText: 'Comment',
                  validatorMessage: 'Comment cannot be empty',
                ),
              ],
            ),
          ),
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: Text(
            'Submit',
            style: AppTextStyles.title.copyWith(
              color: AppColors.gray,
            ),
          ),
          style: TextButton.styleFrom(
            foregroundColor: AppColors.gray,
          ),
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              // Если все проверки прошли

              ApiService.sendComment(
                name: _nameController.text,
                email: _emailController.text,
                body: _commentController.text,
              );

              _clearAllTextFields();
              Navigator.of(context).pop();
            }
          },
        ),
      ],
    );
  }

  void _clearAllTextFields() {
    _nameController.clear();
    _emailController.clear();
    _commentController.clear();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _commentController.dispose();
    super.dispose();
  }
}
