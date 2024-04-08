import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AspectRatioPage extends StatefulWidget {
  String title;
  AspectRatioPage({super.key,this.title = 'Aspect Ratio'});

  @override
  State<AspectRatioPage> createState() => _AspectRatioPageState();
}

class _AspectRatioPageState extends State<AspectRatioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,size: 5.h,color: Colors.white),
        ),
        title: Text(widget.title,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900,color: Colors.white),),
        backgroundColor: Color(0xff9BBEC7),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(1.w),
          child: Container(
            child: Padding(
              padding:  EdgeInsets.only(top: 5.h, left: 9.w,right: 9.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Aspect Ratio",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500),),
                  SizedBox(height: 1.h,),
                  Text("This is the example of Aspect Ratio",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 1.h,),
                  Text("Example :-"),
                  SizedBox(height: 7.h,),
                  Container(
                    color: Colors.blue,
                    alignment: Alignment.center,
                    height: 10.h,
                    width: 70.w,
                    child: AspectRatio(
                      aspectRatio: 7/5,
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  SizedBox(height: 3.h,),
                  Container(
                    color: Colors.blue,
                    alignment: Alignment.center,
                    height: 10.h,
                    width: 30.w,
                    child: AspectRatio(
                      aspectRatio: 3/1,
                      child: Container(
                        color: Colors.red,
                      ),
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
