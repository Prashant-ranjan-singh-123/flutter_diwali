import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5, milliseconds: 500)).then((_) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const MainUi()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Lottie.asset('assets/hello.json'),
      ),
    );
  }
}
