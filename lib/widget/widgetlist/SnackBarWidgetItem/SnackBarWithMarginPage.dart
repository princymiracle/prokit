import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SnackBarWithMarginPage extends StatefulWidget {
  String title;
  SnackBarWithMarginPage({super.key,this.title = 'SnackBar With Margin'});


  @override
  State<SnackBarWithMarginPage> createState() => _SnackBarWithMarginPageState();
}

class _SnackBarWithMarginPageState extends State<SnackBarWithMarginPage> {
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
              padding:  EdgeInsets.only(top: 4.h, left: 9.w,right: 9.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("SnackBar With Margin",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                  SizedBox(height: 1.h,),
                  Text("This is the example of SnackBar With Margin",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 1.h,),
                  Text("Example :-"),
                  SizedBox(height: 5.h,),
                  ElevatedButton(
                    onPressed: () {
                      const snackdemo = SnackBar(
                        content: Text('SnackBar With Margin bottom'),
                        backgroundColor: Colors.blue,
                        elevation: 10,
                        behavior: SnackBarBehavior.floating,
                        margin: EdgeInsets.all(55),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackdemo);
                      },
                    child:Text("Show Floating Snackbar With Margin"),
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
