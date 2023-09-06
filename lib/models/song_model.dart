class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song(
      {required this.title,
      required this.description,
      required this.url,
      required this.coverUrl});

  static List<Song> songs = [
    Song(
      title: "Dolu Kadehi Ters Tut",
      description: "Hiç İyi Değilim",
      url: "assets/music/dktt.mp3",
      coverUrl: "assets/images/dktt.png",
    ),
    Song(
      title: "Madrigal",
      description: "Geçme Artık Sokağımdan",
      url: "assets/music/madrigal.mp3",
      coverUrl: "assets/images/madrigal.png",
    ),
    Song(
      title: "Son Feci Bisiklet",
      description: "Moden Zamanlar",
      url: "assets/music/sonfecibisiklet.mp3",
      coverUrl: "assets/images/sonfecibisiklet.png",
    ),
  ];
}
