import 'package:flutter/material.dart';

class newHotPage extends StatefulWidget {
  const newHotPage({super.key});

  @override
  State<newHotPage> createState() => _newHotPageState();
}

class _newHotPageState extends State<newHotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       body: Center(
        child: Text("newhot",style: TextStyle(color: Colors.white),),
      ),

    );
  }
}