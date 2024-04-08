import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AnimatedPositionedPage extends StatefulWidget {
  const AnimatedPositionedPage({super.key});

  @override
  State<AnimatedPositionedPage> createState() => _AnimatedPositionedPageState();
}

class _AnimatedPositionedPageState extends State<AnimatedPositionedPage> {

  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,size: 3.h,color: Colors.white),
        ),
        title: Text("Animated Positioned",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900,color: Colors.white),),
        backgroundColor: Color(0xff9BBEC7),
        centerTitle: true,
      ),
      body: Container(
        child: Stack(
          children: [
            Padding(padding: EdgeInsets.only(top: 5.h,left: 10.w,right: 10.w),
              child: Center(
                child: Column(
                  children: [
                    CustomButton(title: "Change",
                      onTap: (){
                        setState(() {
                          selected = !selected;
                        });
                      },
                    ),
                    SizedBox(height: 2.h,),
                    Container(
                      height: 25.h,
                      width: 55.w,
                      color: Colors.grey.withOpacity(0.7),
                      child: Stack(
                        children: [
                          AnimatedPositioned(
                            top: selected ? 1 : 150,
                            height: selected ? 230 :50,
                            width: selected ? 50 : 230,
                            duration: Duration(seconds: 2),
                            /*  curve: Curves.fastOutSlowIn,*/
                            child: Container(
                              height: 40.h,
                              width: 25.w,
                              decoration: BoxDecoration(
                                color: Colors.pink,
                              ),
                              child: Center(child: Text("Hello",style: TextStyle(color: Colors.white),)),
                            ), ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class CustomButton extends StatelessWidget {
  String title;
  double? fontSIze;
  FontWeight? fontWeight;
  double? radius;
  Color? pressedColor;
  Color? bgColor;
  Function? onTap;
  Color? fontColor;
  Size? size;

  CustomButton({
    required this.title,
    this.fontSIze,
    this.fontWeight,
    this.radius,
    this.size,

    this.bgColor = Colors.lightBlue,
    this.onTap,
    this.fontColor = Colors.white,

  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onTap!(),
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(size ?? (Size(30.w, 5.h)),),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 5),
          ),
        ),

        backgroundColor: MaterialStateProperty.all(bgColor ?? Colors.white ),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 0.6,
          fontSize: fontSIze ?? 10.sp,
          color: fontColor ?? Colors.grey,
        ),
      ),
    );
  }
}