import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/models/song_model.dart';
import 'package:music_app/utils/config.dart';

class SongCard extends StatelessWidget {
  const SongCard({
    super.key,
    required this.songs,
  });

  final Song songs;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed("/song", arguments: songs);
      },
      child: Container(
        margin: Config.marginRight,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * .45,
              decoration: Config.songCardImageDec(songs.coverUrl),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * .39,
              margin: Config.marginBot,
              decoration: Config.songCardDescriptionDec(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        songs.title,
                        style: Config.songCardTitle(context),
                      ),
                      Text(
                        songs.description,
                        style: Config.songCardDescription(context),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
