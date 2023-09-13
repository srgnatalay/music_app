import 'package:flutter/material.dart';
import 'package:music_app/models/playlist_model.dart';
import 'package:music_app/utils/config.dart';

class PlaylistInformation extends StatelessWidget {
  const PlaylistInformation({
    super.key,
    required this.playList,
  });

  final Playlist playList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            playList.imageUrl,
            height: MediaQuery.of(context).size.height * .35,
            width: MediaQuery.of(context).size.width * .55,
            fit: BoxFit.cover,
          ),
        ),
        Config.heightLarge,
        Text(
          playList.title,
          style: Config.playlistInfoTitle(context),
        ),
      ],
    );
  }
}
