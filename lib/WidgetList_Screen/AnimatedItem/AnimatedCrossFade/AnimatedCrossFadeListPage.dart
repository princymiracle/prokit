import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'AnimatedCrossFade.dart';
import 'AnimatedCrossFade2.dart';


class ACrossListPage extends StatefulWidget {
  const ACrossListPage({super.key});

  @override
  State<ACrossListPage> createState() => _ACrossListPageState();
}

List<Widgetdata> widgetdata = [
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_ac1.png", title: "Animated Cross Fade 1\nStandart", ),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_ac2.png", title: "Animated Cross Fade 2\nBetween Widget", ),

];

class _ACrossListPageState extends State<ACrossListPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back,size: 3.h,),

          ),
          title: Text("Animated Cross Fade Widgets",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900),),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 2.h,right: 4.w,left: 4.w,bottom: 2.h),
          child: Container(
            child: Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: widgetdata.length,
                  itemBuilder: (context, index) {
                    return  InkWell(
                      onTap: () {
                        switch(index){
                          case 0:
                            Get.to(AnimatedCrossFadePage(),);
                            break;
                          case 1:
                            Get.to(AnimatedCrossFadePage2(),);
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
                              padding:  EdgeInsets.only(left: 3.w,right: 2.w,top: 1.h,),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(widgetdata[index].title.toString(),style: TextStyle(fontSize: 14.sp),),
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




// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:sizer/sizer.dart';
// import 'AnimatedCrossFade.dart';
// import 'AnimatedCrossFade2.dart';
//
// class ACrossListPage extends StatelessWidget {
//   String title;
//   ACrossListPage({super.key,this.title = 'List View'});
//
//   List listData = [
//     "Animated Cross Fade 1 - Standart",
//     "Animated Cross Fade 2 - Between Widget",
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(centerTitle: true,
//         leading: IconButton(onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
//         title: Text(title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
//         backgroundColor: Theme.of(context).secondaryHeaderColor,
//       ),
//       body: SafeArea(
//         child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(1.w),
//           decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bgImage.png"),fit: BoxFit.cover),),
//           child: Padding( padding: EdgeInsets.all(5.w),
//             child: Container(
//               child:ListView.builder(
//                 itemCount: listData.length,shrinkWrap: true,
//                 itemBuilder: (context, index) {
//                   return Padding(padding: EdgeInsets.all(2.w),
//                     child: InkWell(
//                       onTap: () {
//                         switch(index){
//                           case 0:
//                             Get.to(AnimatedCrossFadePage(),);
//                             break;
//                           case 1:
//                             Get.to(AnimatedCrossFadePage2(),);
//                             break;
//                         }
//                       },
//                       child: Container(width: 80.w,height: 8.h,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(2.w),
//                           image: DecorationImage(image: AssetImage("assets/images/31.png"),fit: BoxFit.cover),),
//                         child: Center(
//                           child: Text(
//                             listData[index], style: TextStyle(color: Theme.of(context).secondaryHeaderColor,fontWeight: FontWeight.w600),
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
