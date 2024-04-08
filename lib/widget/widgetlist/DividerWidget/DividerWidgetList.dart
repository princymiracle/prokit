

import 'package:devkitflutteruikit/widget/widgetlist/DividerWidget/DividerWidgetitem/VerticalDividerPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'DividerWidgetitem/HorizontalDividerPage.dart';




class DividerWidgetList extends StatefulWidget {
  const DividerWidgetList({super.key});

  @override
  State<DividerWidgetList> createState() => _DividerWidgetListState();
}

List<Widgetdata> widgetdata = [
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_d2.png", title: "Horizontal Divider", ),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_d1.png", title: "Vertical Divider", ),

];

class _DividerWidgetListState extends State<DividerWidgetList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back,size: 5.h,),

          ),
          title: Text("Divider Widget",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w900),),
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
                      Get.to(HorizontalDividerPage());
                      break;
                    case 1:
                      Get.to(VerticalDividerPage());
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
                            )
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

