
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'TransfromWidgetItem/RotateTransfromPage.dart';
import 'TransfromWidgetItem/ScaleTransfromPage.dart';
import 'TransfromWidgetItem/SkewTransfromPage.dart';
import 'TransfromWidgetItem/TranslateTransfromPage.dart';




class TransformWidgetPage extends StatefulWidget {
  const TransformWidgetPage({super.key});

  @override
  State<TransformWidgetPage> createState() => _TransformWidgetPageState();
}

List<Widgetdata> widgetdata = [
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_rotet.png", title: "Rotate Transform", ),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_scale.png", title: "Scale Transform", ),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_translate.png", title: "Translate Transform", ),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_skew.png", title: "Skew Transform", ),
];

class _TransformWidgetPageState extends State<TransformWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back,size: 5.h,),

          ),
          title: Text("Transform Widget ",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w900),),
          actions: [
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 4.h,right: 4.w,left: 4.w,bottom: 2.h),
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: widgetdata.length,
            itemBuilder: (context, index) {
              return  InkWell(
                onTap: () {
                  switch(index){
                    case 0:
                      Get.to(RotateTransfromPage());
                      break;
                    case 1:
                      Get.to(ScaleTransfromPage());
                      break;
                    case 2:
                      Get.to(TranslateTransfromPage());
                      break;
                    case 3:
                      Get.to(SkewTransfromPage());
                      break;
                  }
                },
                child: Row(
                  children: [
                    Container(
                      height: 9.h,
                      width: 18.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        color: widgetdata[index].color1,
                        image: DecorationImage(
                          image: AssetImage(widgetdata[index].img.toString()),scale: 1,
                        ),
                      ),
                    ),
                    SizedBox(width: 4.w,),
                    Container(
                      height: 9.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.all(Radius.circular(10),),
                      ),
                      child: Padding(
                        padding:  EdgeInsets.only(left: 2.w,right: 2.w,top: 2.5.h,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(widgetdata[index].title.toString(),style: TextStyle(fontSize: 15.sp),),
                              ],
                            ),
                            Padding(
                              padding:  EdgeInsets.only(bottom: 2.h),
                              child: CircleAvatar(

                                radius: 15,
                                backgroundColor:  widgetdata[index].color1,
                                child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }, separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 2.h,); },
          ),
        ),
      ),
    );
  }
}






class Widgetdata {
  String img;
  Color color1;
  String title;
  Widgetdata({
    required this.color1,
    required this.img,
    required this.title,

  });
}

