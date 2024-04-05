import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AnimatedContainerPage3 extends StatefulWidget {
  const AnimatedContainerPage3({super.key});

  @override
  State<AnimatedContainerPage3> createState() => _AnimatedContainerPage3State();
}

class _AnimatedContainerPage3State extends State<AnimatedContainerPage3> {

  AlignmentGeometry _alignment = Alignment.topLeft;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Animated Align",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Container(

        child: Stack(
          children: [
            Image.asset('assets/images/img_bgImg.png',fit: BoxFit.cover,height: double.infinity,),
            Padding(padding: EdgeInsets.only(top: 5.h,left: 4.w,right: 4.w,bottom: 4.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomButton(title: "Move to top right",
                    onTap: (){
                      setState(() {
                        _alignment = _alignment == Alignment.topRight ? Alignment.topLeft : Alignment.topRight;
                      });
                    },
                  ),
                  SizedBox(height: 2.h,),
                  CustomButton(title: "Move to bottom right",
                    onTap: (){
                      setState(() {
                        _alignment = _alignment == Alignment.bottomRight ? Alignment.topLeft : Alignment.bottomRight;
                      });
                    },
                  ),
                  SizedBox(height: 2.5.h,),
                  Stack(
                    children:[
                      Container(
                        height: 50.h,
                        width: 90.w,
                        color: Colors.grey.withOpacity(0.4),
                        child: AnimatedAlign(
                          duration: Duration(seconds: 1),
                          alignment: _alignment,
                          child: Container(
                            height: 10.h,
                            width: 10.h,
                            color: Colors.pink,
                            child: Center(child: Text("Container",style: TextStyle(color: Colors.white),)),
                          ),
                        )
                      ),
                    ]
                  ),

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
        fixedSize: MaterialStateProperty.all(size ?? (Size(55.w, 4.h)),),
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
