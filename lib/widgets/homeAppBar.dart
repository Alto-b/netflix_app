import 'package:flutter/material.dart';

// ignore: camel_case_types
class homeappbar extends StatelessWidget {
  const homeappbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 50,
      backgroundColor: Colors.black,
      leading:Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Netflix-new-icon.png/800px-Netflix-new-icon.png'),
      actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.search))
      ],
    );
  }
}