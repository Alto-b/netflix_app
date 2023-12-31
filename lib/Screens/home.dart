import 'package:flutter/material.dart';
import 'package:netflix_ui/widgets/hometabbar.dart';

import '../widgets/homeAppBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return   DefaultTabController(
      length: 3,
      child: Scaffold(
    
        // appBar: PreferredSize(preferredSize:Size.fromRadius(20),child: homeappbar(),),
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading:Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Netflix-new-icon.png/800px-Netflix-new-icon.png'),
          actions: const[
            Icon(Icons.search)
          ],

        //tabbar
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: HomeTabBar(),),    
        ),

         body: Center(
          child: Text("home",style: TextStyle(color: Colors.white),),
        ),
    
      ),
    );
  }
}
