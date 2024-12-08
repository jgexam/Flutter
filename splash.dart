import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/splash2.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Splash2()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Text("Hello"),
    );
  }
}