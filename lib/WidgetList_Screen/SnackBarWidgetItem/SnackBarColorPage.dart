import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SnackBarColorPage extends StatefulWidget {
  String title;
  SnackBarColorPage({super.key,this.title = 'SnackBar Color'});

  @override
  State<SnackBarColorPage> createState() => _SnackBarColorPageState();
}

class _SnackBarColorPageState extends State<SnackBarColorPage> {
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
                  Text("SnackBar Color",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500),),
                  SizedBox(height: 1.h,),
                  Text("This is the example of SnackBar Color",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 1.h,),
                  Text("Example :-"),
                  SizedBox(height: 5.h,),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Snackbar With Color'),
                            backgroundColor: Colors.pink,
                          ),
                        );
                      });
                    },
                    child: Text("Show Snackbar"),
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
