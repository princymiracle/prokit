import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ScaleTransitionPage extends StatefulWidget {
  String title;
  ScaleTransitionPage({super.key,this.title = 'Scale Transition'});

  @override
  State<ScaleTransitionPage> createState() => _ScaleTransitionPageState();
}

class _ScaleTransitionPageState extends State<ScaleTransitionPage> with TickerProviderStateMixin {

  late final AnimationController _controller = AnimationController(
    duration: Duration(seconds: 1),
      vsync: this,
  )..repeat(reverse: true);

  late final Animation<double> _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
              padding:  EdgeInsets.only(top: 4.h, left: 10.w,right: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Scale Transition",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                  SizedBox(height: 1.h,),
                  Text("This is the example of Scale Transition",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 1.h,),
                  Text("Example :-"),
                  SizedBox(height: 5.h,),
                  Center(
                    child: ScaleTransition(
                      scale: _animation,
                      child: Image.asset("assets/images/DropFilter.png",fit: BoxFit.cover,height: 25.h,width: 50.w,),
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

