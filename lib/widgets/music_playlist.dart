import 'package:flutter/material.dart';
import 'package:music_app/models/playlist_model.dart';
import 'package:music_app/utils/config.dart';
import 'package:music_app/widgets/playlist_card.dart';
import 'package:music_app/widgets/section_header.dart';

class PlaylistMusic extends StatelessWidget {
  const PlaylistMusic({
    super.key,
    required this.playList,
  });

  final List<Playlist> playList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Config.paddingAll,
      child: Column(
        children: [
          const SectionHeader(title: "Çalma Listesi"),
          ListView.builder(
            padding: Config.paddingTopM,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: playList.length,
            itemBuilder: (context, index) {
              return PlayListCard(playList: playList[index]);
            },
          ),
        ],
      ),
    );
  }
}
