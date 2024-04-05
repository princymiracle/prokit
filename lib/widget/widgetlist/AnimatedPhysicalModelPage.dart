import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';



class AnimatedPhysicalModelPage extends StatefulWidget {
  const AnimatedPhysicalModelPage({super.key});

  @override
  State<AnimatedPhysicalModelPage> createState() => _AnimatedPhysicalModelPageState();
}

class _AnimatedPhysicalModelPageState extends State<AnimatedPhysicalModelPage> {
  bool _isFlat = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Animated Physical Model",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset('assets/images/img_bgImg.png',fit: BoxFit.cover,height: double.infinity,),
            Padding(padding: EdgeInsets.only(top: 10.h,right: 5.w,left: 7.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomButton(title: "Change",
                    onTap: (){
                   setState(() {
                     _isFlat = !_isFlat;
                   });
                    },
                  ),
                  SizedBox(height: 4.h,),
                 AnimatedPhysicalModel(
                     child:  Container(
                       height: 20.h,
                       width: 35.w,
                       child: Image.asset("assets/images/img_Flutter.png",height: 5.h,width: 5.w,scale: 1,),

                     ),
                     shape: BoxShape.rectangle,
                     curve: Curves.linear,
                     elevation: _isFlat ? 0 : 16,
                    /* color: Colors.blue.withOpacity(0.3),*/
                     color: Colors.white,
                     shadowColor: Colors.black,
                     duration: Duration(milliseconds: 1500),),
                 /* AnimatedPhysicalModel(
                    duration: Duration(microseconds: 1500),
                    shape: BoxShape.rectangle,
                    shadowColor: Colors.grey,

                    elevation: _isFlat ?0 :16,
                    color:_isFlat ? Colors.blue.withOpacity(0.3) :Colors.blue.withOpacity(0.3),
                    child: Container(
                      height: 30.h,
                      width: 30.w,
                      child: Image.asset(ImagePath.flutter,fit: BoxFit.cover,height: 20.h,),
                    ),
                  ),*/
                ],
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
        fixedSize: MaterialStateProperty.all(size ?? (Size(28.w, 4.h)),),
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
          fontSize: fontSIze ?? 12.sp,
          color: fontColor ?? Colors.grey,
        ),
      ),
    );
  }
}