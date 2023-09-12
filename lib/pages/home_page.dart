import 'package:flutter/material.dart';
import 'package:music_app/models/playlist_model.dart';
import 'package:music_app/models/song_model.dart';
import 'package:music_app/widgets/custom_appbar.dart';
import 'package:music_app/widgets/custom_navbar.dart';
import 'package:music_app/widgets/music_playlist.dart';
import 'package:music_app/widgets/search_music.dart';
import 'package:music_app/widgets/trending_music.dart';

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
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const CustomAppbar(),
        bottomNavigationBar: const CustomNavbar(),
        body: SingleChildScrollView(
          child: Column(children: [
            const SearchMusic(),
            TrendingMusic(songs: songs),
            PlaylistMusic(playList: playList),
          ]),
        ),
      ),
    );
  }
}
