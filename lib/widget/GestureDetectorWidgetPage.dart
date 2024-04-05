import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';



class GestureDetectorWidgetPage extends StatefulWidget {
  const GestureDetectorWidgetPage({super.key});

  @override
  State<GestureDetectorWidgetPage> createState() => _GestureDetectorWidgetPageState();
}

class _GestureDetectorWidgetPageState extends State<GestureDetectorWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Gesture Detector Widget",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor:  Color(0xffC0B298),
      ),
      body: Container(
        child: Stack(
          children: [

        Padding(padding: EdgeInsets.only(top: 4.h,left: 4.w,right: 4.w,bottom: 4.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Gesture Detector Widget",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),

                Text("Gesture Detector Widget used to handle touch on object.",style: TextStyle(color: Colors.black54),),
                SizedBox(height: 2.h,),
                Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp),),
                SizedBox(height: 2.h,),
                Text("On Single tap",style: TextStyle(fontSize: 11.sp),),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      print("Tapped Once");
                    },
                    child: Container(
                      height: 5.3.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow:[
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 10,
                              offset: Offset(1, 10),
                            ),
                          ]
                        ),
                      padding: EdgeInsets.only(left: 2.5.w,right: 2.5.w,top: 1.5.h,bottom: 1.5.h),
                      child: Text("Tap me once",style: TextStyle(fontSize: 12.sp),),
                    ),
                  ),
                ),
                SizedBox(height: 1.5.h,),
                Divider(color: Colors.grey.withOpacity(0.5),),
                SizedBox(height: 2.h,),
                Text("On Single tap without behaviour, you only can hit the text or icon ",style: TextStyle(fontSize: 11.sp),),
                SizedBox(height: 1.h,),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      print("Tapped Once");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Text("Menu Title",style: TextStyle(fontSize: 12.sp),),
                        Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 2.h,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 1.5.h,),
                Divider(color: Colors.grey.withOpacity(0.5),),
                SizedBox(height: 2.h,),
                Text("On Single tap without behaviour, you  can hit all entire container ",style: TextStyle(fontSize: 11.sp),),
                SizedBox(height: 1.h,),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      print("Tapped Once");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Menu Title",style: TextStyle(fontSize: 12.sp),),
                        Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 2.h,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 2.h,),
                Text("On double tap",style: TextStyle(fontSize: 11.sp),),
                SizedBox(height: 1.h,),
                Container(
                  child: GestureDetector(
                    onDoubleTap : () {
                      print("Tapped double");
                    },
                    child: Container(
                      height: 5.3.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow:[
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 10,
                              offset: Offset(1, 10),
                            ),
                          ]
                      ),
                      padding: EdgeInsets.only(left: 2.5.w,right: 2.5.w,top: 1.5.h,bottom: 1.5.h),
                      child: Text("Tap me twice",style: TextStyle(fontSize: 12.sp),),
                    ),
                  ),
                ),
                SizedBox(height: 2.h,),
                Text("On long press",style: TextStyle(fontSize: 11.sp),),
                SizedBox(height: 1.h,),
                Container(
                  child: GestureDetector(
                    onLongPress : () {
                      print("Long press");
                    },
                    child: Container(
                      height: 5.3.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow:[
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 10,
                              offset: Offset(1, 10),
                            ),
                          ]
                      ),
                      padding: EdgeInsets.only(left: 2.5.w,right: 2.5.w,top: 1.5.h,bottom: 1.5.h),
                      child: Text("Long press me",style: TextStyle(fontSize: 12.sp),),
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
