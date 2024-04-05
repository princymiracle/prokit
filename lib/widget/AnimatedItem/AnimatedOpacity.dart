import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AnimatedOpacityPage extends StatefulWidget {
  String title;
  AnimatedOpacityPage({super.key,this.title = 'Animated Opacity'});

  @override
  State<AnimatedOpacityPage> createState() => _AnimatedOpacityPageState();
}

class _AnimatedOpacityPageState extends State<AnimatedOpacityPage> {

  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,size: 3.h,color: Colors.white),
        ),
        title: Text(widget.title,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900,color: Colors.white),),
        backgroundColor: Color(0xff9888A5),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(1.w),
         // decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bgImage.png"),fit: BoxFit.cover)),
          child: Container(
            child: Padding(
              padding:  EdgeInsets.only(top: 4.h,left: 10.w,right: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Animated Opacity",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500),),
                  SizedBox(height: 1.h,),
                  Text("This is the example of Animated Opacity",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 1.h,),
                  Text("Example :-"),
                  SizedBox(height: 3.h,),
                  Center(
                    child: AnimatedOpacity(
                        opacity: opacityLevel,
                        duration: Duration(seconds: 2),
                      child: Image.asset("assets/images/MiracleLogo.png",fit: BoxFit.cover,),
                    ),
                  ),
                  SizedBox(height: 3.h,),
                  Center(
                    child: ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.orangeAccent.withOpacity(0.4) )),
                        onPressed: () {
                          setState (
                              () => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0,
                          );
                        },
                        child: Text("Fade Logo",style: TextStyle(color: Colors.black),),
                    ),
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
