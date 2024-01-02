// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_ui/api/api.dart';
import 'package:netflix_ui/widgets/custom_slider.dart';

class MyNetflixPage extends StatefulWidget {
  const MyNetflixPage({Key? key}) : super(key: key);

  @override
  State<MyNetflixPage> createState() => _MyNetflixPageState();
}

class _MyNetflixPageState extends State<MyNetflixPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("My Netflix"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png',
              ),
            ),
            SizedBox(height: 10),
            Text(
              "alto",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: const [
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  leading: CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Icon(Icons.notifications),
                  ),
                  title: Text("Notifications"),
                  trailing: Icon(Icons.chevron_right, color: Colors.white),
                ),
                SizedBox(height: 10),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.download, color: Colors.white),
                  ),
                  title: Text("Downloads"),
                  trailing: Icon(Icons.chevron_right),
                ),
              ],
            ),

            CustomSlider(title: "Picked For You", sliderList: popularMoviesList)

          ],
        ),
      ),
    );
  }
}
