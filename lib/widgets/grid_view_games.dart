
import 'package:flutter/material.dart';

class CustomGridView extends StatefulWidget {
  @override
  State<CustomGridView> createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: 10, // Set the number of items you want in the grid
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.blue, // Set the color of the container
          child: Center(
            child: Image.network(
              'https://t-mobile.scene7.com/is/image/Tmusprod/V2-4561136_netflix-hero_PHX-BG:HERO-tablet?fmt=png&qlt=85,0&resMode=sharp2&op_usm=1.75,0.3,2,0'
              )
          ),
        );
      },
    );
  }
}