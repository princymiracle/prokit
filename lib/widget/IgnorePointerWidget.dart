
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';



class IgnorePointerPage extends StatefulWidget {
  const IgnorePointerPage({super.key});

  @override
  State<IgnorePointerPage> createState() => _IgnorePointerPageState();
}

class _IgnorePointerPageState extends State<IgnorePointerPage> {
  bool  _isClick = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Ignore Pointer",style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor:  Color(0xff9BBEC7),
      ),
      body: Container(
        child: Stack(
          children: [
        Padding(padding: EdgeInsets.only(top: 4.h,left: 6.w,right: 6.w,bottom: 4.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Ignore Pointer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
              SizedBox(height: 1.5.h,),
              Text("A Widget that is invisible during hit testing",style: TextStyle(color: Colors.black54,fontSize: 13.sp),),
              SizedBox(height: 2.h,),
              Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
              SizedBox(height: 2.h,),
             Switch(
               focusColor: Colors.blue,
                  activeColor: Colors.blue,
                  inactiveThumbColor: Colors.blue,
                  value: _isClick,
                  onChanged: (bool value) {
                    setState(() {
                      _isClick = value;
                    });
                  }),

             /* CustomButton(title: "Change Ignoring to true",
                onTap: (){
                setState(() {
                  _isClick;
                });
                },
              ),*/
              SizedBox(height: 2.h,),
              Row(
                children: [
                  Text("Ignoring",style: TextStyle(fontSize: 10.sp),),
                  SizedBox(width: 1.w,),
                  Text(":",style: TextStyle(fontSize: 10.sp),),
                  SizedBox(width: 1.w,),
                  Text("$_isClick",style: TextStyle(fontSize: 10.sp),),
                ],
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
          letterSpacing: 0.6,
          fontSize: fontSIze ?? 10.sp,
          color: fontColor ?? Colors.grey,
        ),
      ),
    );
  }
}