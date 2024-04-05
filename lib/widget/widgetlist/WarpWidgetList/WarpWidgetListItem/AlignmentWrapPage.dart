
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AlignmentWrapPage extends StatefulWidget {
  const AlignmentWrapPage({super.key});

  @override
  State<AlignmentWrapPage> createState() => _AlignmentWrapPageState();
}

class _AlignmentWrapPageState extends State<AlignmentWrapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Alignment Wrap",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xff9888A5),
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset('assets/images/img_bgImage.png',fit: BoxFit.cover,height: double.infinity,),

            Padding(padding: EdgeInsets.only(top: 6.w,left: 5.w,right: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Alignment Warp ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
                  Text("this is the example of of wrap widget with aligmennt",style: TextStyle(color: Colors.black54,fontSize: 11.sp),),
                  SizedBox(height: 2.h,),
                  Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
                  SizedBox(height: 2.h,),
                  Text("Align Left",style: TextStyle(color: Color(0xff9888A5)),),
                  Wrap(
                    alignment:WrapAlignment.end,
                    spacing: 10.0,
                    runSpacing: 8.0,
                    children: [
                      Text("aaaaaa bbbbbbb ccccccg ggggg grrrrrh hhhhhrr rree eeejjjj jkkkk kyyyyy uuuu ttttii iioooo eeee eewqww wll xxlvf gmhyy uiyio eoedjf ntj ueri gfghhh eftghh ",style: TextStyle(letterSpacing: 2),)
                    ],
                  ),
                  SizedBox(height: 2.h,),
                  Text("Align Center",style: TextStyle(color: Color(0xff9888A5)),),

                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 10.0,
                    runSpacing: 8.0,
                  /*  textDirection: TextDirection.rtl,*/
                    children: [
                      Text("aaaaaa bbbbbbb ccccccg ggggg grrrrrh hhhhhrr rree eeejjjj jkkkk kyyyyy uuuu ttttii iioooo eeee eewqww wll xxlvf gmhyy uiyio eoedjf ntj ueri",style: TextStyle(letterSpacing: 2),)
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
