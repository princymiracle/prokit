import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SnackBarWithActionPage extends StatefulWidget {
  String title;
  SnackBarWithActionPage({super.key,this.title = 'SnackBar With Action'});

  @override
  State<SnackBarWithActionPage> createState() => _SnackBarWithActionPageState();
}

class _SnackBarWithActionPageState extends State<SnackBarWithActionPage> {

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
              padding:  EdgeInsets.only(top: 4.h, left: 9.w,right: 9.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("SnackBar With Action",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                  SizedBox(height: 1.h,),
                  Text("This is the example of SnackBar With Action",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 1.h,),
                  Text("Example :-"),
                  SizedBox(height: 5.h,),
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: const Text('Snackbar With Action'),
                        action: SnackBarAction(
                          label: 'Undo',textColor: Colors.green,
                          onPressed: () {
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                content: Text(
                                  'Undo',style: TextStyle(color: Colors.green),
                                )));
                          },
                        ),
                      ));
                    },
                    child: const Text('Show Snackbar'),
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
