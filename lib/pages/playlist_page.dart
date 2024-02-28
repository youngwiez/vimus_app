/// Import resource yang diperlukan
import 'package:flutter/material.dart';
import 'package:vimus/components/vimus_drawer.dart';

/// Class halaman playlist
class PlaylistPage extends StatelessWidget {
  const PlaylistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const Content(),
    );
  }
}

/// Class konten halaman playlist
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
        children: <Widget>[
          /// Row memberi judul Your Playlist
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                child: Text(
                  'Your Playlist',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                /// Card playlist 1
                Card(
                  child: ListTile(
                    leading: Icon(Icons.play_arrow_rounded, size: 72.0),
                    title: Text('Playlist #1'),
                    subtitle:
                    Text('Created by You'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  ),
                ),

                /// Card playlist 2
                Card(
                  child: ListTile(
                    leading: Icon(Icons.play_arrow_rounded, size: 72.0),
                    title: Text('Playlist #2'),
                    subtitle:
                    Text('Created by You'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  ),
                ),

                /// Row memberi keterangan Show More
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                        child: Text(
                          'Show More',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                /// Row memberi judul Made For You
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                      child: Text(
                        'Made For You',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}