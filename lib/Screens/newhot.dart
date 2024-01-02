import 'package:flutter/material.dart';

class NewHotPage extends StatefulWidget {
  const NewHotPage({super.key});

  @override
  State<NewHotPage> createState() => _NewHotPageState();
}
 
class _NewHotPageState extends State<NewHotPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("New & Hot"),
          actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.search))],

          bottom: TabBar(tabs: const[
            Tab(text: "🍿Coming Soon",),
            Tab(text: "🔥Everyone's Watching",)
          ],
          unselectedLabelColor: Colors.white,
          labelColor: Colors.white,
          indicatorColor: Colors.white,
          isScrollable: true,
          indicatorWeight: 1,
          indicatorSize: TabBarIndicatorSize.label,
          indicator: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(20)
          ),
          indicatorPadding: EdgeInsets.fromLTRB(-4, 8, -4, 8),
          ),
        ),
      ),  
    );
  }
}