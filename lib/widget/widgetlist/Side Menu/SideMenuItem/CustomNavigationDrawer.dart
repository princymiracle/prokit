import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hidden_drawer/flutter_hidden_drawer.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CustomNavigationDrawerPage extends StatefulWidget {
  String title;
  CustomNavigationDrawerPage({super.key,this.title = 'THE NAVIGATION DEMO'});

  @override
  State<CustomNavigationDrawerPage> createState() => _CustomNavigationDrawerPageState();
}

class _CustomNavigationDrawerPageState extends State<CustomNavigationDrawerPage> {

  List<NavigationData> navigationList = [
    NavigationData(img:'assets/images/img_foodImage1.png',icon:"assets/icons/icon_sidemenuIcon7.png",title:"il domacca", text: '78 5TH AVENUE, YORK',conColor: Color(0xffFF9700)),
    NavigationData(img: 'assets/images/img_foodImage2.png',icon:"assets/icons/icon_sidemenuIcon8.png",title:"Mc Grady", text: '79 5TH AVENUE, YORK',conColor: Colors.red),
    NavigationData(img: 'assets/images/img_foodImage3.png',icon:"assets/icons/icon_sidemenuIcon9.png",title:"Sugar & Spice", text: '80 5TH AVENUE, YORK',conColor: Colors.purple),
    NavigationData(img: 'assets/images/img_foodImage4.png',icon:"assets/icons/icon_sidemenuIcon10.png",title:"South Indian", text: '81 5TH AVENUE, YORK',conColor: Color(0xffA85400)),
  ];

  List menuItem = [ "THE PADDOCK", "HE HERO", "THELP US GROW", "SETTINGS",];

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;
  int selectIndex = 0;

  void onDrawerItemTap(int index) {
    setState(() {
      selectIndex = index;
    });
    animatedContainer();
  }

  @override
  Widget build(BuildContext context) {
    // return HiddenDrawer(
    //  drawerWidth:  MediaQuery.of(context).size.width * .4,
    //   drawer: HiddenDrawerMenu(
    //     menu: [
    //       DrawerMenu(child: Text("THE PADDOCK"), onPressed: (){}),
    //       DrawerMenu(child: Text("THE PADDOCK"), onPressed: (){}),
    //       DrawerMenu(child: Text("THE PADDOCK"), onPressed: (){}),
    //       DrawerMenu(child: Text("THE PADDOCK"), onPressed: (){}),
    //     ],
    //   ),
    //    child: Scaffold(
    //         appBar:AppBar(
    //           title: Text(widget.title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 14.sp,fontWeight: FontWeight.w600,),),
    //           iconTheme: IconThemeData(color: Theme.of(context).primaryColorDark),
    //           backgroundColor: Theme.of(context).secondaryHeaderColor,
    //           leading: IconButton(onPressed: () {
    //             if(Scaffold.of(context).isDrawerOpen){
    //               Scaffold.of(context).openDrawer();
    //             }
    //            },icon: Icon(Icons.menu),),
    //         ),
    //          backgroundColor: Theme.of(context).splashColor,
    //          body: SafeArea(
    //            child: Container(
    //              child: ListView.builder(
    //                shrinkWrap: true,padding: EdgeInsets.only(left: 2.w,top: 2.w,right: 2.w),
    //                itemCount: navigationList.length,
    //                itemBuilder: (context, index) {
    //                  return Navigation(
    //                    context: context,img: navigationList[index].img,iconImg: navigationList[index].icon,title: navigationList[index].title,
    //                    subtitle: navigationList[index].text,icon: Icons.favorite_border,likeNum: "84",conColor: navigationList[index].conColor,
    //                  );
    //                },),
    //            ),
    //          ),
    //    ),
    // );

    return Scaffold(
      body: Stack(
        children: [
          drawerScreen(context: context,textColor: Theme.of(context).indicatorColor),
          animatedContainer(),
        ],
      ),
    );
  }

