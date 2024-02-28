import 'package:flutter/material.dart';
import 'package:vimus/components/vimus_drawer.dart';
import 'package:vimus/components/custom_button.dart';

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
                        radius: 60,
                        backgroundImage: AssetImage('images/profile_pict.jpg'),
                      ),

                      /// Ikon edit foto profil
                      InkWell(
                        onTap: () {},
                        child: const CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.greenAccent,
                          child: Icon(Icons.edit_rounded,
                            size: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),

                  /// Nama akun dan username
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      children: [
                        Text(
                          'Raka Wisesa',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5), // Spasi antara teks utama dan subtitle
                        Text(
                          '@youngwiez',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade800, // Mengatur warna abu-abu untuk subtitle
                          ),
                        ),
                      ],
                    ),
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
                            '829',
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
                            '1,060',
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
                  const SizedBox(height: 30),

                  /// Button edit profil
                  Column(
                    children: <Widget>[
                      ElevatedButton(
                        style: buttonPrimary,
                        onPressed: () {},
                        child: const Text('Edit Profile',
                          style: TextStyle(
                            fontSize: 15,
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
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}