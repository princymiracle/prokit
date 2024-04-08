
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../SplashScreenPage.dart';

class AnimatedSplashScreenPage extends StatelessWidget {
  AnimatedSplashScreenPage({super.key});


  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset('assets/images/img_dialogImg.png',fit: BoxFit.cover,height: 20.h,),SizedBox(height: 3.h,),
          Text("Welcome",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 30,fontWeight: FontWeight.w600),)
        ],
      ),
      splashIconSize: 60.w,
      backgroundColor:Color(0xffC0B298),
      splashTransition: SplashTransition.scaleTransition,
      nextScreen: SplashScreenPage(), centered: true,
      animationDuration: const Duration(seconds: 3),
    );
  }
}
