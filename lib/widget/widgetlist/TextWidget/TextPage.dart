import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sizer/sizer.dart';

class TextPage extends StatelessWidget {
  String title;
  TextPage({super.key,this.title = 'Text Gallery'});

  @override
  Widget build(BuildContext context) {

    List colorList = [
      Text("Green",style: TextStyle(color: Theme.of(context).backgroundColor),),
      Text("Red",style: TextStyle(color: Theme.of(context).dividerColor),),
      Text("Blue",style: TextStyle(color: Theme.of(context).disabledColor),),
      Text("Custom Color",style: TextStyle(color: Theme.of(context).dialogBackgroundColor),),
    ];

    List sizeList = [
      Padding(padding: EdgeInsets.only(top: 5.w),
        child: Text("12.0",style: TextStyle(color: Theme.of(context).canvasColor,fontSize: 10),),
      ),SizedBox(width: 5.w,),
      Padding(padding: EdgeInsets.only(top: 4.w),
        child: Text("14.0",style: TextStyle(color: Theme.of(context).canvasColor,fontSize: 12),),
      ),SizedBox(width: 5.w,),
      Padding(padding: EdgeInsets.only(top: 3.w),
        child: Text("16.0",style: TextStyle(color: Theme.of(context).canvasColor,fontSize: 14),),
      ),SizedBox(width: 5.w,),
      Padding(padding: EdgeInsets.only(top: 3.w),
        child: Text("18.0",style: TextStyle(color: Theme.of(context).canvasColor,fontSize: 16),),
      ),SizedBox(width: 5.w,),
      Padding(padding: EdgeInsets.only(top: 2.w),
        child: Text("20.0",style: TextStyle(color: Theme.of(context).canvasColor,fontSize: 18),),
      ),SizedBox(width: 5.w,),
      Padding(padding: EdgeInsets.only(top: 2.w),
        child: Text("22.0",style: TextStyle(color: Theme.of(context).canvasColor,fontSize: 20),),
      ),SizedBox(width: 5.w,),
      Padding(padding: EdgeInsets.only(top: 2.w),
        child: Text("24.0",style: TextStyle(color: Theme.of(context).canvasColor,fontSize: 22),),
      ),
    ];

    List fontStyleList = [
      Text("Normal",style: TextStyle(color:Theme.of(context).canvasColor,fontWeight: FontWeight.normal,fontSize: 18),),SizedBox(width: 2.w,),
      Text("Bold",style: TextStyle(color:Theme.of(context).canvasColor,fontWeight: FontWeight.bold,fontSize: 18),),SizedBox(width: 2.w,),
      Text("Italic",style: TextStyle(color:Theme.of(context).canvasColor,fontStyle: FontStyle.italic,fontSize: 18),),SizedBox(width: 2.w,),
      Text("line Through",style: TextStyle(color:Theme.of(context).canvasColor,decoration: TextDecoration.lineThrough,fontSize: 18),),SizedBox(width: 2.w,),
      Text("overLine",style: TextStyle(color:Theme.of(context).canvasColor,decoration: TextDecoration.overline,fontSize: 18),),SizedBox(width: 2.w,),
      Text("underline",style: TextStyle(color:Theme.of(context).canvasColor,decoration: TextDecoration.underline,fontSize: 18),),
    ];

    List fontFamilyList = [
      Text("Raleway",style: TextStyle(fontFamily:GoogleFonts.raleway().fontFamily,color: Theme.of(context).canvasColor,fontSize: 16),),
      Text("Roboto",style: TextStyle(fontFamily: GoogleFonts.roboto().fontFamily,color: Theme.of(context).canvasColor,fontSize: 16),),
    ];

    String text =
        "-This is long Text line which handle by TextOverflow.clip property""\n""\v"
        "-Text line which handle by TextOverflow.ellipsis property""\n""\v"
        "-Text line which handle by TextOverflow.fade property";

    return Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(), icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(title,style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xffC0B298),
      ),

      body: SafeArea(
        child: Container(
          width: double.infinity,height: double.infinity,padding: EdgeInsets.all(2.w),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 2.h),
                child: Text(
                  "String form Basic Text",style: TextStyle(color: Theme.of(context).bottomAppBarColor),
                ),
              ),
              SizedBox(height: 1.h,),
              Divider(
                height: 1,color: Theme.of(context).secondaryHeaderColor,
              ),
              SizedBox(height: 1.5.h,),
              Text(
                "--> Color Property",style: TextStyle(color: Theme.of(context).bottomAppBarColor,fontSize: 16),
              ),
              Row(
                children: List.generate(colorList.length, (index) =>
                  Container(padding: EdgeInsets.all(1.w), child: colorList[index])),
              ),
              Divider(
                height: 1,color: Theme.of(context).secondaryHeaderColor,
              ),
              SizedBox(height: 1.5.h,),
              Text(
                "--> Size Property",style: TextStyle(color: Theme.of(context).bottomAppBarColor,fontSize: 16),
              ),
              Row(
                children: List.generate(sizeList.length, (index) => Container(child: sizeList[index],)),
              ),
              Divider(
                height: 1,color: Theme.of(context).secondaryHeaderColor,
              ),
              SizedBox(height: 1.5.h,),
              Text(
                "--> FontStyle",style: TextStyle(color: Theme.of(context).bottomAppBarColor,fontSize: 16),
              ),
              SizedBox(height: 1.h,),
              Wrap(
                children: List.generate(fontStyleList.length, (index) => Container(child: fontStyleList[index],)),
              ),
              SizedBox(height: 1.h,),
              Divider(
                height: 1,color: Theme.of(context).secondaryHeaderColor,
              ),
              SizedBox(height: 1.5.h,),
              Text(
                "--> Custom FontFamily",style: TextStyle(color: Theme.of(context).bottomAppBarColor,fontSize: 16),
              ),
              SizedBox(height: 1.h,),
              Row(
                children: List.generate(fontFamilyList.length, (index) =>
                    Container(padding: EdgeInsets.all(1.w), child: fontFamilyList[index],)),
              ),
              SizedBox(height: 1.5.h,),
              Divider(
                height: 1,color: Theme.of(context).secondaryHeaderColor,
              ),
              SizedBox(height: 1.5.h,),
              Text(
                "--> Overflow Property",style: TextStyle(color: Theme.of(context).bottomAppBarColor,fontSize: 16),
              ),
              Padding(
                padding: EdgeInsets.only(left: 1.h,top: 2.w,bottom: 2.h),
                child: Text(text,overflow: TextOverflow.clip,style: TextStyle(color: Theme.of(context).canvasColor,fontSize: 12),),
              ),
              Divider(
                height: 1,color: Theme.of(context).secondaryHeaderColor,
              ),
              SizedBox(height: 1.5.h,),
              Text(
                "--> TextSpan Property",style: TextStyle(color: Theme.of(context).bottomAppBarColor,fontSize: 16),
              ),
              SizedBox(height: 1.h,),
              RichText(
                text: const TextSpan(text: "Hello ",
                  children: [
                    TextSpan(text: "beautiful ",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 18)),
                    TextSpan(text: "world", style: TextStyle(fontWeight: FontWeight.bold)),],
                  style: TextStyle(color: Colors.black,)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
