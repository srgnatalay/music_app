import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/pages/home_page.dart';
import 'package:music_app/pages/song_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme(),
        ),
        home: const HomePage(),
        getPages: [
          GetPage(name: "/", page: () => const HomePage()),
          GetPage(name: "/song", page: () => const SongPage()),
          // GetPage(name: "/playlist", page: () =>  const PlaylistPage()),
        ]);
  }
}
