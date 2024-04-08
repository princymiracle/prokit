import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ElevatedButtonwithbasicproperty extends StatelessWidget {
   String title;
   ElevatedButtonwithbasicproperty({super.key,this.title ='Flat Button'});

   bool buttonenabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(), icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(title,style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xff9888A5),
      ),

      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(top: 2.h,bottom: 2.h),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        allButton(
                            context: context,
                            conWidth: 31.w,conHeight: 5.h,
                            borderRadius: 1.w,
                            text:"FLAT BUTTON",toastText: 'Flat Button Pressed!',
                            buttonColor: Color(0xffFFEBD4)),
                        SizedBox(width: 2.w,),
                        iconButton(context: context, text: "FLAT BUTTON",toastText: 'Flat Button Pressed!'),
                      ],
                    ),
                  ),
                  Padding(
                      padding:EdgeInsets.only(top: 3.h),
                      child: disableButton(
                          context: context,
                          text: "DISABLE BUTTON",
                         disableButtons: buttonenabled,
                      ),
                  ),
                  Padding(
                      padding:EdgeInsets.only(top: 3.h),
                      child: disableIconButton(
                        context: context,
                        text: "DISABLE BUTTON",
                        disableButtons: buttonenabled,
                     ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 3.h),
                      child: allButton(
                          context: context,
                          conWidth: 36.w,conHeight: 5.h,
                          text: "Rectangle border",
                          borderRadius: 1.w,toastText: 'Rectangle border Flat Button Pressed!',
                          buttonColor: Color(0xffFFEBD4)
                      ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 3.h),
                      child:roundedBorderButton(
                          context: context,
                          conWidth: 35.w,toastText: 'Rounded border Flat Button Pressed!',
                          text:  "Rounded border",textSize: 13,
                          borderColor: Theme.of(context).primaryColorDark,
                          buttonColor: Color(0xffFFEBD4),
                          borderRadius: 20.w,
                      ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.h),
                    child: roundedBorderButton(
                      context: context,
                      conWidth: 50.w,toastText: 'Rounded Colored border Flat Button Pressed!',
                      text: "Rounded Colored border",textSize: 13,
                      borderRadius: 2.w,
                      buttonColor: Color(0xffFFEBD4),
                      borderColor: Theme.of(context).primaryColorDark,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.h),
                    child: roundedBorderButton(
                      context: context,
                      conWidth: 50.w,toastText: 'Rounded Colored border Flat Button Pressed!',
                      text: "Rounded Colored border",textSize: 13,
                      borderRadius: 2.w,
                      buttonColor: Color(0xffFFEBD4),
                      borderColor: Theme.of(context).primaryColorDark,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.h),
                    child: roundedBorderButton(
                      context: context,
                      conWidth: 42.w,toastText: 'Text Style of Label Flat Button Pressed!',
                      text: "Text Style of Label",textSize: 13,
                      borderRadius: 2.w,textStyle: FontStyle.italic,
                      buttonColor: Color(0xffFFEBD4),
                      borderColor: Theme.of(context).primaryColorDark,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.h),
                    child: allButton(
                      context: context,toastText: 'fill color rectangle button Pressed!',
                      conWidth: 50.w,conHeight: 5.h,
                      text: "fill color rectangle button",
                      borderRadius: 1.w,
                      buttonColor: Color(0xffFFEBD4),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.h),
                    child: roundedBorderButton(
                      context: context,
                      conWidth: 48.w,toastText: 'fill color round button Pressed!',
                      text: "fill color round button",
                      borderRadius: 20.w,
                      buttonColor: Color(0xffFFEBD4),
                      borderColor: Theme.of(context).bottomAppBarColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.h),
                    child: allButton(
                      context: context,
                      conWidth: 55.w,toastText: 'Rectangle Gradient Flat Button Pressed!',
                      text: "Rectangle Gradient",
                      conHeight: 6.h,
                      gradientColor: const LinearGradient(
                          colors:  [
                            Color(0xfff8e8d7),
                            Color(0xffffcf9d)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          tileMode: TileMode.repeated
                      )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.h),
                    child: allButton(
                      context: context,
                      conWidth: 55.w,toastText: 'Rounded Gradient Flat Button Pressed!',
                      text: "Rounded Gradient",conRadius:20.w,
                      conHeight: 6.h,
                        gradientColor: const LinearGradient(
                            colors: [
                              Color(0xfff8e8d7),
                              Color(0xffffcf9d)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            tileMode: TileMode.repeated
                        )
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }

  Widget allButton({
    required BuildContext context,
    required double conWidth,String? toastText,
    required String text, double? conHeight,
    Color? buttonColor, Gradient? gradientColor,
    double? conRadius, double? borderRadius,}) {
    return Container(
        height:conHeight,width:conWidth,
        decoration: BoxDecoration(gradient: gradientColor,borderRadius: BorderRadius.circular(conRadius ?? 0)),
        child: TextButton(
            onPressed: (){
              showToast(
                toastText,backgroundColor: Theme.of(context).primaryColorDark,
                textStyle: TextStyle(color: Theme.of(context).indicatorColor),
                position: StyledToastPosition.top,textAlign: TextAlign.left,
                context: context,alignment: Alignment.topLeft,fullWidth: true,
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(buttonColor),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 0),
              )),
            ),
            child: Text(text, style: TextStyle(color: Theme.of(context).hoverColor,fontSize: 13),))
    );
  }

  Widget roundedBorderButton({
    required BuildContext context,
    required double conWidth,
    required String text,String? toastText,
    required Color borderColor,
    Color? buttonColor, FontStyle? textStyle,
    double? textSize, double? borderRadius,}){
    return Container(
        height: 5.h,width:conWidth,
        child: TextButton(
            onPressed: (){
              showToast(
                toastText,backgroundColor: Theme.of(context).primaryColorDark,
                textStyle: TextStyle(color: Theme.of(context).indicatorColor),
                position: StyledToastPosition.top,textAlign: TextAlign.left,
                context: context,alignment: Alignment.topLeft,fullWidth: true,
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(buttonColor),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 0),side: BorderSide(color:borderColor)
              )),
            ),
            child: Text(text, style: TextStyle(color: Theme.of(context).hoverColor,fontSize:textSize,fontStyle:textStyle ),)
        )
    );
  }

   Widget iconButton({
    required BuildContext context,String? toastText, required String text,}) {
    return Container(
        height: 5.h, width: 38.w,
        child: TextButton(
            onPressed: () {
              showToast(
                toastText,backgroundColor: Theme.of(context).primaryColorDark,
                textStyle: TextStyle(color: Theme.of(context).indicatorColor),
                position: StyledToastPosition.top,textAlign: TextAlign.left,
                context: context,alignment: Alignment.topLeft,fullWidth: true,
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color(0xffFFEBD4)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(1.w),)),),
            child: Row(children: [
                Icon(Icons.account_balance, color: Theme.of(context).hoverColor, size: 5.w,), SizedBox(width: 2.w,),
                Text(text, style: TextStyle(color: Theme.of(context).hoverColor,fontSize: 13)),],)
        )
      );
    }

  Widget disableButton({
    required BuildContext context, required String text, required bool disableButtons,}) {
    return Container(
        height: 5.h,width:37.w,
        child: TextButton(
            onPressed: disableButtons ? (){} :null,
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Theme.of(context).toggleableActiveColor),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1.w),
              )),
            ),
            child: Text(text,style: TextStyle(fontSize: 13),),
        )
    );
  }

  Widget disableIconButton({
    required BuildContext context, required String text, required bool disableButtons,}){
    return Container(
        height: 5.h,width:44.w,
        child: TextButton(
            onPressed: disableButtons ? (){} :null,
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Theme.of(context).toggleableActiveColor),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1.w),
              )),
            ),
            child: Row(
              children: [
                Icon(Icons.account_balance,size: 5.w,),SizedBox(width: 2.w,),
                Text(text,style:TextStyle(fontSize: 13),),
              ],
            )
        )
    );
  }
}
