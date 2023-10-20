import 'package:eds_test/data/models/album_model.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  final AlbumModelWithPhotos album;

  const AlbumCard({
    required this.album,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ExtendedImage.network(
          album.photos.first.thumbnailUrl,
          fit: BoxFit.cover,
          scale: 1.5,
          loadStateChanged: (state) {
            if (state.extendedImageLoadState == LoadState.failed) {
              return Center(
                child: Image.asset('assets/images/no_image.png'),
              );
            }
            return null;
          },
        ),
        Flexible(
          child: Container(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              album.title,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}
