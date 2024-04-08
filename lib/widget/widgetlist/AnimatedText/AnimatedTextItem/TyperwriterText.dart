import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class TyperwriterTextPage extends StatelessWidget {
  String title;
  TyperwriterTextPage({super.key,this.title = 'Typerwriter Text'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(title,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xff9888A5),
      ),

      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(2.w),
          child:  Center(
            child: Container(
              padding: EdgeInsets.all(5.w), width: 90.w, height: 25.h,
              decoration: BoxDecoration(color: const Color(0xffFFEBD4), borderRadius: BorderRadius.circular(2.w)),
              child: DefaultTextStyle(
                style: const TextStyle(fontSize:35, fontFamily: 'Agne',),
                child: AnimatedTextKit(repeatForever: true,isRepeatingAnimation: true,
                  animatedTexts: [
                    TypewriterAnimatedText('Discipline is the best tool',textStyle: TextStyle(color: Theme.of(context).hoverColor)),
                    TypewriterAnimatedText('Design first, then code',textStyle: TextStyle(color: Theme.of(context).hoverColor)),
                    TypewriterAnimatedText('Do not patch bugs out, rewrite them',textStyle: TextStyle(color: Theme.of(context).hoverColor)),
                    TypewriterAnimatedText('Do not test bugs out, design them out',textStyle: TextStyle(color: Theme.of(context).hoverColor)),],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
