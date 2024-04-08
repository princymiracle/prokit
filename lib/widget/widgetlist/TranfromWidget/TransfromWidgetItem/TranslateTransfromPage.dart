
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';


class TranslateTransfromPage extends StatefulWidget {
  const TranslateTransfromPage({super.key});

  @override
  State<TranslateTransfromPage> createState() => _TranslateTransfromPageState();
}

class _TranslateTransfromPageState extends State<TranslateTransfromPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Translate Transform",style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor:  Color(0xff9BBEC7),
      ),
      body: Container(
        child: Stack(
          children: [
        Padding(padding: EdgeInsets.only(top: 6.w,left: 5.w,right: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Translate Transform",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
              Text("This is the example of translate Transform on conitner ",style: TextStyle(color: Colors.black54,fontSize: 11.sp),),
              SizedBox(height: 2.h,),
              Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
              SizedBox(height: 2.h,),
              Text("Original",style: TextStyle(color: Colors.black54),),
              SizedBox(height: 1.5.h,),
              Container(
                color: Color(0xff9BBEC7).withOpacity(0.8),
                height: 7.h,
                width: 15.w,
              ),
              SizedBox(height: 3.h,),
              Text("Offset 100,0",style: TextStyle(color: Colors.black54),),
              Transform.translate(
                  offset: Offset(100.0, 0.0),
                child:   Container(
                  color: Color(0xff9BBEC7).withOpacity(0.8),
                  height: 7.h,
                  width: 15.w,
                ),
              ),
              SizedBox(height: 3.h,),
          Text("Offset 100,50",style: TextStyle(color: Colors.black54),),
          Transform.translate(
            offset: Offset(100.0, 50.0),
            child:   Container(
              color: Color(0xff9BBEC7).withOpacity(0.8),
              height: 7.h,
              width: 15.w,
            ),
          ),
            ],
          ),
        ),

          ],
        ),
      ),
    );
  }
}
