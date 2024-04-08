import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';




class ExpandedWidgetPage extends StatefulWidget {
  const ExpandedWidgetPage({super.key});

  @override
  State<ExpandedWidgetPage> createState() => _ExpandedWidgetPageState();
}

class _ExpandedWidgetPageState extends State<ExpandedWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Expanded Widget",style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor:  Color(0xff9888A5),
      ),
      body: Container(
        child: Stack(
          children: [

        Padding(padding: EdgeInsets.only(top: 4.h,left: 6.w,right: 6.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Expanded Widget",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
                SizedBox(height: 1.5.h,),
                Text("Expanded Widget used to fit the rest of screen",style: TextStyle(color: Colors.black54,fontSize: 11.sp),),
                SizedBox(height: 2.h,),
                Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
                SizedBox(height: 2.h,),
                Text("Horizontal expanded",style: TextStyle(fontSize: 10.sp),
                ),
                SizedBox(height: 1.h,),
                Container(
                  height: 15.h,
                  width: double.infinity,
                  color: Colors.grey.withOpacity(0.4),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(7.w),
                        height: 6.h,
                       color: Colors.pink,
                      ),
                      Expanded(
                        flex: 1 ,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: 6.h,

                          color: Colors.green,
                          child: Center(
                            child: Text(
                              "Expanded",
                              style: TextStyle(color: Colors.white),),
                          ),
                        ),),
                    ],
                  ),
                ),
                SizedBox(height: 2.h,),
            Text("Vertical expanded",style: TextStyle(fontSize: 10.sp),),
                SizedBox(height: 1.h,),
                Container(
                  height: 30.h,
                  width: double.infinity,
                  color: Colors.grey.withOpacity(0.4),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(7.w),
                        height: 5.h,
                        width: 25.w,
                        color: Colors.pink,
                      ),
                      Expanded(
                        flex: 1 ,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: 5.h,
                          width: 25.w,
                          color: Colors.green,
                          child: Center(
                            child: Text(
                              "Expanded",
                              style: TextStyle(color: Colors.white),),
                          ),
                        ),),
                    ],
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
