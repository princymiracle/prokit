import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';



class AnimatedAlignPage extends StatefulWidget {
  const AnimatedAlignPage({super.key});

  @override
  State<AnimatedAlignPage> createState() => _AnimatedAlignPageState();
}

class _AnimatedAlignPageState extends State<AnimatedAlignPage> {
  AlignmentGeometry _alignment = Alignment.center;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Animated Align",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xffC0B298),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 5.h,right: 7.w,left: 7.w),
        child: Stack(
          children: [
            Wrap(
              runSpacing: 19,
              spacing: 40,
              children: [
                CustomButton(
                    title: "Top Left",
                  onTap: (){
                    setState(() {
                      _alignment = _alignment == Alignment.topLeft ? Alignment.center : Alignment.topLeft;
                    });
                  },
                ),
                CustomButton(
                  title: "Top Center",
                  onTap: (){
                    setState(() {
                      _alignment = _alignment == Alignment.topCenter ? Alignment.center : Alignment.topCenter;
                    });
                  },
                ),
                CustomButton(
                  title: "Top Right",
                  onTap: (){
                    setState(() {
                      _alignment = _alignment == Alignment.topRight ? Alignment.center : Alignment.topRight;
                    });
                  },
                ),
                CustomButton(
                  title: "Center Left",
                  onTap: (){
                    setState(() {
                      _alignment = _alignment == Alignment.centerLeft ? Alignment.center : Alignment.centerLeft;
                    });
                  },
                ),
                CustomButton(
                  title: "Center",
                  onTap: (){
                    setState(() {
                      _alignment = _alignment == Alignment.center ? Alignment.center : Alignment.center;
                    });

                  },
                ),
                CustomButton(
                  title: "Center Right",
                  onTap: (){
                    setState(() {
                      _alignment = _alignment == Alignment.centerRight ? Alignment.center : Alignment.centerRight;
                    });
                  },
                ),
                CustomButton(
                  title: "Bottom Left",
                  onTap: (){
                    setState(() {
                      _alignment = _alignment == Alignment.bottomLeft ? Alignment.center : Alignment.bottomLeft;
                    });
                  },
                ),
                CustomButton(
                  title: "Bottom Center",
                  onTap: (){
                    setState(() {
                      _alignment = _alignment == Alignment.bottomCenter ? Alignment.center : Alignment.bottomCenter;
                    });

                  },
                ),
                CustomButton(
                  title: "Bottom Right",
                  onTap: (){
                    setState(() {
                      _alignment = _alignment == Alignment.bottomRight ? Alignment.center : Alignment.bottomRight;
                    });
                  },
                ),



              ],
            ),
            Padding(
              padding:  EdgeInsets.only(top: 52.h),
              child: Container(
                height: 25.h,
                width: 55.w,
                color: Color(0xffC0B298).withOpacity(0.6),
                child: AnimatedAlign(
                  duration: Duration(seconds: 1),
                  alignment: _alignment,
                  child: Image.asset("assets/images/img_Flutter.png",height: 5.h,),
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
        fixedSize: MaterialStateProperty.all(size ?? (Size(37.w, 4.h)),),
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
          fontSize: fontSIze ?? 9.7.sp,
          color: fontColor ?? Colors.grey,
        ),
      ),
    );
  }
}
