import 'package:flutter/material.dart';

class myNetflixPage extends StatefulWidget {
  const myNetflixPage({super.key});

  @override
  State<myNetflixPage> createState() => _myNetflixPageState();
}

class _myNetflixPageState extends State<myNetflixPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       body: Center(
        child: Text("my netflix",style: TextStyle(color: Colors.white),),
      ),

    );
  }
}