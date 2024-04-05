import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AnimatedContainerPage1 extends StatefulWidget {
  const AnimatedContainerPage1({super.key});

  @override
  State<AnimatedContainerPage1> createState() => _AnimatedContainerPage1State();
}

class _AnimatedContainerPage1State extends State<AnimatedContainerPage1> {

  var _height = 100.0;
  var _width = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Animated Container 1 ",style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor:  Color(0xff9888A5),
      ),
      body: Container(
        child: Stack(
          children: [
            Padding(padding: EdgeInsets.only(top: 15.h,left: 4.w,right: 4.w,bottom: 5.h),
              child: Center(
                child: Column(
                  children: [
                    AnimatedContainer(

                      duration: Duration(seconds: 1),

                      height:_height,
                      width: _width,
                      color:  Color(0xff9888A5).withOpacity(0.4),
                      child: Center(child: Text("Continer",style: TextStyle(fontSize: 12.sp,color: Colors.white,fontWeight: FontWeight.bold),)),

                    ),
                    SizedBox(height: 3.h,),
                    CustomButton(title: "Change Size 1",
                      onTap: (){
                        setState(() {
                          _height = _height == 100 ? 200 :100;
                          _width = _width == 100 ? 200 :100;

                        });
                      },
                    ),
                    SizedBox(height: 3.h,),
                    CustomButton(title: "Change Size 2",
                      onTap: (){
                        setState(() {
                          _height = _height == 200 ? 100 :200;
                          _width = _width == 200 ? 100 :200;

                        });
                      },

                    ),
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
        fixedSize: MaterialStateProperty.all(size ?? (Size(38.w, 4.h)),),
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







