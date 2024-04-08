import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';



class RotateTransfromPage extends StatefulWidget {
  const RotateTransfromPage({super.key});

  @override
  State<RotateTransfromPage> createState() => _RotateTransfromPageState();
}

class _RotateTransfromPageState extends State<RotateTransfromPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Rotate Transform",style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xff9888A5),
      ),
      body: Container(
        child: Stack(
          children: [

        Padding(padding: EdgeInsets.only(top: 6.w,left: 5.w,right: 5.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Rotate Transform",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),

                Text("This is the example of Rotate Transform on conitner ",style: TextStyle(color: Colors.black54,fontSize: 11.sp),),
                SizedBox(height: 2.h,),
                Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
                SizedBox(height: 2.h,),
                Text("roatate 15 degree at the center"),
                Padding(
                  padding:  EdgeInsets.only(left: 16.w,top: 2.h),
                  child: Transform(transform: Matrix4.rotationZ(pi *1/5),
                    child: Container(
                      height: 9.h,
                      width: 20.w,
                      color: Color(0xff9888A5).withOpacity(0.5),
                      child: Text("i am here",style: TextStyle(color: Colors.white,fontSize: 13.sp),),

                    ),
                  ),
                ),
                SizedBox(height: 5.h,),
                Text("roatate 15 degree at the center with change origin"),
                Padding(
                  padding:  EdgeInsets.only(left: 16.w,top: 2.h),
                  child: Transform(transform: Matrix4.rotationZ(pi *1/7),
                    child: Container(
                      height: 9.h,
                      width: 20.w,
                      color: Color(0xff9888A5).withOpacity(0.5),
                      child: Text("i am here",style: TextStyle(color: Colors.white,fontSize: 13.sp),),
                    ),
                  ),
                ),
                SizedBox(height: 5.h,),
                Text("roatate 15 degree at the center "),
                Padding(
                  padding:  EdgeInsets.only(left: 16.w,top: 2.h),
                  child: Transform(transform: Matrix4.rotationZ(pi *1/3),
                    child: Container(
                      height: 9.h,
                      width: 20.w,
                      color:Color(0xff9888A5).withOpacity(0.5),
                      child: Text("i am here",style: TextStyle(color: Colors.white,fontSize: 13.sp),),
                    ),
                  ),
                ),
                SizedBox(height: 5.h,),
                Text("roatate 165 degree at the center "),
                Padding(
                  padding:  EdgeInsets.only(left: 25.w,top: 10.h),
                  child: Transform(transform: Matrix4.rotationZ(pi *0.9/1),
                    child: Container(
                      height: 9.h,
                      width: 20.w,
                      color: Color(0xff9888A5).withOpacity(0.5),
                      child: Text("i am here",style: TextStyle(color: Colors.white,fontSize: 13.sp),),
                    ),
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
