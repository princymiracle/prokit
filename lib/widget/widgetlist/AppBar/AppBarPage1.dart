
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AppBarPage1 extends StatefulWidget {
  const AppBarPage1({super.key});

  @override
  State<AppBarPage1> createState() => _AppBarPage1State();
}

class _AppBarPage1State extends State<AppBarPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("App Bar 1 - Standart",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor:  Color(0xff9888A5),

      ),
      body: Container(
        child: Stack(
          children: [

            Padding(padding: EdgeInsets.only(top: 4.h,left: 4.w,right: 4.w),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("App Bar 1 - Standart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),

                 Text("This is the example of standart App Bar",style: TextStyle(color: Colors.black54,fontSize: 11.sp),),
                 SizedBox(height: 2.h,),
                 Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
                 SizedBox(height: 3.h,),
                 Container(
                   height: 8.h,
                   width: double.infinity,
                   color:  Color(0xff9888A5).withOpacity(0.4),
                   child: ListTile(
                     leading: IconButton(
                         onPressed: () => Get.back(),
                       icon: Icon(Icons.arrow_back,size: 3.h,color: Colors.white,), ),
                     title: Padding(
                       padding:  EdgeInsets.only(left: 27.w),
                       child: Text("Title",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15.sp,color: Colors.white),),
                     ),
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
