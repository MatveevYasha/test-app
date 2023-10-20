import 'package:eds_test/data/models/album_model.dart';
import 'package:eds_test/presentation/album_detail_page/album_detail_page.dart';
import 'package:eds_test/presentation/shared_widgets/album_card.dart';
import 'package:flutter/material.dart';

class AlbumsListWidget extends StatelessWidget {
  final List<AlbumModelWithPhotos> albums;
  final bool isShortList;

  const AlbumsListWidget({
    super.key,
    required this.albums,
    this.isShortList = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: (albums.length > 3 && isShortList) ? 3 : albums.length,
      shrinkWrap: true,
      physics: isShortList ? const NeverScrollableScrollPhysics() : null,
      separatorBuilder: (_, __) => const SizedBox(
        height: 16,
      ),
      itemBuilder: (context, index) {
        final album = albums[index];
        return GestureDetector(
          onTap: () {
            Navigator.push<void>(
              context,
              MaterialPageRoute(
                builder: (context) => AlbumDetailPage(
                  album: album,
                ),
              ),
            );
          },
          child: AlbumCard(
            album: album,
          ),
        );
      },
    );
  }
}
