import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AnimatedCrossFadePage extends StatefulWidget {
  String title;
  AnimatedCrossFadePage({super.key,this.title = 'Animated Cross Fade 1 - Standart'});

  @override
  State<AnimatedCrossFadePage> createState() => _AnimatedCrossFadePageState();
}

class _AnimatedCrossFadePageState extends State<AnimatedCrossFadePage> {
  bool toggleAnimation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(widget.title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset("assets/images/bgImage.png",fit: BoxFit.cover,height: double.infinity,),
            Padding(
              padding:  EdgeInsets.only(left: 5.w,right: 5.w),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Animated Cross Fade 1 - Standart",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
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
                            color: Colors.blue,
                            child: Center(child: Text("Sold")),
                          ),
                          secondChild: Container(
                            height: 7.h,
                            width: 39.w,
                            color: Colors.pink,
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
                          backgroundColor: MaterialStatePropertyAll(Colors.amberAccent),
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
