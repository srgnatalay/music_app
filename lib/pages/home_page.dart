import 'package:flutter/material.dart';
import 'package:music_app/models/playlist_model.dart';
import 'package:music_app/models/song_model.dart';
import 'package:music_app/widgets/custom_appbar.dart';
import 'package:music_app/widgets/custom_navbar.dart';
import 'package:music_app/widgets/playlist_card.dart';
import 'package:music_app/widgets/search_music.dart';
import 'package:music_app/widgets/section_header.dart';
import 'package:music_app/widgets/song_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Song> songs = Song.songs;
    List<Playlist> playList = Playlist.playList;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple.shade800.withOpacity(.8),
              Colors.deepPurple.shade200.withOpacity(.8),
            ],),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const CustomAppbar(),
        bottomNavigationBar: const CustomNavbar(),
        body: SingleChildScrollView(
          child: Column(children: [
            const SearchMusic(),
            TrendingMusic(songs: songs),
            Padding(
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
            ),
          ]),
        ),
      ),
    );
  }
}

class TrendingMusic extends StatelessWidget {
  const TrendingMusic({
    super.key,
    required this.songs,
  });

  final List<Song> songs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 20,
        bottom: 20,
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: SectionHeader(title: "Popüler Müzikler"),
          ),
          const SizedBox(height: 20),
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
