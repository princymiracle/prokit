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
      appBar: AppBar(centerTitle: true,
        leading: IconButton(onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(widget.title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(1.w),
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bgImage.png"),fit: BoxFit.cover)),
          child: Container(
            child: Padding(
              padding:  EdgeInsets.only(top: 2.h, left: 5.w,right: 5.w),
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
