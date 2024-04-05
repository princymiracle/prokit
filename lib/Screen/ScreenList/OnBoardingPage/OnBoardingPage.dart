/*
import 'package:devkitflutteruikit/Constants/IconPath.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';


class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {

  List<OnBoardingData> onboradingdata = [
    OnBoardingData(img: IconPath.leaf, title: "Onboarding 1",color: Color(0xff13246C)),
    OnBoardingData(img: IconPath.leaf1, title: "Onboarding 2",color: Color(0xff136C3D)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("On Boarding",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.bold,letterSpacing: 1),),
        centerTitle: true,
        backgroundColor: Colors.white60,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 4.w,right: 5.w,top: 1.5.h,bottom: 7.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("OnBoarding Screen",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 0.8,fontSize: 14.sp),),
            SizedBox(height: 1.5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text("OnBoarding Screen used of ",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 11.sp,color: Colors.grey),),
                    Text("quick tutorial of the apps",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 11.sp,color: Colors.grey),),
                  ],
                ),
                Image.asset(IconPath.onboarding,fit: BoxFit.cover,height: 5.h,color: Colors.blue,),
              ],
            ),
            SizedBox(height: 3.h,),
            Text("Screen List",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 0.8,fontSize: 14.sp),),
            SizedBox(height: 3.h,),
            Column(
              children: [
               ListView.separated(
                 shrinkWrap: true,
                 itemCount: onboradingdata.length,
                 itemBuilder: (context, index) {
                   return   InkWell(
                     onTap: () {
                       switch(index){
                         case 0:
                         Get.toNamed(Routes.onboarding1);
                         break;
                         case 1:
                           Get.toNamed(Routes.onboarding2);
                           break;
                       }
                     },
                     child: Container(
                       height: 6.h,
                       width: double.infinity,
                       decoration: BoxDecoration(
                         color: Colors.white60,
                           borderRadius: BorderRadius.circular(10),
                           boxShadow: [
                             BoxShadow(
                               color: Colors.black.withOpacity(0.1),
                               spreadRadius: 2,
                               blurRadius: 10,
                             ),
                           ]
                       ),
                       child: ListTile(
                          leading: Image.asset(onboradingdata[index].img.toString()),
                         title: Text(onboradingdata[index].title.toString(),style: TextStyle(fontSize: 12.sp,color: Colors.black45,fontWeight: FontWeight.w900,letterSpacing: 1),),
                         trailing: Icon(Icons.arrow_forward_ios,color: onboradingdata[index].color,),
                       ),
                     ),
                   );
                 }, separatorBuilder: (BuildContext context, int index) {
                   return SizedBox(height: 3.h,);
               },
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
class OnBoardingData {
  String img;
  String title;
  Color color;


  OnBoardingData({
    required this.img,
    required this.title,
    required this.color,
  });
}*/
