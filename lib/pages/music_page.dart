/// Import resource yang diperlukan
import 'package:flutter/material.dart';
import 'package:vimus/components/vimus_drawer.dart';
import 'package:vimus/components/neu_box.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

/// Class halaman music
class MusicPage extends StatelessWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Content(),
    );
  }
}

/// Class konten halaman music
class Content extends StatefulWidget {
  const Content({Key? key}) : super(key: key);

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {

  /// Mengatur tampilan judul Vimus
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Vimus',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      drawer: VimusDrawer(),
      body: Column(
        children: [
          /// Mengatur tampilan ikon lagu/album
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: NeuBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('images/music_cover_2.png'),
                    ),
                  ],
                ),
              ),
            ),
          ),

          /// Row tempat tampil judul lagu dan penyanyinya
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
                  child: Column(
                    children: [
                      Text(
                        'Just the Way You Are',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5), // Jarak antara judul dan nama artis
                      Text(
                        'Bruno Mars',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),

          /// Column tempat slider durasi musik
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: ProgressBar(
                  progress: Duration(seconds: 50),
                  total: Duration(seconds: 220),
                  onSeek: (duration) {
                    print('User selected a new time: $duration');
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}