import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HeroWidgetPage extends StatefulWidget {
  String title;
  HeroWidgetPage({super.key,this.title = 'Hero Widget'});

  @override
  _HeroWidgetPageState createState() => _HeroWidgetPageState();
}

class _HeroWidgetPageState extends State<HeroWidgetPage>  {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,size: 5.h,color: Colors.white),
        ),
        title: Text(widget.title,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900,color: Colors.white),),
        backgroundColor: Color(0xff9BBEC7),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(1.w),
          child: Container(
            child: Padding(
              padding:  EdgeInsets.only(top: 2.h, left: 5.w,right: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hero Widget",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                  SizedBox(height: 1.h,),
                  Text("This is the example of Hero Widget",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 1.h,),
                  Text("Example :-"),
                  SizedBox(height: 5.h,),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(),));
                      },
                      child: Hero(
                        tag: 'Background',
                          child: Image.asset("assets/images/DropFilter.png",fit: BoxFit.cover,height: 10.h,width: 20.w,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
  String title;
  DetailPage({super.key,this.title = 'Hero Widget'});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>  {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,size: 5.h,color: Colors.white),
        ),
        title: Text(widget.title,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900,color: Colors.white),),
        backgroundColor: Color(0xff9BBEC7),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(1.w),
          child: Container(
            child: Padding(
              padding:  EdgeInsets.only(top: 2.h, left: 5.w,right: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hero Widget",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                  SizedBox(height: 1.h,),
                  Text("This is the example of Hero Widget",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 1.h,),
                  Text("Example :-"),
                  SizedBox(height: 5.h,),
                  Center(
                    child: Hero(
                      tag: 'Background',
                      child: Image.asset("assets/images/DropFilter.png",fit: BoxFit.cover,),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


