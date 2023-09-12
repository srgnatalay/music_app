import 'package:flutter/material.dart';
import 'package:music_app/models/playlist_model.dart';
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
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const SectionHeader(title: "Çalma Listesi"),
          ListView.builder(
            padding: const EdgeInsets.only(top: 20),
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
