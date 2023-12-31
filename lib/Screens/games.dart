import 'package:flutter/material.dart';

class gamesPage extends StatefulWidget {
  const gamesPage({super.key});

  @override
  State<gamesPage> createState() => _gamesPageState();
}

class _gamesPageState extends State<gamesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Text("games",style: TextStyle(color: Colors.white),),
      ),
    );
  }
}