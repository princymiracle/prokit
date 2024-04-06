import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ColorFilledwithbarderTextField extends StatelessWidget {
  String title;
  ColorFilledwithbarderTextField({super.key,this.title ='TextField with Border'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,size: 5.h,color: Colors.white),
        ),
        title: Text(title,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900,color: Colors.white),),
        backgroundColor: Color(0xff9BBEC7),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 3.w,left: 2.w,right: 2.w,bottom: 3.w),
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                borderTextField(
                    context: context,hintText: 'Hint Text',labelText: 'Color filled basic textfield',
                    conColor: Color(0xffFFEBD4),
                    hintColor: Color(0xff9BBEC7),labelColor: Color(0xff9BBEC7)
                ),
                Padding(padding: EdgeInsets.only(top: 2.w),
                  child: colorTextField(context: context,hintText: 'Rectangle Textfield',conRadius: BorderRadius.zero,
                      hintColor: Color(0xff9BBEC7),radius: 1.w),
                ),
                Padding(padding: EdgeInsets.only(top: 2.w),
                  child: colorTextField(
                      context: context,conRadius: BorderRadius.zero,
                      radius: 1.w,labelText: 'Rectangle Textfield with Label',labelColor: Color(0xff9BBEC7)),
                ),
                Padding(padding: EdgeInsets.only(top: 2.w),
                  child: colorTextField(
                      context: context,conRadius: BorderRadius.zero,
                      radius: 20.w,hintText: 'Rounded Textfield',hintColor: Color(0xff9BBEC7)
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 2.w),
                  child: colorTextField(
                      context: context,conRadius: BorderRadius.zero,
                      radius: 5.w,labelColor: Color(0xff9BBEC7),
                      labelText: 'Rounded Textfield with label',hintText: 'Rounded Textfield with label',
                      hintColor:Theme.of(context).hoverColor,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 2.w),
                  child: colorTextField(
                      context: context,conRadius: BorderRadius.only(topLeft: Radius.circular(1.w),topRight:Radius.circular(1.w)),
                      radius: 2.w,labelText: 'colored border',hintText: 'Tell us about yourself',
                      labelColor: Color(0xff9BBEC7),hintColor: Color(0xff9BBEC7),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 2.w),
                  child: colorTextField(
                      conRadius: BorderRadius.circular(20.w),
                    context: context,radius: 20.w, conColor: Color(0xffFFEBD4),
                    hintText: 'Color filled rounded textfield',
                    hintColor: Color(0xff9BBEC7),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 4.w),
                  child: textArea(
                      context: context,
                      radius: 1.w,labelText: 'Text Area',labelColor: Color(0xff9BBEC7),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget borderTextField({
    required BuildContext context,
    String? hintText, String? labelText,
    Color? hintColor,Color? conColor, Color? labelColor,}){
    return Container(
      decoration: BoxDecoration(
        color: conColor,borderRadius: BorderRadius.only(topLeft: Radius.circular(1.w),topRight:Radius.circular(1.w)),
      ),
      child: TextField(cursorColor: Color(0xff9BBEC7),
        decoration: InputDecoration(contentPadding: EdgeInsets.only(top: 4.w,left: 2.w),
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff9BBEC7)),),
          hintText: hintText,labelText: labelText,labelStyle: TextStyle(color: labelColor),
          hintStyle: TextStyle(color: hintColor,fontWeight: FontWeight.normal),
        ),
      ),
    );
  }

  Widget colorTextField({
    required BuildContext context,
    required BorderRadius conRadius,
    double? radius,String? labelText,Color? labelColor,
    String? hintText, Color? hintColor,Color? conColor,}){
    return Container(
      decoration: BoxDecoration(
        color: conColor,
        borderRadius: conRadius,
      ),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff9BBEC7)),
            borderRadius: BorderRadius.circular(radius ?? 0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff9BBEC7)),
            borderRadius: BorderRadius.circular(radius ?? 0),
          ),
          hintText: hintText,hintStyle: TextStyle(color: hintColor,fontWeight: FontWeight.normal),
          labelText: labelText,labelStyle: TextStyle(color: labelColor)
        ),
      ),
    );
  }

  Widget textArea({
    required BuildContext context,
    double? radius,String? labelText,Color? labelColor,}){
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff9BBEC7)),
          borderRadius: BorderRadius.circular(radius ?? 0),
        ),
        enabledBorder:OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff9BBEC7)),
          borderRadius: BorderRadius.circular(radius ?? 0),
        ),
        labelText: labelText,labelStyle: TextStyle(color: labelColor),
      ),
      minLines: 2,
      maxLines: 9,style: TextStyle(color: Color(0xff9BBEC7)),
    );
  }
}
