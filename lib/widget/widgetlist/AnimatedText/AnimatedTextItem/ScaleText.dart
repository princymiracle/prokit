import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ScaleTextPage extends StatelessWidget {
  String title;
  ScaleTextPage({super.key,this.title = 'Scale Text'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(title,style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xffC0B298),
      ),

      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(2.w),
          child:  Center(
              child: Container(padding: EdgeInsets.all(5.w),
                width: 90.w, height: 20.h,
                decoration: BoxDecoration(color: const Color(0xffFFEBD4), borderRadius: BorderRadius.circular(2.w)),
                child: Center(
                  child: DefaultTextStyle(
                    style: const TextStyle(fontSize:40, fontFamily: 'Canterbury',),
                    child: AnimatedTextKit(repeatForever: true,isRepeatingAnimation: true,
                      animatedTexts: [
                        ScaleAnimatedText('Think',textStyle: TextStyle(color: Theme.of(context).hoverColor)),
                        ScaleAnimatedText('Build',textStyle: TextStyle(color: Theme.of(context).hoverColor)),
                        ScaleAnimatedText('Ship',textStyle: TextStyle(color: Theme.of(context).hoverColor)),],
                    ),
                  ),
                ),
              )
          ),
        ),
      ),
    );
  }
}
