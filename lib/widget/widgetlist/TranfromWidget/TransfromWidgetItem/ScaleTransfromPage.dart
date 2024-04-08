
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ScaleTransfromPage extends StatefulWidget {
  const ScaleTransfromPage({super.key});

  @override
  State<ScaleTransfromPage> createState() => _ScaleTransfromPageState();
}

class _ScaleTransfromPageState extends State<ScaleTransfromPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Scale Transform",style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor:  Color(0xffC0B298),
      ),
      body: Container(
        child: Stack(
          children: [
        Padding(padding: EdgeInsets.only(top: 6.w,left: 5.w,right: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Scale Transform",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
              Text("This is the example of Scale Transform on conitner ",style: TextStyle(color: Colors.black54,fontSize: 11.sp),),
              SizedBox(height: 2.h,),
              Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
              SizedBox(height: 2.h,),
              Text("Original",style: TextStyle(color: Colors.black54),),
              SizedBox(height: 1.h,),
              Container(
                height: 10.h,
                width: 20.w,
                color: Color(0xffC0B298).withOpacity(0.4),
              ),
              SizedBox(height: 2.h,),
              Text("Scale 0.5 at the center",style: TextStyle(color: Colors.black54),),
              SizedBox(height: 1.h,),
              Padding(
                padding:  EdgeInsets.only(left: 7.w,bottom: 2.h),
                child: Container(
                  height: 4.h,
                  width: 8.w,
                  color: Color(0xffC0B298).withOpacity(0.4),
                ),
              ),
              Text("Scale 0.5 at the bottom right",style: TextStyle(color: Colors.black54),),
              SizedBox(height: 3.h,),
              Padding(
                padding:  EdgeInsets.only(left: 10.w,bottom: 2.h),
                child: Container(
                  height: 3.h,
                  width: 6.w,
                  color: Color(0xffC0B298).withOpacity(0.4),
                ),
              ),
              Text("Scale 0.5 at the bottom right",style: TextStyle(color: Colors.black54),),
                SizedBox(height: 1.h,),
               Padding(
                padding:  EdgeInsets.only(bottom: 2.h),
                child: Container(
                  height: 10.h,
                  width: 23.w,
                  color:Color(0xffC0B298).withOpacity(0.4),
                ),
              ),
          ],),
        ),
          ],
        ),
      ),
    );
  }
}
