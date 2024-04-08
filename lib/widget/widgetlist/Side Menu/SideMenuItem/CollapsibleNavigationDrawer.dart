import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:side_navigation/side_navigation.dart';
import 'package:sizer/sizer.dart';

class CollapsibleNavigationDrawerPage extends StatefulWidget {
  String title;
  CollapsibleNavigationDrawerPage({super.key,this.title = 'Collapsible Navigation Drawer'});

  @override
  State<CollapsibleNavigationDrawerPage> createState() => _CollapsibleNavigationDrawerPageState();
}

class _CollapsibleNavigationDrawerPageState extends State<CollapsibleNavigationDrawerPage> {

  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(), icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(widget.title,style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xff9BBEC7),
      ),

      body: SafeArea(
        child: Row(
          children: [
            SideNavigationBar(selectedIndex: selectIndex,expandable: true,
                items: const [
                  SideNavigationBarItem(icon: Icons.home, label: 'Dashboard'),
                  SideNavigationBarItem(icon: Icons.favorite, label: 'Favorites'),
                  SideNavigationBarItem(icon: Icons.music_video, label: 'Music Videos'),
                  SideNavigationBarItem(icon: Icons.notifications, label: 'Notification'),
                  SideNavigationBarItem(icon: Icons.settings, label: 'Settings'),
                ],
              onTap: (value) {
              setState(() {selectIndex = value;});
              },
              toggler: const SideBarToggler(
                expandIcon: Icons.menu, shrinkIcon: Icons.close,
              ),
              header: SideNavigationBarHeader(
                image: Padding(padding:  EdgeInsets.only(bottom: 6.w,left: 4.w),
                  child: Image.asset("assets/icons/icon_bottmMenuIconImg4.png",height: 5.w,fit: BoxFit.cover,),
                ),
                title: Padding(padding: EdgeInsets.only(right: 100),
                  child: Text("John",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColorDark),),
                ),
                subtitle: const Text(""),),
                theme: SideNavigationBarTheme(
                    itemTheme: SideNavigationBarItemTheme(
                        iconSize: 30, selectedItemColor: Theme.of(context).bottomAppBarColor,
                        unselectedItemColor: const Color(0xffFCDFBD), selectedBackgroundColor: Theme.of(context).primaryColorDark,
                        labelTextStyle: const  TextStyle(fontSize: 18,fontWeight: FontWeight.bold,)),
                    togglerTheme: SideNavigationBarTogglerTheme(expandIconColor: Theme.of(context).primaryColorDark, shrinkIconColor: Theme.of(context).primaryColorDark,),
                    dividerTheme: const SideNavigationBarDividerTheme(
                      showHeaderDivider: true, showMainDivider: false, showFooterDivider: false, headerDividerColor: Color(0xffBABABA),
                    ),
                    backgroundColor: const Color(0xffF59526),
                ),
             ),
           ],
        ),
      ),
    );
  }
}
