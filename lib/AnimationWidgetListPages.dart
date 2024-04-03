import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'WidgetList_Screen/AnimatedItem/AnimatedCrossFade/AnimatedCrossFadeListPage.dart';
import 'WidgetList_Screen/AnimatedItem/AnimatedList.dart';
import 'WidgetList_Screen/AnimatedItem/AnimatedOpacity.dart';
import 'WidgetList_Screen/AnimatedItem/AnimatedPhysicalModel.dart';
import 'WidgetList_Screen/AnimatedItem/AnimatedPositioned.dart';
import 'WidgetList_Screen/AnimatedItem/AnimatedSize.dart';
import 'WidgetList_Screen/AnimatedItem/AnimatedWidget.dart';
import 'WidgetList_Screen/AnimatedItem/AnimateddeFaultTextstyle.dart';

class AnimationWidgetListPages extends StatefulWidget {
  const AnimationWidgetListPages({super.key});

  @override
  State<AnimationWidgetListPages> createState() => _AnimationWidgetListPagesState();
}

List<Widgetdata> widgetdata = [
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_a1.png", title: "Animated Cross Fade", subtitle: "The widget provides a great cross-\nfade between two children widgets.",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_a2.png", title: "Animated Default TextStyle", subtitle: "Animated version of Default \nTextStyle",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_a3.png", title: "Animated List", subtitle: "AnimatedList to make your lists \nmore dynamic",),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_a4.png", title: "Animated Opacity", subtitle: "Animated version of Opacity",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_a5.png", title: "Animated Physical Model", subtitle: "Animated version of PhysicalModel",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_a6.png", title: "Animated Positioned", subtitle: "Animated version of Positioned",),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_a7.png", title: "Animated Size", subtitle: "Animates its own size and clips and\naligns its child",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_a8.png", title: "Animated Widget", subtitle: "Animated that rebuilds when the\ngiven Listenable changes value",),

];

class _AnimationWidgetListPagesState extends State<AnimationWidgetListPages> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back,size: 3.h,),

          ),
          title: Text("Animated Widgets",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900),),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 2.h,right: 4.w,left: 4.w,bottom: 2.h),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: widgetdata.length,
                    itemBuilder: (context, index) {
                      return  InkWell(
                        onTap: () {
                              switch(index){
                                case 0:
                                  Get.to(ACrossListPage(),);
                                  break;
                                case 1:
                                  Get.to(AnimatedDefaultPage(),);
                                  break;
                                case 2:
                                  Get.to(AnimatedListPage());
                                  break;
                                case 3:
                                  Get.to(AnimatedOpacityPage(),);
                                  break;
                                case 4:
                                  Get.to(AnimatedPhysicalPage());
                                  break;
                                case 5:
                                  Get.to(AnimatedPositionedPage());
                                  break;
                                case 6:
                                  Get.to(AnimatedSizePage(),);
                                  break;
                                case 7:
                                  Get.to(AnimatedWidgetPage(),);
                                  break;
                              }
                            },
                        child: Row(
                          children: [
                            Container(
                              height: 10.h,
                              width: 17.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(6)),
                                color: widgetdata[index].color1,
                                image: DecorationImage(
                                  image: AssetImage(widgetdata[index].img.toString()),scale: 1,
                                ),
                              ),
                            ),
                            SizedBox(width: 5.w,),
                            Container(
                              height: 11.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.all(Radius.circular(10),),
                              ),
                              child: Padding(
                                padding:  EdgeInsets.only(left: 2.w,right: 2.w,top: 1.h,),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(widgetdata[index].title.toString(),style: TextStyle(fontSize: 12.sp),),
                                        Text(widgetdata[index].subtitle.toString(),style: TextStyle(fontSize: 10.sp,color: Colors.black54),),
                                      ],
                                    ),
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundColor:  widgetdata[index].color1,
                                      child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
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
                ],
              ),
            ),
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
  String subtitle;

  Widgetdata({
    required this.color1,
    required this.img,
    required this.title,
    required this.subtitle,
  });
}



























