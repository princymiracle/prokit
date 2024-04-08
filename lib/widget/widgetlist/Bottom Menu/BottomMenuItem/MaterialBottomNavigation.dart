import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class MaterialBottomNavigation extends StatefulWidget {
   String title;
   MaterialBottomNavigation({super.key,this.title = 'Material Bottom Navigation'});

  @override
  State<MaterialBottomNavigation> createState() => _MaterialBottomNavigationState();
}

class _MaterialBottomNavigationState extends State<MaterialBottomNavigation> {
  int currentIndex =  0;
  PageController pageController = PageController();

  List<Widget> pageList = const [
    Center(child: Text("Home",style: TextStyle(color: Color(0xff008BFF),fontSize: 40,fontWeight: FontWeight.normal),),),
    Center(child: Text("Favorites",style: TextStyle(color:  Color(0xffFF0000),fontSize: 40,fontWeight: FontWeight.normal),),),
    Center(child: Text("Videos",style: TextStyle(color: Color(0xff35011F),fontSize: 40,fontWeight: FontWeight.normal),),),
    Center(child: Text("Settings",style: TextStyle(color: Color(0xffFF0071),fontSize: 40,fontWeight: FontWeight.normal),),),
  ];

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
        child: SizedBox.expand(
          child:PageView(
            controller: pageController,
            onPageChanged: (value) =>  setState(() => currentIndex = value),
            children: List.generate(pageList.length, (index) => pageList.elementAt(currentIndex)),
          ),
        ),
      ),

      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Theme.of(context).primaryColorDark,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: Text('Home',style: TextStyle(color: Color(0xff008BFF)),),
              icon: Icon(Icons.home,size: 5.w,color: Color(0xff008BFF)),
              activeColor: Color(0xff008BFF),
          ),
          BottomNavyBarItem(
              title: Text('Favorites',style: TextStyle(color:  Color(0xffFF0000)),),
              icon: Icon(Icons.favorite,size: 5.w,color:  Color(0xffFF0000)),
              activeColor: Color(0xffFF0000),
          ),
          BottomNavyBarItem(
              title: Text('Videos',style: TextStyle(color: Color(0xff35011F)),),
              icon: Icon(Icons.videocam,size: 5.w,color: Color(0xff35011F)),
              activeColor: Color(0xff35011F),
          ),
          BottomNavyBarItem(
              title: Text('Settings',style: TextStyle(color: Color(0xffFF0071)),),
              icon: Icon(Icons.settings,size: 5.w,color: Color(0xffFF0071)),
              activeColor: Color(0xffFF0071),
          ),
        ],
        selectedIndex: currentIndex,
        onItemSelected: (int value) {
          setState(() => currentIndex = value);
          pageController.animateToPage(value, duration: Duration(milliseconds: 300), curve: Curves.ease);
        },
      ),
    );
  }
}
