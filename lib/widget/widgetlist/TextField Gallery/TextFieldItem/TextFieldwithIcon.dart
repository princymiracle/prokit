import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class TextFieldwithIcon extends StatelessWidget {
  String title;
  TextFieldwithIcon({super.key,this.title = 'TextField with Icon'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,size: 5.h,color: Colors.white),
        ),
        title: Text(title,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900,color: Colors.white),),
        backgroundColor: Color(0xffC0B298),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 5.w,top: 3.w,right: 2.w),
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                iconLabelTextField(
                    context: context,icon: Icons.people,iconColor:Color(0xffC0B298),
                    hintText:'Hint Text',labelText: 'Label Text'
                ),
                iconTextField(
                    context: context, labelText: 'Prefix Icon',prefixIcon: Icons.alarm,prefixColor: Color(0xffC0B298)
                ),
                iconTextField(
                    context: context,
                    hintText: 'Suffix Icon',suffixIcon: Icons.alarm,suffixColor: Color(0xffC0B298)
                ),
                iconTextField(
                    context: context,labelText: 'Color Icon',prefixIcon: Icons.alarm,prefixColor: Color(0xffC0B298)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget iconLabelTextField({
    required BuildContext context,
    String? hintText,Color? iconColor,
    required IconData icon, String? labelText,}){
    return TextField(
      decoration: InputDecoration(isDense: true,
        hintText: hintText,hintStyle: TextStyle(color: Color(0xffC0B298),fontSize: 14),
        labelStyle: TextStyle(color: Color(0xffC0B298),fontSize: 13),labelText: labelText,
        icon: Icon(icon,size: 5.w,color: iconColor,),
        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffC0B298)),),
      ),
    );
  }

  Widget iconTextField({
    required BuildContext context,
    IconData? prefixIcon, Color? prefixColor,
    IconData? suffixIcon, Color? suffixColor,
    String? hintText, String? labelText,}){
    return TextField(
      decoration: InputDecoration(isDense: true,
        hintText: hintText,hintStyle: TextStyle(color: Color(0xffC0B298),fontSize: 14,fontWeight: FontWeight.normal),
        labelText: labelText,labelStyle: TextStyle(color: Color(0xffC0B298),fontSize: 14),
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon,size: 5.w,color: prefixColor,),
        suffixIcon:  Icon(suffixIcon,size: 5.w,color: suffixColor,),
        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffC0B298)),),
      ),
    );
  }
}
