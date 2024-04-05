import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';


class SpacingWarpPage extends StatefulWidget {
  const SpacingWarpPage({super.key});

  @override
  State<SpacingWarpPage> createState() => _SpacingWarpPageState();
}

class _SpacingWarpPageState extends State<SpacingWarpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Spacing Warp",style: TextStyle(color: Colors.white ,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xff9BBEC7),
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset('assets/images/img_bgImage.png',fit: BoxFit.cover,height: double.infinity,),

            Padding(padding: EdgeInsets.only(top: 6.w,left: 5.w,right: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Spacing Warp ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
                  Text("this is the example of of wrap widget without any style",style: TextStyle(color: Colors.black54,fontSize: 11.sp),),
                  SizedBox(height: 2.h,),
                  Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
                  SizedBox(height: 2.h,),
                  Text("Spacing horizontal",style: TextStyle(color: Color(0xff9BBEC7),),),
                  Wrap(
                    spacing: 10.0,
                    runSpacing: 8.0,
                    children: [
                      Text("aaaaaabbbbbbbccccccgggggggrrrrrhhhhhhrrrreeeeejjjjjkkkkkyyyyyuuuuttttiiiiooooeeeeeewqwwwllxxlvfgmhyyuiyioeoedjfntjueri",style: TextStyle(letterSpacing: 4),)
                    ],
                  ),
                  SizedBox(height: 2.h,),
                  Text("Spacing vertical",style: TextStyle(color: Color(0xff9BBEC7),),),
                  SizedBox(height: 2.h,),
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 10.0,
                    runSpacing: 8.0,
                    children: [
                      Text("aaaaaabbbbbbbccccccgggggggrrrrrhhhhhhrrrreeeeejjjjjkkkkkyyyyyuuuuttttiiiiooooeeeeeewqwwwllxxlvfgmhyyuiyioeoedjfntjueri",style: TextStyle(letterSpacing: 1),)
                    ],
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
