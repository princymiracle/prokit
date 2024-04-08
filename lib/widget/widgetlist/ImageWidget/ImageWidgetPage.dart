import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ImageWidgetPage extends StatefulWidget {
  String title;
  ImageWidgetPage({super.key,this.title = 'Image Widget'});

  @override
  _ImageWidgetPageState createState() => _ImageWidgetPageState();
}

class _ImageWidgetPageState extends State<ImageWidgetPage>  {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,size: 5.h,color: Colors.white),
        ),
        title: Text(widget.title,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900,color: Colors.white),),
        backgroundColor: Color(0xff9888A5),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(1.w),
          child: Container(
            child: Padding(
              padding:  EdgeInsets.only(top: 2.h, left: 5.w,right: 5.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Image Widget",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                    SizedBox(height: 1.h,),
                    Text("This is the example of Image Widget",style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 1.h,),
                    Text("Example :-"),
                    SizedBox(height: 5.h,),
                    Text("Image from assets"),
                    SizedBox(height: 2.h,),
                    Image.asset("assets/images/DropFilter.png",fit: BoxFit.cover,height: 25.h,width: 50.w,),
                    SizedBox(height: 4.h,),
                    Text("Image from network with cache image"),
                    SizedBox(height: 2.h,),
                    Image.network("https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",height: 25.h, width: 50.w,fit: BoxFit.cover,scale: 1),
                    SizedBox(height: 4.h,),
                    Text("Image with card and border radius"),
                    SizedBox(height: 2.h,),
                    Container(
                      height: 25.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                             image: AssetImage("assets/images/DropFilter.png"),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 10,
                            ),
                          ]
                      ),
                    ),
                    SizedBox(height: 2.h,),
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