
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'ButtonItem/DropdownButtonPage.dart';
import 'ButtonItem/ElevatedButtonPage.dart';
import 'ButtonItem/ElevatedButtonwithbasicproperty.dart';
import 'ButtonItem/FloatingActionbuttonPage.dart';
import 'ButtonItem/IconButtonPage.dart';
import 'ButtonItem/OutlineButtonPage.dart';
import 'ButtonItem/SelectionControl.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({super.key});

  @override
  State<ButtonsPage> createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {

  List<Widgetdata> widgetdata = [
    Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_button1.png", title: "Button with Basic Property", ),
    Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_button2.png", title: "Elevated Button", ),
    Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_button3.png", title: "Outline Button", ),
    Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_button4.png", title: "FloatingAction Button", ),
    Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_button5.png", title: "Icon Button", ),
    Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_button6.png", title: "Dropdown Button", ),
    Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_button7.png", title: "Selection Control", ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back,size: 4.h,),

          ),
          title: Text("Button Widget",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w900),),
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
                      Get.to(ElevatedButtonwithbasicproperty());
                      break;
                    case 1:
                      Get.to(ElevatedButtonPage());
                      break;
                    case 2:
                      Get.to(OutlineButtonPage());
                      break;
                    case 3:
                      Get.to(FloatingActionbuttonPage());
                      break;
                    case 4:
                      Get.to(IconButtonPage());
                      break;
                    case 5:
                      Get.to(DropdownButtonPage());
                      break;
                    case 6:
                      Get.to(SelectionControlPage());
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
                                Text(widgetdata[index].title.toString(),style: TextStyle(fontSize: 14.sp),),

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

