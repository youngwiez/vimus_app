import 'package:flutter/material.dart';
import 'package:vimus/components/vimus_drawer.dart';

/// Class halaman akun
class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Content(),
    );
  }
}

/// Class konten halaman akun
class Content extends StatefulWidget {
  const Content({Key? key}) : super(key: key);

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          /// Button share
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share_rounded),
            color: Colors.black,
          ),
        ],
      ),
      drawer: VimusDrawer(),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      /// Profile picture
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('images/profile_pict.jpg'),
                      ),

                      /// Ikon edit foto profil
                      InkWell(
                        onTap: () {},
                        child: const CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.greenAccent,
                          child: Icon(Icons.edit_rounded,
                            size: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),

                  /// Nama akun
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      'Raka Wisesa',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  /// Username
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                          child: Text(
                            '@youngwiez',
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
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Jumlah Videos
                      Column(
                        children: [
                          Text(
                            '20',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Videos',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: Colors.grey,
                            ),
                          ),

                        ],
                      ),

                      /// Jumlah Playlist
                      Column(
                        children: [
                          Text(
                            '10',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Playlists',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: Colors.grey,
                            ),
                          ),
                        ],
                      ),

                      /// Jumlah following
                      Column(
                        children: [
                          Text(
                            '899',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Following',
                            style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: Colors.grey,
                            ),
                          ),

                        ],
                      ),

                      /// Jumlah followers
                      Column(
                        children: [
                          Text(
                            '1,066',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Followers',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  /// Button edit profil
                  Column(
                    children: <Widget>[
                      FilledButton(
                        onPressed: () {},
                        child: const Text('Edit Profile'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          
        ],
      ),
    );
  }
}