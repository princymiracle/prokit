import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class FlickerTextPage extends StatelessWidget {
  String title;
  FlickerTextPage({super.key,this.title = 'Flicker Text'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(title,style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor:  Color(0xff9BBEC7),
      ),
      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(2.w),
          child: Center(
            child:Container(padding: EdgeInsets.all(5.w), width: 90.w,height: 20.h,
              decoration: BoxDecoration(color: const Color(0xffFFEBD4), borderRadius: BorderRadius.circular(2.w)),
              child: Center(
                child: DefaultTextStyle(
                  style: const TextStyle(fontSize: 40, color: Colors.white,
                    shadows: [Shadow(blurRadius: 7.0, color: Colors.white, offset: Offset(0, 0),),],),
                  child: AnimatedTextKit(repeatForever: true,isRepeatingAnimation: true,
                    animatedTexts: [
                      FlickerAnimatedText('Flicker Frenzy',textStyle: TextStyle(color: Theme.of(context).hoverColor)),
                      FlickerAnimatedText('Night Vibes On',textStyle: TextStyle(color: Theme.of(context).hoverColor)),
                      FlickerAnimatedText("C'est La Vie !",textStyle: TextStyle(color: Theme.of(context).hoverColor)),
                    ],
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
