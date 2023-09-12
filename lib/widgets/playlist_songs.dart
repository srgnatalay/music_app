import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:music_app/models/playlist_model.dart';

class PlaylistSongs extends StatelessWidget {
  const PlaylistSongs({
    super.key,
    required this.playList,
  });

  final Playlist playList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: playList.songs.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "${index + 1}",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
            ),
          ),
          title: Text(
            playList.songs[index].title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
          ),
          subtitle: Text(
            playList.songs[index].description,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
          trailing: const Icon(
            FluentIcons.more_vertical_20_filled,
            color: Colors.white,
          ),
        );
      },
    );
  }
}
