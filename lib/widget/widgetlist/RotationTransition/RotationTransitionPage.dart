import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';


class RotationTransitionPage extends StatefulWidget {
  String title;
  RotationTransitionPage({super.key,this.title = 'Animated Rotation Transition'});

  @override
  State<RotationTransitionPage> createState() => _RotationTransitionPageState();
}

class _RotationTransitionPageState extends State<RotationTransitionPage> with TickerProviderStateMixin {

  late final AnimationController _controller = AnimationController(
    duration: Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInCirc,
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
        backgroundColor: Color(0xffC0B298),
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
                  Text("Animated Rotation Transition",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                  SizedBox(height: 1.h,),
                  Text("This is the example of Animated Rotation Transition",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 1.h,),
                  Text("Example :-"),
                  SizedBox(height: 5.h,),
                  Center(
                    child: RotationTransition(
                      turns: _animation,
                       child: Image.asset("assets/images/DropFilter.png",height: 30.h,width: 60.w,),
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

