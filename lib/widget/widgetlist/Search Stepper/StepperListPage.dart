import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'SearchStepperItem/CustomStepperPage.dart';
import 'SearchStepperItem/TopandBottomTitleStepper.dart';


class StepperListPage extends StatefulWidget {
  const StepperListPage({super.key});

  @override
  State<StepperListPage> createState() => _StepperListPageState();
}

List<Widgetdata> widgetdata = [
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icons_strper1.png", title: "Top and Bottom \nTitle Stepper", ),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icons_strper2.png", title: "Custom Stepper",),

];

class _StepperListPageState extends State<StepperListPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back,size: 3.h,),
          ),
          title: Text("Stepper Widget",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900),),
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
                            Get.to(TopandBottomTitleStepper());
                            break;
                          case 1:
                            Get.to(CustomStepperPage());
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
                            height: 12.h,
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
                                      Text(widgetdata[index].title.toString(),style: TextStyle(fontSize: 12.sp),),
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
