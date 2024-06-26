
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class StandartWarpPage extends StatefulWidget {
  const StandartWarpPage({super.key});

  @override
  State<StandartWarpPage> createState() => _StandartWarpPageState();
}

class _StandartWarpPageState extends State<StandartWarpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Colors.white,size: 3.h,),),
        title: Text("Standart Wrap",style: TextStyle(color: Colors.white ,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xff9888A5),
      ),
      body: Container(
        child: Stack(
          children: [
            Padding(padding: EdgeInsets.only(top: 6.w,left: 5.w,right: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Standart Wrap",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
              Text("this is the example of of wrap widget without any style",style: TextStyle(color: Colors.black54,fontSize: 13.sp),),
              SizedBox(height: 2.h,),
              Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
              SizedBox(height: 2.h,),
              Wrap(
                children: [
                Text("aaaaaabbbbbbbccccccgggggggrrrrrhhhhhhrrrreeeeejjjjjkkkkkyyyyyuuuuttttiiiiooooeeeeeewqwwwllxxlvfgmhyyuiyioeoedjfntjueri")
                ],
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
