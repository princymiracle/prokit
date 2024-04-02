import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ElevationCardPage extends StatefulWidget {
  String title;
  ElevationCardPage({super.key,this.title = 'Elevation Card'});

  @override
  State<ElevationCardPage> createState() => _ElevationCardPageState();
}

class _ElevationCardPageState extends State<ElevationCardPage> {
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Elevation Card",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                  SizedBox(height: 1.h,),
                  Text("This is the example of Elevation Card",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 1.h,),
                  Text("Example :-"),
                  SizedBox(height: 5.h,),

                  Text("* Card with elevation 0",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 1.h,),
                  Card(
                   // color: Colors.orangeAccent,
                    child: Padding(
                      padding:  EdgeInsets.all(2.w),
                      child: Text("This text is inside card"),
                    ),
                    elevation: 0,
                  ),
                  SizedBox(height: 4.h,),

                  Text("* Card with elevation 1",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 1.h,),
                  Card(
                   // color: Colors.orange,
                    child: Padding(
                      padding:  EdgeInsets.all(2.w),
                      child: Text("This text is inside card"),
                    ),
                    elevation: 1,
                  ),
                  SizedBox(height: 4.h,),

                  Text("* Card with elevation 5",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 1.h,),
                  Card(
                   // color: Colors.amberAccent,
                    child: Padding(
                      padding:  EdgeInsets.all(2.w),
                      child: Text("This text is inside card"),
                    ),
                    elevation: 5,
                  ),
                  SizedBox(height: 4.h,),

                  Text("* Card with elevation 20",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 1.h,),
                  Card(
                   // color: Colors.amberAccent,
                    child: Padding(
                      padding:  EdgeInsets.all(2.w),
                      child: Text("This text is inside card"),
                    ),
                    elevation: 20,
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
