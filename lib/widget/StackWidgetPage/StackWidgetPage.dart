import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';



class StackWidgetPage extends StatefulWidget {
  const StackWidgetPage({super.key});

  @override
  State<StackWidgetPage> createState() => _StackWidgetPageState();
}

class _StackWidgetPageState extends State<StackWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Stack Widget",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Container(
        child: Stack(
          children: [
          Image.asset("assets/images/img_bgImage.png",fit: BoxFit.cover,height: double.infinity,),
        Padding(padding: EdgeInsets.only(top: 6.w,left: 5.w,right: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Stack Widget",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
              Text("Stack Widget used to stacking widget",style: TextStyle(color: Colors.black54),),
              SizedBox(height: 2.h,),
              Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
              SizedBox(height: 1.h,),
              Container(
                height: 40.h,
                color: Colors.grey.withOpacity(0.4),
                width: double.infinity,

                child: Stack(
                  children: [
                    Positioned(
                      height:13.h,
                      width: 30.w,
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.red,
                      ),
                    ),
                    Positioned(
                      top: 8.h,
                      left:13.w,
                      width: 30.w,
                      height: 13.h,
                      child: Container(
                        width:150,
                        height:150,
                        color: Colors.blue,

                      ),
                    ),
                    Positioned(
                      top: 15.h,
                      left: 25.w,
                      width: 30.w,
                      height: 13.h,
                      child: Container(
                        width:150,
                        height:150,
                        color: Colors.green,
                      ),
                    ),
                    Positioned(
                      top: 23.h,
                      left: 35.w,
                      width: 30.w,
                      height: 13.h,
                      child: Container(
                        width:150,
                        height:150,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
          ],
        ),
      ),
    );
  }
}
