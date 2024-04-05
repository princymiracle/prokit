import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';


class AlignWidgetPage extends StatefulWidget {
  const AlignWidgetPage({super.key});

  @override
  State<AlignWidgetPage> createState() => _AlignWidgetPageState();
}

class _AlignWidgetPageState extends State<AlignWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:  AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Align Widget",style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xff9888A5),
      ),
      body: Container(
        child: Stack(
          children: [

            Padding(
              padding:  EdgeInsets.only(top: 2.h,bottom: 2.h,right: 6.w,left: 6.w,),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Align top left",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp,letterSpacing: 1),),
                    SizedBox(height: 1.h,),
                    Container(
                      width: double.infinity,
                      height: 15.h,
                      color: Color(0xff9888A5).withOpacity(0.6),
                      child: Text("Text",style: TextStyle(color: Theme.of(context).primaryColorDark,fontWeight: FontWeight.w900,fontSize: 10.sp,letterSpacing: 1),),
                    ),
                    SizedBox(height: 2.h,),
                    Text("Align top Center",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp,letterSpacing: 1),),
                    SizedBox(height: 1.h,),
                    Container(
                      width: double.infinity,
                      height: 15.h,
                      color: Color(0xff9888A5).withOpacity(0.6),
                      child: Align(
                        alignment: Alignment.topCenter,
                          child: Text("Text",style: TextStyle(color: Theme.of(context).primaryColorDark,fontWeight: FontWeight.w900,fontSize: 10.sp,letterSpacing: 1),)),
                    ),
                    SizedBox(height: 2.h,),
                    Text("Align top Right",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp,letterSpacing: 1),),
                    SizedBox(height: 1.h,),
                    Container(
                      width: double.infinity,
                      height: 15.h,
                      color: Color(0xff9888A5).withOpacity(0.6),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Text("Text",style: TextStyle(color: Theme.of(context).primaryColorDark,fontWeight: FontWeight.w900,fontSize: 10.sp,letterSpacing: 1),)),
                    ),
                    SizedBox(height: 2.h,),
                    Text("Align Center Left",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp,letterSpacing: 1),),
                    SizedBox(height: 1.h,),
                    Container(
                      width: double.infinity,
                      height: 15.h,
                      color: Color(0xff9888A5).withOpacity(0.6),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Text",style: TextStyle(color: Theme.of(context).primaryColorDark,fontWeight: FontWeight.w900,fontSize: 10.sp,letterSpacing: 1),)),
                    ),
                    SizedBox(height: 2.h,),
                    Text("Align Center ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp,letterSpacing: 1),),
                    SizedBox(height: 1.h,),
                    Container(
                      width: double.infinity,
                      height: 15.h,
                      color: Color(0xff9888A5).withOpacity(0.6),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text("Text",style: TextStyle(color: Theme.of(context).primaryColorDark,fontWeight: FontWeight.w900,fontSize: 10.sp,letterSpacing: 1),)),
                    ),
                    SizedBox(height: 2.h,),
                    Text("Align Center Right",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp,letterSpacing: 1),),
                    SizedBox(height: 1.h,),
                    Container(
                      width: double.infinity,
                      height: 15.h,
                      color: Color(0xff9888A5).withOpacity(0.6),
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Text("Text",style: TextStyle(color: Theme.of(context).primaryColorDark,fontWeight: FontWeight.w900,fontSize: 10.sp,letterSpacing: 1),)),
                    ),
                    SizedBox(height: 2.h,),
                    Text("Align Bottom Left ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp,letterSpacing: 1),),
                    SizedBox(height: 1.h,),
                    Container(
                      width: double.infinity,
                      height: 15.h,
                      color: Color(0xff9888A5).withOpacity(0.6),
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text("Text",style: TextStyle(color: Theme.of(context).primaryColorDark,fontWeight: FontWeight.w900,fontSize: 10.sp,letterSpacing: 1),)),
                    ),
                    SizedBox(height: 2.h,),
                    Text("Align Bottom Center ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp,letterSpacing: 1),),
                    SizedBox(height: 1.h,),
                    Container(
                      width: double.infinity,
                      height: 15.h,
                      color: Color(0xff9888A5).withOpacity(0.6),
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text("Text",style: TextStyle(color: Theme.of(context).primaryColorDark,fontWeight: FontWeight.w900,fontSize: 10.sp,letterSpacing: 1),)),
                    ),
                    SizedBox(height: 2.h,),
                    Text("Align Bottom Right  ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp,letterSpacing: 1),),
                    SizedBox(height: 1.h,),
                    Container(
                      width: double.infinity,
                      height: 15.h,
                      color: Color(0xff9888A5).withOpacity(0.6),
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text("Text",style: TextStyle(color: Theme.of(context).primaryColorDark,fontWeight: FontWeight.w900,fontSize: 10.sp,letterSpacing: 1),)),
                    ),


                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
