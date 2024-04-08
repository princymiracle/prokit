import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';
import 'package:sizer/sizer.dart';

class AnimatedBottomNavigation extends StatefulWidget {
  String title;
  AnimatedBottomNavigation({super.key,this.title = 'Animation Bottom Navigation'});

  @override
  State<AnimatedBottomNavigation> createState() => _AnimatedBottomNavigationState();
}

class _AnimatedBottomNavigationState extends State<AnimatedBottomNavigation> with SingleTickerProviderStateMixin {
  late MotionTabBarController controller;

  @override
  void initState() {
    controller = MotionTabBarController(
        length: 3, vsync: this,initialIndex: 1);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
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

        body: const SafeArea(
        child: Center(
          child: Text("Animated Bottom Bar."),
        ),
      ),

        bottomNavigationBar: MotionTabBar(
          initialSelectedTab: 'SEARCH',
          labels: const ['HOME','SEARCH','USER'],
          icons: [Icons.home,Icons.search,Icons.person],
          tabBarHeight: 8.h,
          tabIconColor: Theme.of(context).secondaryHeaderColor,
          tabIconSelectedColor: Colors.white,
          tabSelectedColor: Theme.of(context).secondaryHeaderColor,
          tabIconSize: 5.w,
          tabIconSelectedSize: 5.w,
          controller: controller,tabSize: 12.w,
          textStyle: TextStyle(fontSize: 13),
          tabBarColor: Colors.white,
          onTabItemSelected: (int tab){
            setState(() {controller.index = tab;});
          },
        )
    );
  }
}
