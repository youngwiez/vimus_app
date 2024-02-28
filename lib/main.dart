/// Import resource yang diperlukan
import 'package:flutter/material.dart';
import 'pages/video_page.dart';
import 'pages/music_page.dart';
import 'pages/playlist_page.dart';
import 'pages/account_page.dart';

void main() {
  runApp(const VimusApp());
}

/// Class untuk Navbar
class VimusApp extends StatelessWidget {
  const VimusApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Navbar(),
    );
  }
}

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

/// Redirect tiap Navbar
class _NavbarState extends State<Navbar> {
  int currentPageIndex = 0;
  final screens = [
    VideoPage(),
    MusicPage(),
    PlaylistPage(),
    AccountPage(),
  ];

/// Mengatur tampilan Navbar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        animationDuration: Duration(seconds: 1),
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.greenAccent,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          /// Navbar Video
          NavigationDestination(
            selectedIcon: Icon(Icons.video_collection_rounded),
            icon: Icon(Icons.video_collection_outlined),
            label: 'Videos',
          ),

          /// Navbar Musik
          NavigationDestination(
            selectedIcon: Icon(Icons.music_note_rounded),
            icon: Icon(Icons.music_note_outlined),
            label: 'Music',
          ),

          /// Navbar Playlist
          NavigationDestination(
            selectedIcon: Icon(Icons.library_music_rounded),
            icon: Icon(Icons.library_music_outlined),
            label: 'Playlist',
          ),

          /// Navbar Akun
          NavigationDestination(
            selectedIcon: Icon(Icons.account_circle_rounded),
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}