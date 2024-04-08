import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class RotateTextPage extends StatelessWidget {
  String title;
  RotateTextPage({super.key,this.title = 'Rotate Text'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(title,style: TextStyle(color:Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xff9888A5),
      ),

      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(2.w),
          child: Center(child:
          Container(padding: EdgeInsets.all(2.w),
            width: 90.w, height: 25.h,
            decoration: BoxDecoration(color: const Color(0xffFFEBD4), borderRadius: BorderRadius.circular(2.w)),
            child: Row(mainAxisSize: MainAxisSize.min,mainAxisAlignment: MainAxisAlignment.start,
              children:[
                Text('Be', style: TextStyle(fontSize: 40,color:Theme.of(context).errorColor),),
                SizedBox(width: 4.w,),
                DefaultTextStyle(style: const TextStyle(fontSize: 40, fontFamily: 'Horizon',),
                  child: AnimatedTextKit(repeatForever: true,isRepeatingAnimation: true,
                    animatedTexts: [RotateAnimatedText('AWESOME',textStyle: TextStyle(color: Theme.of(context).hoverColor)),
                      RotateAnimatedText('OPTIMISTIC',textStyle: TextStyle(color: Theme.of(context).hoverColor)),
                      RotateAnimatedText('DIFFERENT',textStyle: TextStyle(color: Theme.of(context).hoverColor)),],
                    onTap: () {},),
                ),
              ],
            ),
          ),
          ),
        ),
      ),
    );
  }
}
