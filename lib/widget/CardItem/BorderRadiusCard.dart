import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class BorderRadiusCardPage extends StatefulWidget {
  String title;
  BorderRadiusCardPage({super.key,this.title = 'BorderRadius Card'});

  @override
  State<BorderRadiusCardPage> createState() => _BorderRadiusCardPageState();
}

class _BorderRadiusCardPageState extends State<BorderRadiusCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,size: 5.h,color: Colors.white),
        ),
        title: Text(widget.title,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900,color: Colors.white),),
        backgroundColor: Color(0xffC0B298),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(1.w),
          child: Container(
            child: Padding(
              padding:  EdgeInsets.only(top: 4.h, left: 8.w,right: 8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("BorderRadius Card",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500),),
                  SizedBox(height: 1.h,),
                  Text("This is the example of BorderRadius Card",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 1.h,),
                  Text("Example :-"),
                  SizedBox(height: 5.h,),
                  Text("Card border radius all"),
                  SizedBox(height: 2.h,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Card(
                      color: Colors.lightBlueAccent,
                      child: Padding(
                        padding:  EdgeInsets.all(2.w),
                        child: Text("This text is inside card"),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h,),
                  Text("Border radius with top left and bottom right radius"),
                  SizedBox(height: 2.h,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(2.w),
                      child: Text("This text is inside card"),
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
