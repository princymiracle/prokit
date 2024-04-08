import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SimpleBottomNavigation extends StatefulWidget {
  String title;
  SimpleBottomNavigation({super.key,this.title = 'Simple Bottom Navigation'});

  @override
  State<SimpleBottomNavigation> createState() => _SimpleBottomNavigationState();
}

class _SimpleBottomNavigationState extends State<SimpleBottomNavigation> {
  int selectedIndex = 0;

  List<Color> colorList = [
     Color(0xff5CC2C6),
     Color(0xff5EA8E6),
     Color(0xffFA85B9),
     Color(0xffFF8894),];

  static List iconList = <Widget>[
    Center(child: Image.asset("assets/icons/icons_bottmMenuIconImg14.png",fit: BoxFit.cover,height: 10.h,color:Color(0xff5CC2C6),),),
    Center(child: Image.asset("assets/icons/icons_bottmMenuIconImg16.png",fit: BoxFit.cover,height: 10.h,color:Color(0xff5EA8E6),),),
    Center(child: Image.asset("assets/icons/icons_bottmMenuIconImg18.png",fit: BoxFit.cover,height: 10.h,color:Color(0xffFA85B9),),),
    Center(child: Image.asset("assets/icons/icons_bottmMenuIconImg12.png",fit: BoxFit.cover,height: 10.h,color:Color(0xffFF8894),),),
  ];

  void onItemTapped(int index) {
    setState(() {selectedIndex = index;});
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
        child: Center(child: iconList.elementAt(selectedIndex),),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon:Image.asset("assets/icons/icons_bottmMenuIconImg14.png",fit: BoxFit.cover,height: 2.h,),
              label: 'Home',  backgroundColor: colorList[selectedIndex], ),
          BottomNavigationBarItem(
              icon:Image.asset("assets/icons/icons_bottmMenuIconImg16.png",fit: BoxFit.cover,height: 2.h,),
              label: 'People',  backgroundColor: colorList[selectedIndex], ),
          BottomNavigationBarItem(
              icon:Image.asset("assets/icons/icons_bottmMenuIconImg18.png",fit: BoxFit.cover,height: 2.h,),
              label: 'Favorite',  backgroundColor: colorList[selectedIndex], ),
          BottomNavigationBarItem(
              icon:Image.asset("assets/icons/icons_bottmMenuIconImg12.png",fit: BoxFit.cover,height: 2.h,),
              label: 'Event',  backgroundColor: colorList[selectedIndex],),
        ],
        onTap: onItemTapped,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.shifting,
        showSelectedLabels: true,
      ),
    );
  }
}
