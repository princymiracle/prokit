import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ColorizeTextPage extends StatelessWidget {
  String title;
  ColorizeTextPage({super.key,this.title = 'Colorize Text'});

  @override
  Widget build(BuildContext context) {

    var colorizeColors = [Colors.purple, Colors.blue, Colors.yellow, Colors.red, Colors.indigo, Colors.green];
    var colorizeTextStyle = TextStyle(fontSize: 40, fontFamily: 'Horizon',);

    return Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(title,style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xff9BBEC7),
      ),

      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(2.w),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(5.w),
              width: 90.w,height: 20.h,
              decoration: BoxDecoration(color: Color(0xffFFEBD4), borderRadius: BorderRadius.circular(2.w)),
              child: Center(
                child: AnimatedTextKit(repeatForever: true,isRepeatingAnimation: true,
                  animatedTexts: [
                    ColorizeAnimatedText('Larry Page', textStyle: colorizeTextStyle, colors: colorizeColors,),
                    ColorizeAnimatedText('Bill Gates', textStyle: colorizeTextStyle, colors: colorizeColors,),
                    ColorizeAnimatedText('Steve Jobs', textStyle: colorizeTextStyle, colors: colorizeColors,),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
