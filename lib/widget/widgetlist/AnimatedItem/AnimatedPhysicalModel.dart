import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AnimatedPhysicalPage extends StatefulWidget {
  String title;
  AnimatedPhysicalPage({super.key,this.title = 'Animated Physical'});

  @override
  State<AnimatedPhysicalPage> createState() => _AnimatedPhysicalPageState();
}

class _AnimatedPhysicalPageState extends State<AnimatedPhysicalPage> {

  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,size: 3.h,color: Colors.white),
        ),
        title: Text(widget.title,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900,color: Colors.white),),
        backgroundColor: Color(0xffC0B298),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(1.w),
          child: Container(
            child: Padding(
              padding:  EdgeInsets.only(top: 4.h,left: 10.w,right: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Animated Physical",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                  SizedBox(height: 1.h,),
                  Text("This is the example of Animated Physical",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 1.h,),
                  Text("Example :-"),
                  SizedBox(height: 3.h,),
                 Center(
                   child: Column(
                     children: [
                       AnimatedPhysicalModel(
                         duration: Duration(milliseconds: 1500),
                           shape: BoxShape.rectangle,
                           color: _isFlat ? Colors.white : Colors.white,
                         elevation: _isFlat ? 0 : 40,
                         borderRadius: _isFlat ? BorderRadius.circular(0) : BorderRadius.circular(30),
                         shadowColor: Colors.black,
                         child: Container(
                           height: 20.h,
                           width: 40.w,
                           child: Image.asset("assets/images/MiracleLogo.png",fit: BoxFit.cover,),
                         ),
                       ),
                       SizedBox(height: 4.h,),
                       ElevatedButton(
                           style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.orangeAccent )),
                           onPressed: () {
                            setState(() {
                              _isFlat = !_isFlat;
                            });
                           },
                           child: Text("Change",style: TextStyle(color: Colors.black),)
                       ),
                     ],
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

