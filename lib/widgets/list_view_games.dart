import 'package:flutter/material.dart';
import 'package:netflix_ui/constant.dart';

class CustomListView extends StatefulWidget {
  CustomListView({
    super.key,
    required this.list,
  });

  List list;

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.list.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Image.network(
              imagePath + widget.list[index]['backdrop_path'],
              fit: BoxFit.cover,
            ),
            title: Text(widget.list[index]['title']),
            trailing: IconButton(
              icon: Icon(Icons.play_circle_outline),
              onPressed: () {
                // Handle play button click
              },
            ),
          ),
        );
      },
    );
  }
}
