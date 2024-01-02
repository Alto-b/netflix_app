import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_ui/api/api.dart';
import 'package:netflix_ui/widgets/custom_slider.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        // title: Text("Search Movies"),
        actions: [Icon(Icons.search)],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.amber
              ),
            ),
            Padding(
              padding:  EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text("title here",style: GoogleFonts.roboto(
                fontSize: 30,
                fontWeight: FontWeight.w600
              ),),
            ),
             Row(
              children: [
                const Text("2023",style: TextStyle(color: Colors.grey),),
                TextButton(onPressed: (){}, child: const Text("U/A 13+",style: TextStyle(backgroundColor: Colors.white30,color: Colors.black),)),
                Text("2h 25m",style: TextStyle(color: Colors.grey),),
                Icon(Icons.hd,color: Colors.grey,)
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextButton.icon(onPressed: (){}, 
              icon:const Icon(Icons.play_arrow,color: Colors.black,), 
              label: const Text("Play",style: TextStyle(color:Colors.black),),
              style:  ButtonStyle(
                backgroundColor:MaterialStateProperty.all(Colors.white),
            
              ),),
            ),SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextButton.icon(onPressed: (){}, 
              icon:const Icon(Icons.download,color: Colors.white,), 
              label: const Text("Download",style: TextStyle(color: Colors.white),),
              style:  ButtonStyle(
                backgroundColor:MaterialStateProperty.all(Colors.grey.shade500),
              ),),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text("data"),//title
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.add),
                Icon(Icons.thumb_up_sharp),
                Icon(Icons.share)
              ],
            ),const SizedBox(height: 10,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("My List"),
                Text("Rate"),
                Text("Share")
              ],
            ),
            const SizedBox(height: 20,),
            CustomSlider(title: "Related Movies", sliderList: popularMoviesList),
            CustomSlider(title: "Trending Now", sliderList: trendingList)
          ],
        ),
      ),
    );
  }
}
