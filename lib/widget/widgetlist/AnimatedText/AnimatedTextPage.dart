import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'AnimatedTextItem/ColorizeText.dart';
import 'AnimatedTextItem/FadeText.dart';
import 'AnimatedTextItem/FlickerText.dart';
import 'AnimatedTextItem/RotateText.dart';
import 'AnimatedTextItem/ScaleText.dart';
import 'AnimatedTextItem/TextLiquidFillText.dart';
import 'AnimatedTextItem/TyperTextPage.dart';
import 'AnimatedTextItem/TyperwriterText.dart';
import 'AnimatedTextItem/WavyText.dart';


class AnimatedTextPage extends StatefulWidget {
  const AnimatedTextPage({super.key});

  @override
  State<AnimatedTextPage> createState() => _AnimatedTextPageState();
}

List<Widgetdata> widgetdata = [
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_appbar1.png", title: "Rotate Text", ),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_f1.png", title: "Fade Text", ),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_contianer2.png", title: "Typer Text", ),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_appbar3.png", title: "Typer writer Text", ),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_a2.png", title: "Scale Text", ),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_a8.png", title: "Colorize Text", ),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_animated2.png", title: "TextLiquid Fill Text", ),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_button2.png", title: "Wavy Text", ),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_searchbar3.png", title: "Flicker Text", ),

];

class _AnimatedTextPageState extends State<AnimatedTextPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back,size: 4.h,),

          ),
          title: Text("Animated Text",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w900),),
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
                      Get.to(RotateTextPage());
                      break;
                    case 1:
                      Get.to(FadeTextPage());
                      break;
                    case 2:
                      Get.to(TyperTextPage());
                      break;
                    case 3:
                      Get.to(TyperwriterTextPage());
                      break;
                    case 4:
                      Get.to(ScaleTextPage());
                      break;
                    case 5:
                      Get.to(ColorizeTextPage());
                      break;
                    case 6:
                      Get.to(TextLiquidFillTextPage());
                      break;
                    case 7:
                      Get.to(WavyTextPage());
                      break;
                    case 8:
                      Get.to(FlickerTextPage());
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

