import 'package:flutter/material.dart';
import 'package:netflix_ui/widgets/grid_view_games.dart';

class GamesPage extends StatefulWidget {
  const GamesPage({super.key});

  @override
  State<GamesPage> createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Search Movies"),
      ),

      body:  SingleChildScrollView(
        child: Column(
          children: [
              Container(color: Colors.grey.shade700,width: double.infinity,
                child:TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.white), 
                    suffixIcon: Icon(Icons.mic, color: Colors.white),   
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),      
                    ),
                    hintText: "Search movies, shows, tv...",    
                  ),
                ),
              ),
            SizedBox(height: 20,),
        SizedBox(
          height: 800,
          child: CustomGridView())
          ],
        ),
      ),

    );
  }
}