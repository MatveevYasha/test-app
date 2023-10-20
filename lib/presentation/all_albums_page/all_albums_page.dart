import 'package:eds_test/presentation/shared_widgets/albums_list_widget.dart';
import 'package:flutter/material.dart';

import '../../data/models/album_model.dart';
import '../../data/models/user_model.dart';
import '../../utils/theme/app_colors.dart';
import '../../utils/theme/app_text_styles.dart';

class AllAlbumsPage extends StatelessWidget {
  final UserModel user;
  final List<AlbumModelWithPhotos> albums;

  const AllAlbumsPage({
    required this.user,
    required this.albums,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(user.username),
        centerTitle: true,
        titleTextStyle: AppTextStyles.title,
        backgroundColor: AppColors.gray,
      ),
      body: AlbumsListWidget(
        albums: albums,
      ),
    );
  }
}
