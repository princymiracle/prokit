import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class DecoratedBoxTransitionPage extends StatefulWidget {
  String title;
  DecoratedBoxTransitionPage({super.key,this.title = 'DecoratedBox Transition'});

  @override
  State<DecoratedBoxTransitionPage> createState() => _DecoratedBoxTransitionPageState();
}

class _DecoratedBoxTransitionPageState extends State<DecoratedBoxTransitionPage> with TickerProviderStateMixin {

  final DecorationTween decorationTween = DecorationTween(
    begin: BoxDecoration(
      color: Colors.white,
      border: Border.all(style: BorderStyle.none),
      borderRadius: BorderRadius.circular(60.0),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black,
          spreadRadius: 3.0,
          offset: Offset(0, 6.0),
        ),
      ],
    ),
    end: BoxDecoration(
      color: Colors.white,
      border: Border.all(style: BorderStyle.none),
      borderRadius: BorderRadius.zero,
    ),
  );

  late final AnimationController _controller = AnimationController(
      vsync: this,
    duration: Duration(seconds: 3),
  )..repeat(reverse: true);

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
        backgroundColor: Color(0xff9888A5),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(1.w),
          child: Container(
            child: Padding(
              padding:  EdgeInsets.only(top: 4.h, left: 9.w,right: 9.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("DecoratedBox Transition",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                  SizedBox(height: 1.h,),
                  Text("This is the example of DecoratedBox Transition",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 1.h,),
                  Text("Example :-"),
                  SizedBox(height: 5.h,),
                  Center(
                    child: DecoratedBoxTransition(
                      decoration: decorationTween.animate(_controller),
                      child: Container(
                        height: 30.h,
                        width: 60.w,
                        padding: EdgeInsets.all(5.w),
                        child: Center(
                          child: Stack(
                            children: [
                              Image.asset("assets/images/MiracleLogo.png",fit: BoxFit.cover,),
                            ],
                          ),
                        ),
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
