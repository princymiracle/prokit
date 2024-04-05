import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';


class SideTransitionPage extends StatefulWidget {
  const SideTransitionPage({super.key});

  @override
  State<SideTransitionPage> createState() => _SideTransitionPageState();
}

class _SideTransitionPageState extends State<SideTransitionPage> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Side Transition",style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xff9BBEC7),
      ),
      body: Container(
        child: Stack(
          children: [

        Padding(padding: EdgeInsets.only(top: 6.w,left: 5.w,right: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Side Transition",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),

              Text("Animates the position of a widget relative to its normal position.",style: TextStyle(color: Colors.black54,fontSize: 11.sp),),
              SizedBox(height: 2.h,),
              Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
              SizedBox(height: 1.h,),
              SlideTransition(
                
                position: _offsetAnimation,
                child: Image.asset("assets/images/img_clip1.png",height: 20.h,),
              ),
            ],
          ),
        ),
          ],
        ),
      ),
    );
  }
}
