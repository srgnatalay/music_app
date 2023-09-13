import 'package:flutter/material.dart';
import 'package:music_app/models/song_model.dart';
import 'package:music_app/utils/config.dart';
import 'package:music_app/widgets/section_header.dart';
import 'package:music_app/widgets/song_card.dart';

class TrendingMusic extends StatelessWidget {
  const TrendingMusic({
    super.key,
    required this.songs,
  });

  final List<Song> songs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Config.paddingTPL,
      child: Column(
        children: [
          const Padding(
            padding: Config.paddingRight,
            child: SectionHeader(title: "Popüler Müzikler"),
          ),
          Config.heightMedium20,
          SizedBox(
            height: MediaQuery.of(context).size.height * .27,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: songs.length,
              itemBuilder: (context, index) {
                return SongCard(songs: songs[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}
