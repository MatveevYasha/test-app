import 'package:carousel_slider/carousel_slider.dart';
import 'package:eds_test/data/models/album_model.dart';
import 'package:eds_test/utils/theme/app_colors.dart';
import 'package:eds_test/utils/theme/app_text_styles.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class AlbumDetailPage extends StatelessWidget {
  final AlbumModelWithPhotos album;

  const AlbumDetailPage({
    required this.album,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(album.title),
        titleTextStyle: AppTextStyles.title,
        backgroundColor: AppColors.gray,
      ),
      body: Center(
        child: CarouselSlider.builder(
          itemCount: album.photos.length,
          itemBuilder: (context, index, _) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ExtendedImage.network(
                    album.photos[index].url,
                    fit: BoxFit.cover,
                    loadStateChanged: (state) {
                      if (state.extendedImageLoadState == LoadState.failed) {
                        return Center(
                          child: Image.asset('assets/images/no_image.png'),
                        );
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(album.photos[index].title),
                  ),
                ],
              ),
            );
          },
          options: CarouselOptions(
            height: MediaQuery.sizeOf(context).height * 0.5,
          ),
        ),
      ),
    );
  }
}
