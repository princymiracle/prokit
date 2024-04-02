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
                           child: FlutterLogo(
                             size: 15,
                           ),
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

