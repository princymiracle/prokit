import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AnimatedSizePage extends StatefulWidget {
  String title;
  AnimatedSizePage({super.key,this.title = 'Animated Size'});

  @override
  State<AnimatedSizePage> createState() => _AnimatedSizePageState();
}

class _AnimatedSizePageState extends State<AnimatedSizePage> {

  double _size = 300;

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
          child: Container(
            child: Padding(
              padding:  EdgeInsets.only(top: 4.h, left: 10.w,right: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Animated Size",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500),),
                  SizedBox(height: 1.h,),
                  Text("This is the example of Animated Size",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 1.h,),
                  Text("Example :-"),
                  SizedBox(height: 3.h,),
                  Center(
                    child: Container(
                      color: Colors.white,
                      child: AnimatedSize(
                          duration:Duration(seconds: 1),
                          curve: Curves.easeIn,
                       child: Image.asset("assets/images/MiracleLogo.png",height: _size,width: _size,),
                      ),
                    ),
                  ),
                  SizedBox(height: 3.h,),
                  Center(
                    child: ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.orangeAccent )),
                        onPressed: () {
                          setState(() {
                            _size = _size == 35.h ? 15.h : 35.h;
                          });
                        },
                        child: Text("Change",style: TextStyle(color: Colors.black),),
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

