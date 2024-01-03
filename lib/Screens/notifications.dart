import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Notification"),
        actions: const [
          Icon(Icons.search),SizedBox(width: 15,),
          Icon(Icons.menu)
        ],
      ),

      body: Column(
        children: [
          ListTile(
            leading:Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAc90SkhrvGShpVLofZ7JElM7t-DNwDxgs5A&usqp=CAU') ,
            title:const Text("Now available"), 
            subtitle: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Season 6"),
                Text("3 Jan")
              ],
            ),
          onTap:() {},
          ),const SizedBox(height: 15,),
          ListTile(
            leading:Image.network('https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/S/pv-target-images/1164e922516197e11f7ffe862a9831ed02000718ba8efd05e6c747b2ae4788c2.jpg') ,
            title:const Text("New Arrival"), 
            subtitle: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Shaolin Soccer"),
                Text("16/12/2023")
              ],
            ),
            onTap:() {},
          ),const SizedBox(height: 15,),
          ListTile(
            leading:Image.network('https://m.media-amazon.com/images/M/MV5BOTAzODMxYzYtMmJiOC00NDRhLTgwMDYtMDdhZmMwNmVkZjk1XkEyXkFqcGdeQXVyMTQ3Mzk2MDg4._V1_.jpg') ,
            title:const Text("New Arrival"), 
            subtitle: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Japan"),
                Text("15/12/2023")
              ],
            ),
          onTap:() {},
          ),
        ],
      ),
    );
  }
}