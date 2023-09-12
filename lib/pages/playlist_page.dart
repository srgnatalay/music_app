import 'package:flutter/material.dart';
import 'package:music_app/models/playlist_model.dart';
import 'package:music_app/widgets/custom_navbar.dart';
import 'package:music_app/widgets/play_or_shuffle_switch.dart';
import 'package:music_app/widgets/playlist_information.dart';
import 'package:music_app/widgets/playlist_songs.dart';

class PlaylistPage extends StatefulWidget {
  const PlaylistPage({super.key});

  @override
  State<PlaylistPage> createState() => _PlaylistPageState();
}

class _PlaylistPageState extends State<PlaylistPage> {
  @override
  Widget build(BuildContext context) {
    Playlist playList = Playlist.playList[0];

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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text("Çalma Listesi"),
          centerTitle: true,
        ),
        bottomNavigationBar: const CustomNavbar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                PlaylistInformation(playList: playList),
                const SizedBox(height: 30),
                const PlayOrShuffleSwitch(),
                PlaylistSongs(playList: playList)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
