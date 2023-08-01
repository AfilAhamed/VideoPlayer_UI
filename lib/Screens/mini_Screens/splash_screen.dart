import 'package:flutter/material.dart';
import 'package:videoplayer_miniproject/bottombar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    tohomescreen();
  }

  Future<void> tohomescreen() async {
    await Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const BottomBar()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/video playe logo 1.png'),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Video Player',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
      ),
    );
  }
}
