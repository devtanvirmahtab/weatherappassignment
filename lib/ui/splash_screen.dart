import 'package:flutter/material.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(Duration(seconds: 2)).then((value) =>
          Navigator.push(context, MaterialPageRoute(builder: (context)=>  HomePage()))
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child:  Text("Weather App",style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