//
// Row(
// children: [
// Container(
// height: 8.h,
// width: 17.w,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.all(Radius.circular(6)),
// color: Color(0xff9888A5),
// image: DecorationImage(
// image: AssetImage("assets/icons/icon_a.png"),scale: 0.6,
// ),
// ),
// ),
// SizedBox(width: 5.w,),
// Container(
// height: 9.h,
// width: 72.w,
// decoration: BoxDecoration(
// color: Colors.grey.withOpacity(0.1),
// borderRadius: BorderRadius.all(Radius.circular(10),),
// ),
// child: Padding(
// padding:  EdgeInsets.only(left: 2.w,right: 2.w,top: 1.h,),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text("Absorb Pointer",style: TextStyle(fontSize: 12.sp),),
// Text("A Widget that absorbs pointers \nduring hit testing ",style: TextStyle(fontSize: 10.sp,color: Colors.black54),),
// ],
// ),
// CircleAvatar(
// radius: 15,
// backgroundColor:  Color(0xff9888A5),
// child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
// )
// ],
// ),
// ),
// ),
// ],
// ),
// SizedBox(height: 2.h),
// Row(
// children: [
// Container(
// height: 8.h,
// width: 17.w,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.all(Radius.circular(6)),
// color: Color(0xffC0B298),
// image: DecorationImage(
// image: AssetImage("assets/icons/icon_align.png"),scale: 0.6,
// ),
//
// ),
// ),
// SizedBox(width: 5.w,),
// Container(
// height: 9.h,
// width: 72.w,
// decoration: BoxDecoration(
// color: Colors.grey.withOpacity(0.1),
// borderRadius: BorderRadius.all(Radius.circular(10),),
// ),
// child: Padding(
// padding:  EdgeInsets.only(left: 2.w,right: 2.w,top: 1.h,),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text("Absorb Pointer",style: TextStyle(fontSize: 12.sp),),
// Text("A Widget that absorbs pointers \nduring hit testing ",style: TextStyle(fontSize: 10.sp,color: Colors.black54),),
// ],
// ),
// CircleAvatar(
// radius: 15,
// backgroundColor:  Color(0xffC0B298),
// child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
// )
// ],
// ),
// ),
// ),
// ],
// ),
// SizedBox(height: 2.h),
// Row(
// children: [
// Container(
// height: 8.h,
// width: 17.w,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.all(Radius.circular(6)),
// color: Color(0xff9BBEC7
//
// ),
// image: DecorationImage(
// image: AssetImage("assets/icons/icon_animated.png"),scale: 0.6,
// ),
//
// ),
// ),
// SizedBox(width: 5.w,),
// Container(
// height: 9.h,
// width: 72.w,
// decoration: BoxDecoration(
// color: Colors.grey.withOpacity(0.1),
// borderRadius: BorderRadius.all(Radius.circular(10),),
// ),
// child: Padding(
// padding:  EdgeInsets.only(left: 2.w,right: 2.w,top: 1.h,),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text("Absorb Pointer",style: TextStyle(fontSize: 12.sp),),
// Text("A Widget that absorbs pointers \nduring hit testing ",style: TextStyle(fontSize: 10.sp,color: Colors.black54),),
// ],
// ),
// CircleAvatar(
// radius: 15,
// backgroundColor:  Color(0xff9BBEC7),
// child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
// )
// ],
// ),
// ),
// ),
// ],
// ),



// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/get_navigation.dart';
// import 'package:sizer/sizer.dart';
//
// class WidgetPages extends StatefulWidget {
//   const WidgetPages({super.key});
//
//   @override
//   State<WidgetPages> createState() => _WidgetPagesState();
// }
//
//
// class _WidgetPagesState extends State<WidgetPages> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(onPressed: () => Get.back(), icon: Icon(Icons.arrow_back),),
//         title: Text("Miracle Kit",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp),),
//         actions: [
//           Padding(
//             padding: EdgeInsets.only(right: 3.w),
//             child: Icon(Icons.settings),
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: EdgeInsets.only(left: 2.w,right: 2.w,top: 1.h),
//       ),
//     );
//   }
// }
//
// class Widgetdata {
//
//   String img;
//   Color color1;
//   String title;
//   String subtitle;
//   Color color2;
//   Icon icon;
//   Color color3;
//
//   Widgetdata({
//     required this.img,
//     required this.color1,
//     required this.title,
//     required this.subtitle,
//     required this.color2,
//     required this.icon,
//     required this.color3,
// });
// }