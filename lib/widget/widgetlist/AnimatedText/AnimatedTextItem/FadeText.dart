import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class FadeTextPage extends StatelessWidget {
  String title;
  FadeTextPage({super.key,this.title = 'Fade Text'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(title,style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xffC0B298),
      ),

      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(2.w),
          child:  Center(child:
            Container(padding: EdgeInsets.all(5.w),
              width: 90.w, height: 20.h,
              decoration: BoxDecoration(color: Color(0xffFFEBD4), borderRadius: BorderRadius.circular(2.w)),
              child:Center(
                child: DefaultTextStyle(
                  style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold,),
                  child: AnimatedTextKit(repeatForever: true,isRepeatingAnimation: true,
                    animatedTexts: [
                      FadeAnimatedText('do IT!',textStyle: TextStyle(color: Theme.of(context).hoverColor)),
                      FadeAnimatedText('do it RIGHT!!',textStyle: TextStyle(color: Theme.of(context).hoverColor)),
                      FadeAnimatedText('do it RIGHT NOW!!!',textStyle: TextStyle(color: Theme.of(context).hoverColor)),],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
