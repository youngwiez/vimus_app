/// Import resource yang diperlukan
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vimus/components/vimus_drawer.dart';

/// Class halaman video
class VideoPage extends StatelessWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const Content(),
    );
  }
}

/// Class konten halaman video
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
          /// Row memberi judul Trending Today
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                child: Text(
                  'Trending Today',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),

          /// Container carousel video
          Container(
            height: height * 0.2,
            width: width,
            child: CarouselSlider(
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            'Video Title $i',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                pauseAutoPlayOnTouch: true,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {},
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),

          /// Row memberi judul Viral Reels
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                child: Text(
                  'Viral Reels',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),

          /// Container carousel reels
          Container(
            height: height * 0.3,
            width: width,
            child: CarouselSlider(
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text('Reels $i', style: TextStyle(fontSize: 16.0)),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 4),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: true,
                enlargeCenterPage: false,
                onPageChanged: (index, reason) {},
                scrollDirection: Axis.horizontal,
                aspectRatio: 1.0,
                viewportFraction: 0.3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}