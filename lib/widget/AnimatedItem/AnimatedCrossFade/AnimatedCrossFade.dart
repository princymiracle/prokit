import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AnimatedCrossFadePage extends StatefulWidget {
  String title;
  AnimatedCrossFadePage({super.key,this.title = 'Animated Cross Fade 1'});

  @override
  State<AnimatedCrossFadePage> createState() => _AnimatedCrossFadePageState();
}

class _AnimatedCrossFadePageState extends State<AnimatedCrossFadePage> {
  bool toggleAnimation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,size: 3.h,color: Colors.white,),
        ),
        title: Text(widget.title,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900,color: Colors.white),),
        backgroundColor: Color(0xff9888A5),
        centerTitle: true,
      ),
      body: Container(
        child: Stack(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 4.h,left: 10.w,right: 10.w),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Animated Cross Fade 1 - Standart",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500),),
                    SizedBox(height: 1.h,),
                    Text("This is the example of standart animated cress fade",style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 1.h,),
                    Text("Example :-"),
                    SizedBox(height: 3.h,),
                    Center(
                      child: AnimatedCrossFade(
                          duration: Duration(seconds: 3),
                          firstChild: Container(
                            height: 6.h,
                            width: 38.w,
                            color: Colors.blue.withOpacity(0.3),
                            child: Center(child: Text("Sold")),
                          ),
                          secondChild: Container(
                            height: 7.h,
                            width: 39.w,
                            color: Colors.pink.withOpacity(0.3),
                            child: Center(child: Text("Buy")),
                          ),
                          crossFadeState: toggleAnimation
                              ? CrossFadeState.showSecond
                              : CrossFadeState.showFirst
                      ),
                    ),
                    SizedBox(height: 3.h,),
                    Center(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.redAccent.withOpacity(0.3)),
                        ),
                        onPressed: () {
                          setState(() {
                            toggleAnimation = !toggleAnimation;
                          });
                        },
                        child: Text("Change",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
