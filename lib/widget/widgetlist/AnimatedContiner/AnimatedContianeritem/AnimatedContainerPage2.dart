
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AnimatedContainerPage2 extends StatefulWidget {
  const AnimatedContainerPage2({super.key});

  @override
  State<AnimatedContainerPage2> createState() => _AnimatedContainerPage2State();
}

class _AnimatedContainerPage2State extends State<AnimatedContainerPage2> {

  var  _color = Colors.pink;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Animated Container 2",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset('assets/images/img_bgImg.png',fit: BoxFit.cover,height: double.infinity,),
            Padding(padding: EdgeInsets.only(top: 15.h,left: 4.w,right: 4.w,bottom: 5.h),
              child: Center(
                child: Column(
                  children: [
                    AnimatedContainer(

                      duration: Duration(seconds: 1),

                      height: 20.h,
                      width: 20.h,
                      color: _color,
                      child: Center(child: Text("Continer",style: TextStyle(fontSize: 12.sp,color: Colors.white,fontWeight: FontWeight.bold),)),

                    ),
                    SizedBox(height: 3.h,),
                    CustomButton(title: "Change Color to green",
                      onTap: (){
                        setState(() {
                        _color = Colors.green ;

                        });
                      },
                    ),
                    SizedBox(height: 3.h,),
                    CustomButton(title: "Change Color to orange ",
                      onTap: (){
                        setState(() {
                          _color =  Colors.orange;

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
        fixedSize: MaterialStateProperty.all(size ?? (Size(50.w, 4.h)),),
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

          fontSize: fontSIze ?? 10.sp,
          color: fontColor ?? Colors.grey,
        ),
      ),
    );
  }
}