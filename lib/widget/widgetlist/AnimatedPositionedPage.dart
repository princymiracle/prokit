
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
      appBar:  AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Animated Positioned",style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset('assets/images/img_bgImage.png',fit: BoxFit.cover,height: double.infinity,),
            Padding(padding: EdgeInsets.only(top: 7.h,left: 5.w,right: 5.w),
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
                    height: 20.h,
                    width: 50.w,
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
                              height: 35.h,
                              width: 20.w,
                              decoration: BoxDecoration(
                                color: Colors.pink,
                              ),
                              child: Center(child: Text("Hello",style: TextStyle(color: Colors.white),)),
                            ), )
                      ],
                    ),
                  )
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
        fixedSize: MaterialStateProperty.all(size ?? (Size(25.w, 4.h)),),
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