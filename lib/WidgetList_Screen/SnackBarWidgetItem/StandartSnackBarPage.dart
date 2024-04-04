import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class StandartSnackBarPage extends StatefulWidget {
  String title;
  StandartSnackBarPage({super.key,this.title = 'Standart SnackBar'});

  @override
  State<StandartSnackBarPage> createState() => _StandartSnackBarPageState();
}

class _StandartSnackBarPageState extends State<StandartSnackBarPage> {

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
              padding:  EdgeInsets.only(top: 4.h, left: 10.w,right: 9.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Standart SnackBar",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                  SizedBox(height: 1.h,),
                  Text("This is the example of Standart SnackBar",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 1.h,),
                  Text("Example :-"),
                  SizedBox(height: 5.h,),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ScaffoldMessenger.of(context).showSnackBar(
                           SnackBar(
                            content: Text('Simple Snackbar'),
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

