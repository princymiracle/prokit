
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AppBarPage3 extends StatefulWidget {
  const AppBarPage3({super.key});

  @override
  State<AppBarPage3> createState() => _AppBarPage3State();
}

class _AppBarPage3State extends State<AppBarPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("App Bar 3 - Icon",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xff9BBEC7),
      ),
      body: Container(
        child: Stack(
          children: [

        Padding(padding: EdgeInsets.only(top: 4.h,left: 4.w,right: 4.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("App Bar 3 - Icon ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),

              Text("This is the example of standart App Bar with icon",style: TextStyle(color: Colors.black54,fontSize: 11.sp),),
              SizedBox(height: 3.h,),
              Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
              SizedBox(height: 2.h,),
              Container(
                height: 8.h,
                width: double.infinity,
                color: Color(0xff8A95A5).withOpacity(0.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () => Get.back(), icon: Icon(Icons.arrow_back,size: 3.h,color: Colors.white,),),
                     Text("Title",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp,color: Colors.white,),),
                    Row(
                      children: [
                        IconButton(onPressed: () => Get.back(), icon: Icon(Icons.favorite,size: 3.h,color: Colors.red,),),
                        IconButton(onPressed: () => Get.back(), icon: Icon(Icons.help,size: 3.h,color: Colors.black,),),
                      ],
                    )

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
