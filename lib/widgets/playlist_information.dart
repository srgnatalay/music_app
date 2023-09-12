import 'package:flutter/material.dart';
import 'package:music_app/models/playlist_model.dart';

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
        const SizedBox(height: 30),
        Text(
          playList.title,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
