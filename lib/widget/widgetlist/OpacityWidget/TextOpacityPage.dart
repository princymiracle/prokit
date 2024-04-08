import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';


class TextOpacityPage extends StatefulWidget {
  String title;
  TextOpacityPage({super.key,this.title = 'Text Opacity'});

  @override
  _TextOpacityPageState createState() => _TextOpacityPageState();
}

class _TextOpacityPageState extends State<TextOpacityPage>  {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,size: 5.h,color: Colors.white),
        ),
        title: Text(widget.title,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900,color: Colors.white),),
        backgroundColor: Color(0xffC0B298),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(1.w),
          child: Container(
            child: Padding(
              padding:  EdgeInsets.only(top: 4.h, left: 7.w,right: 7.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Text Opacity",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                    SizedBox(height: 1.h,),
                    Text("This is the example of Text Opacity",style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 1.h,),
                    Text("Example :-"),
                    SizedBox(height: 5.h,),

                    Text("Text color black,opacity 1",),
                    SizedBox(height: 1.h,),
                    Text("Text color black",style: TextStyle(color: Colors.black.withOpacity(1),),),
                    SizedBox(height: 4.h,),
                    Text("Text color black,opacity 0.1",),
                    SizedBox(height: 1.h,),
                    Text("Text color black",style: TextStyle(color: Colors.black.withOpacity(0.1),),),
                    SizedBox(height: 4.h,),
                    Text("Text color black,opacity 0.5",),
                    SizedBox(height: 1.h,),
                    Text("Text color black",style: TextStyle(color: Colors.black.withOpacity(0.5),),),
                    SizedBox(height: 4.h,),
                    Text("Text color black,opacity 0.9",),
                    SizedBox(height: 1.h,),
                    Text("Text color black",style: TextStyle(color: Colors.black.withOpacity(0.9),),),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}