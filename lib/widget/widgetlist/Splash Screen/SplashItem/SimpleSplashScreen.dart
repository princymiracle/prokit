import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SimpleSplashScreenPage extends StatefulWidget {
  SimpleSplashScreenPage({super.key});

  @override
  State<SimpleSplashScreenPage> createState() => _SimpleSplashScreenPageState();
}

class _SimpleSplashScreenPageState extends State<SimpleSplashScreenPage> {

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
        child: Stack(alignment: Alignment.center,
          children: [
            Image.asset('assets/images/img_tabImage7.png',fit: BoxFit.cover,width: double.infinity,),
            Container(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Welcome",style: TextStyle(color: Theme.of(context).secondaryHeaderColor,fontSize: 35,fontWeight: FontWeight.w600),),
                  Image.asset('assets/images/img_dialogImg.png',fit: BoxFit.cover,height: 20.h,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
