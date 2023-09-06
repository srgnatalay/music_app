import 'package:music_app/models/song_model.dart';

class Playlist {
  final String title;
  final List<Song> songs;
  final String imageUrl;

  Playlist({
    required this.title,
    required this.songs,
    required this.imageUrl,
  });

  static List<Playlist> playList = [
    Playlist(
      title: "Hip-Hop R&B Mix",
      songs: Song.songs,
      imageUrl:
          "https://i.scdn.co/image/ab67706c0000da84036cd9c2b1b9fc9c2a110c0e",
    ),
    Playlist(
      title: "Rock",
      songs: Song.songs,
      imageUrl:
          "https://i.scdn.co/image/ab67616d00001e0235eeb40f2fa70b35d9c48ece",
    ),
    Playlist(
      title: "Türkçe İndie",
      songs: Song.songs,
      imageUrl:
          "https://i.scdn.co/image/ab67706c0000da84fda6d7778d755e0196adf24b",
    ),
  ];
}
