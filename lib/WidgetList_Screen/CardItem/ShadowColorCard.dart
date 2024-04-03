import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ShadowColorCardPage extends StatefulWidget {
  String title;
  ShadowColorCardPage({super.key,this.title = 'ShadowColor Card'});

  @override
  State<ShadowColorCardPage> createState() => _ShadowColorCardPageState();
}

class _ShadowColorCardPageState extends State<ShadowColorCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,size: 5.h,color: Colors.white),
        ),
        title: Text(widget.title,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900,color: Colors.white),),
        backgroundColor: Color(0xff9888A5),
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
                  Text("ShadowColor Card",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500),),
                  SizedBox(height: 1.h,),
                  Text("This is the example of ShadowColor Card",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 1.h,),
                  Text("Example :-"),
                  SizedBox(height: 5.h,),
                  Text("* Card with shadow color red",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 1.h,),
                  Card(
                    child: Padding(
                      padding:  EdgeInsets.all(2.w),
                      child: Text("This text is inside card"),
                    ),
                    elevation: 15,
                    shadowColor: Colors.red,
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