  Widget animatedContainer(){
    return AnimatedContainer(width: double.infinity,
      foregroundDecoration: BoxDecoration(borderRadius: BorderRadius.circular(isDrawerOpen ? 2.w : 0)),
      transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale(scaleFactor),
      duration: Duration(milliseconds: 250),color: Theme.of(context).primaryColorDark,
      child: Scaffold(
        backgroundColor: Theme.of(context).bottomAppBarColor,
        appBar: AppBar(centerTitle: true,
          leading:isDrawerOpen
              ? IconButton(
                onPressed: () {
                  setState(() {
                    xOffset = 0;
                    yOffset = 0;
                    scaleFactor = 1;
                    isDrawerOpen = false;
                  });
                },
                icon: Icon(Icons.menu,color: Theme.of(context).primaryColorDark,))
              : IconButton(
                onPressed: () {
                  setState(() {
                    xOffset = 230;
                    yOffset = 150;
                    scaleFactor = 0.6;
                    isDrawerOpen = true;
                  });
                },
                icon: Icon(Icons.menu,color: Theme.of(context).primaryColorDark,)),
          backgroundColor: Theme.of(context).secondaryHeaderColor,
          title: Text(selectIndex == 0
              ? widget.title : selectIndex == 1
              ? 'OTHER SCREEN' : selectIndex == 2
              ? 'OTHER SCREEN' : 'OTHER SCREEN'
            ,style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 14.sp,fontWeight: FontWeight.w600,),),
        ),
       body:selectIndex == 0 ? SafeArea(
         child: Container(
           child: ListView.builder(
             shrinkWrap: true,padding: EdgeInsets.only(left: 2.w,top: 2.w,right: 2.w),
             itemCount: navigationList.length,
             itemBuilder: (context, index) {
               return Navigation(
                 context: context,img: navigationList[index].img,iconImg: navigationList[index].icon,title: navigationList[index].title,
                 subtitle: navigationList[index].text,icon: Icons.favorite_border,likeNum: "84",conColor: navigationList[index].conColor,
                 );
               },),
             ),
           )
           : selectIndex == 1 ? SafeArea(
         child: Center(
           child: Container(height:70.w,color: Theme.of(context).primaryColorDark,
             child: Column(mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Image.asset('assets/images/img_menuImg1.png',fit: BoxFit.cover,colorBlendMode: BlendMode.darken,height: 60.w,width: double.infinity),
                 Container(height: 10.w,
                   child: Center(child: Text('This is another screen!',style: TextStyle(color: Theme.of(context).bottomAppBarColor),)),),
               ],
             ),
           ),
         ),
       )  : selectIndex == 2 ? SafeArea(
         child: Center(
           child: Container(height:70.w,color: Theme.of(context).primaryColorDark,
             child: Column(mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Image.asset('assets/images/img_menuImg1.png',fit: BoxFit.cover,colorBlendMode: BlendMode.darken,height: 60.w,width: double.infinity),
                 Container(height: 10.w,
                   child: Center(child: Text('This is another screen!',style: TextStyle(color: Theme.of(context).bottomAppBarColor),)),),
               ],
             ),
           ),
         ),
       )
           : selectIndex  == 3 ? SafeArea(
         child: Center(
           child: Container(height:70.w,color: Theme.of(context).primaryColorDark,
             child: Column(mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Image.asset('assets/images/img_menuImg1.png',fit: BoxFit.cover,colorBlendMode: BlendMode.darken,height: 60.w,width: double.infinity),
                 Container(height: 10.w,
                   child: Center(child: Text('This is another screen!',style: TextStyle(color: Theme.of(context).bottomAppBarColor),)),),
               ],
             ),
           ),
         ),
       )
           : SafeArea(
               child: Container(
                 child: ListView.builder(
                   shrinkWrap: true,padding: EdgeInsets.only(left: 2.w,top: 2.w,right: 2.w),
                   itemCount: navigationList.length,
                   itemBuilder: (context, index) {
                     return Navigation(
                       context: context,img: navigationList[index].img,iconImg: navigationList[index].icon,title: navigationList[index].title,
                       subtitle: navigationList[index].text,icon: Icons.favorite_border,likeNum: "84",conColor: navigationList[index].conColor,
                     );
                   },),
               ),
            )
      ),
    );
  }

  Widget drawerScreen({
    required BuildContext context,
    Color? textColor,
  }){
    return Container(
      height: double.infinity,width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/img_menuImg.png'),fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken)),
      ),
      child: Padding(padding:EdgeInsets.only(top: 50.w,left: 2.w),
        child: Column(
          children: [
            ListTile(
              selected: selectIndex == 0,
              title: Text('THE PADDOCK"',style: TextStyle(fontSize: 20),),
              onTap: () => onDrawerItemTap(0),
            ),
            ListTile(
              selected: selectIndex == 1,
              title: Text('HE HERO',style: TextStyle(fontSize: 20),),
              onTap: () => onDrawerItemTap(1),
            ),
            ListTile(
              selected: selectIndex == 2,
              title: Text('THELP US GROW',style: TextStyle(fontSize: 20),),
              onTap: () => onDrawerItemTap(2),
            ),
            ListTile(
              selected:  selectIndex == 3,
              title: Text('SETTINGS',style: TextStyle(fontSize: 20),),
              onTap: () => onDrawerItemTap(3),
            ),
          ],
        )
      ),
    );
  }

  Widget Navigation({
    required BuildContext context,IconData? icon,
    String? img,Color? conColor,String? iconImg,
    String? title,String? subtitle,String? likeNum,}){
    return Padding(padding:EdgeInsets.only(bottom: 3.w),
      child: Container(
        height: 32.h,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColorDark,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(1.w),bottomRight: Radius.circular(1.w)),),
        child: Column(
          children: [
            Image.asset(img ?? "",fit: BoxFit.cover,height: 20.h,width: double.infinity,),
            ListTile(
              leading: Container(height: 6.h,width: 11.w,
                decoration: BoxDecoration(color: conColor, borderRadius: BorderRadius.circular(3.w),),
                child: Center(child: Image.asset(iconImg ?? "",fit: BoxFit.cover,height: 5.w,)),
              ),
              title: Text(title ?? "",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),),
              subtitle: Text(subtitle ?? "",style: TextStyle(fontSize: 13.sp,color: Theme.of(context).cardColor),),
              trailing: Padding(padding: EdgeInsets.only(top: 2.w),
                child: Column(
                  children: [
                    Icon(icon,size: 6.w,color: Theme.of(context).dividerColor,),
                    Text(likeNum ?? "",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 10.sp),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationData{
  String img;
  String icon;
  String title;
  String text;
  Color conColor;

  NavigationData({
    required this.img,
    required this.icon,
    required this.title,
    required this.text,
    required this.conColor,
  });
}

class MenuData  {
  String title;
  bool status;

  MenuData({
    required this.title,
    required this.status,
  });
}