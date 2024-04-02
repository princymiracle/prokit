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
      appBar: AppBar(centerTitle: true,
        leading: IconButton(onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(widget.title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(1.w),
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bgImage.png"),fit: BoxFit.cover)),
          child: Container(
            child: Padding(
              padding:  EdgeInsets.only(top: 2.h, left: 5.w,right: 5.w),
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
                    SizedBox(height: 2.h,),
                    Text("Text color black,opacity 0.1",),
                    SizedBox(height: 1.h,),
                    Text("Text color black",style: TextStyle(color: Colors.black.withOpacity(0.1),),),
                    SizedBox(height: 2.h,),
                    Text("Text color black,opacity 0.5",),
                    SizedBox(height: 1.h,),
                    Text("Text color black",style: TextStyle(color: Colors.black.withOpacity(0.5),),),
                    SizedBox(height: 2.h,),
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