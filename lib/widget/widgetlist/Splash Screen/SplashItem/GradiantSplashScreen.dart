import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class GradiantSplashScreenPage extends StatefulWidget {

  @override
  State<GradiantSplashScreenPage> createState() => _GradiantSplashScreenPageState();
}

class _GradiantSplashScreenPageState extends State<GradiantSplashScreenPage> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),() {
      Get.back();
    },);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0x95E98929), Colors.white,Color(0x95E98929)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  tileMode: TileMode.repeated
              )
          ),
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/img_dialogImg.png',fit: BoxFit.cover,height: 20.h,),
                Text("Gradiant Splash Screen",style: TextStyle(fontSize:28,color: Theme.of(context).bottomAppBarColor),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
