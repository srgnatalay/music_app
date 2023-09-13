import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/models/playlist_model.dart';
import 'package:music_app/utils/config.dart';

class PlayListCard extends StatelessWidget {
  const PlayListCard({
    super.key,
    required this.playList,
  });

  final Playlist playList;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed("/playlist", arguments: playList),
      child: Container(
        height: 75,
        margin: Config.marginBot,
        padding: Config.paddingHorizontal,
        decoration: Config.playlistCardDec(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                playList.imageUrl,
                height: 50,
                width: 50,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    playList.title,
                    style: Config.playlistTitle(context),
                  ),
                  Text(
                    "${playList.songs.length} şarkı",
                    maxLines: 2,
                    style: Config.playlistSongs(context),
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                FluentIcons.play_circle_20_regular,
                color: Config.secondaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
