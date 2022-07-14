// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'homepage.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: YoutubeHome(),
    debugShowCheckedModeBanner: false,
  ));
}

class YoutubeHome extends StatefulWidget {
  YoutubeHome({Key? key}) : super(key: key);

  @override
  State<YoutubeHome> createState() => _YoutubeHomeState();
}

class _YoutubeHomeState extends State<YoutubeHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 31, 31, 31),
        title: Container(
            width: 100,
            height: 100,
            child: Image(
              image: AssetImage(
                'assets/youtubeicon.png',
              ),
              fit: BoxFit.contain,
            )),
        actions: [
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.cast),
            tooltip: 'Cast from device',
            onPressed: () {},
          ),
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.notifications_outlined),
            tooltip: 'Notifications',
            onPressed: () {},
          ),
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.search_outlined),
            tooltip: 'search',
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 16,
              backgroundImage: NetworkImage(
                'https://pbs.twimg.com/profile_images/1308872181590286336/Nnwldwpn_400x400.jpg',
              ),
            ),
          )
        ],
      ),
      body: VideoFeed(),
      backgroundColor: Color.fromARGB(255, 31, 31, 31),
      bottomNavigationBar:
          BottomNavigationBar(showUnselectedLabels: true, items: [
        BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 31, 31, 31),
            icon: Icon(Icons.home_filled),
            label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(Icons.videocam_outlined),
          label: "Shorts",
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline,
            ),
            label: "Create"),
        BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined), label: "Subscriptions"),
        BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined), label: "Library"),
      ]),
    );
  }
}
