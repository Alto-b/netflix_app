
// ignore_for_file: must_be_immutable

import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_ui/Screens/details_page.dart';
import 'package:netflix_ui/constant.dart';

class CustomSlider1 extends StatefulWidget {
   CustomSlider1({
    super.key,required this.title,required this.sliderList
  });
  String title;
  List<Map<String,dynamic>> sliderList;

  @override
  State<CustomSlider1> createState() => _CustomSlider1State();
}

class _CustomSlider1State extends State<CustomSlider1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40,),
        SizedBox(
  child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text(widget.title, style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.w800)),
            const SizedBox(height: 10,),
          SizedBox(
             height: 200,
             width: double.infinity,
             child: ListView.builder(
               scrollDirection: Axis.horizontal,
               physics: const BouncingScrollPhysics(),
              //  itemCount: widget.sliderList.length,
              itemCount: 10,
               itemBuilder: (context,index){
                 return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(
                      image: imagePath+widget.sliderList[index]['backdrop_path'],
                      title: widget.sliderList[index]['title'],
                      details: widget.sliderList[index]['overview'],
                    ),));
                  },
                   child: Padding(
                     padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                     child: Stack(
                       children: [
                         Row(
                           children: [
                            SizedBox(width: 30,),
                             ClipRRect(
                               borderRadius: BorderRadius.circular(8),
                               child: SizedBox(
                                 height: 200,
                                 width: 150,
                                 child: Image.network(
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.cover,
                                  imagePath+widget.sliderList[index]['poster_path']
                                 ),
                               ),
                             ),
                           ],
                         ),
                         Positioned(
                          bottom: -10,left: -1,
                          child: BorderedText(
                            strokeWidth: 3,
                            strokeColor: Colors.white,
                            child: Text("${index+1}",
                              style: const TextStyle(
                                color: Colors.black87,
                                decoration: TextDecoration.none,
                                fontSize: 90,
                                fontWeight: FontWeight.w800,
                                letterSpacing: -20 ),)))
                       ],
                     ),
                   ),
                 );
               }),
            ),
        ],
  )
        ),
      ],
    );
  }
}
