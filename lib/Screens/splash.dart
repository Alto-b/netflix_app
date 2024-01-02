import 'package:flutter/material.dart';
import 'package:netflix_ui/api/api.dart';
import 'package:netflix_ui/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    goToHome();
    getPopularMovies();
    getTopRated();
    getNowPlaying();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://i.pinimg.com/originals/f6/b1/1b/f6b11bd53411d94338117381cf9a9b9b.gif')
            // Image.network('https://cdn.dribbble.com/users/307142/screenshots/9688763/media/1b01786d6042938e5bbeb5bc4ef9a69e.gif')
          ],
        ),
      ),
    );
  }
  Future<void> goToHome() async{
    await Future.delayed(const Duration(seconds: 2));
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement( MaterialPageRoute(builder:(ctx)=>const MyHomePage()));
  }

}