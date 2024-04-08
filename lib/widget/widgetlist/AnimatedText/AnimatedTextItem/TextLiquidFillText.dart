import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class TextLiquidFillTextPage extends StatelessWidget {
  String title;
  TextLiquidFillTextPage({super.key,this.title = 'TextLiquidFill Text'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(title,style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xff9888A5),
      ),
      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(2.w),
          child:Center(
            child:Container(
              child: TextLiquidFill(text: 'LIQUIDY',boxHeight: 75.w,
                waveColor: Theme.of(context).hoverColor,boxWidth: double.infinity,
                boxBackgroundColor: Color(0xff9888A5),
                textStyle: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold,),),
            ),
          ),
        ),
      ),
    );
  }
}
