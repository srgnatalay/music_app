import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:music_app/models/playlist_model.dart';
import 'package:music_app/utils/config.dart';

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
            padding: Config.paddingTopS,
            child: Text(
              "${index + 1}",
              style: Config.playlistIndex(context),
            ),
          ),
          title: Text(
            playList.songs[index].title,
            style: Config.playlistIndexTitle(context),
          ),
          subtitle: Text(
            playList.songs[index].description,
            style: Config.playlistIndexDescription(context),
          ),
          trailing: const Icon(
            FluentIcons.more_vertical_20_filled,
            color: Config.secondaryColor,
          ),
        );
      },
    );
  }
}
