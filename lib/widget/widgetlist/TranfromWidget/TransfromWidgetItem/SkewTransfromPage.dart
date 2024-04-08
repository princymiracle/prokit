
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SkewTransfromPage extends StatefulWidget {
  const SkewTransfromPage({super.key});

  @override
  State<SkewTransfromPage> createState() => _SkewTransfromPageState();
}

class _SkewTransfromPageState extends State<SkewTransfromPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Skew Transform",style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xff9888A5),
      ),
      body: Container(
        child: Stack(
          children: [
        Padding(padding: EdgeInsets.only(top: 6.w,left: 5.w,right: 5.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Skew Transform",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
                Text("This is the example of skew Transform on container ",style: TextStyle(color: Colors.black54,fontSize: 11.sp),),
                SizedBox(height: 2.h,),
                Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
                SizedBox(height: 2.h,),
                Text("Original",),
                SizedBox(height: 1.5.h,),
                Container(
                  color: Color(0xff9888A5).withOpacity(0.4),
                  height: 8.h,
                  width: 15.w,
                ),
                SizedBox(height: 2.h,),
                Text("Skew X",),
                SizedBox(height: 1.5.h,),
                Transform(
                  transform: Matrix4.skewX(0.3),
                  child: Container(
                    height: 8.h,
                    width: 15.w,
                    color: Color(0xff9888A5).withOpacity(0.4),
                  ),
                ),
                SizedBox(height: 2.h,),
                Text("Skew Y",),
                SizedBox(height: 1.5.h,),
                Transform(
                  transform: Matrix4.skewY(0.3),
                  child: Container(
                    height: 8.h,
                    width: 15.w,
                    color: Color(0xff9888A5).withOpacity(0.4),
                  ),
                ),
                SizedBox(height: 2.h,),
                Text("Skew X Rotate Z with origin",),
                SizedBox(height: 1.5.h,),
                Transform(
                  transform: Matrix4.skewX(0.3)..rotateZ(3.14 / 12.0),
                  child: Container(
                    height: 8.h,
                    width: 15.w,
                    color: Color(0xff9888A5).withOpacity(0.4),
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
