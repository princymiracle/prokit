import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class TyperTextPage extends StatelessWidget {
  String title;
  TyperTextPage({super.key,this.title = 'Typer Text'});

  @override
  Widget build(BuildContext context) {
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
            child: Container(width: 90.w, height: 20.h, padding: EdgeInsets.all(5.w),
              decoration: BoxDecoration(color: Color(0xff9BBEC7), borderRadius: BorderRadius.circular(2.w)),
              child: DefaultTextStyle(
                style: const TextStyle(fontSize: 35, fontFamily: 'Bobbers',),
                child: AnimatedTextKit(repeatForever: true,isRepeatingAnimation: true,
                  animatedTexts: [
                    TyperAnimatedText('It is not enough to do your best,',textStyle: TextStyle(color: Theme.of(context).hoverColor)),
                    TyperAnimatedText('you must know what to do,',textStyle: TextStyle(color: Theme.of(context).hoverColor)),
                    TyperAnimatedText('and then do your best',textStyle: TextStyle(color: Theme.of(context).hoverColor)),
                    TyperAnimatedText('- W.Edwards Deming',textStyle: TextStyle(color: Theme.of(context).hoverColor)),
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
