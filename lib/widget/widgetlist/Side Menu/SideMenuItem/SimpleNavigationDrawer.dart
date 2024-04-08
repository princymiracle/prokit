import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SimpleNavigationDrawerPage extends StatefulWidget {
  String title;
  SimpleNavigationDrawerPage({super.key,this.title = 'Simple Navigation Drawer'});

  @override
  State<SimpleNavigationDrawerPage> createState() => _SimpleNavigationDrawerPageState();
}

class _SimpleNavigationDrawerPageState extends State<SimpleNavigationDrawerPage> {

  List<Widget> view = [
    Container(width: double.infinity,height: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/img_7.png'),fit: BoxFit.cover)),
        child: Center(child: Row(children: [
          Icon(Icons.home,size: 10.w,color: Colors.white,),SizedBox(width: 2.w,),
          Text("Home",style: TextStyle(color: Colors.white,fontSize: 30.sp),)],))),
    Container(width: double.infinity,height: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/img_7.png'),fit: BoxFit.cover)),
        child: Center(child: Row(children: [
          Icon(Icons.favorite,size: 10.w,color: Colors.white,),SizedBox(width: 2.w,),
          Text("Favorites",style: TextStyle(color: Colors.white,fontSize: 30.sp),)],))),
    Container(width: double.infinity,height: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/img_7.png'),fit: BoxFit.cover)),
        child: Center(child: Row(children: [
          Icon(Icons.music_note,size: 10.w,color: Colors.white,),SizedBox(width: 2.w,),
          Text("Music",style: TextStyle(color: Colors.white,fontSize: 30.sp),)],))),
    Container(width: double.infinity,height: double.infinity,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/img_7.png'),fit: BoxFit.cover)),
        child: Center(child: Row(children: [
          Icon(Icons.videocam,size: 10.w,color: Colors.white,),SizedBox(width: 2.w,),
          Text("Videos",style: TextStyle(color: Colors.white,fontSize: 30.sp),)],))),
  ];

  int selectIndex = 0;

  void onDrawerItemTap(int index) {
    setState(() {
      selectIndex = index;
    });
    Navigator.pop(context); // Close the drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(centerTitle: true,
        title: Text(widget.title,style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        iconTheme: IconThemeData(color: Theme.of(context).primaryColorDark,size: 25),
        backgroundColor: Color(0xff9888A5),
      ),

      drawer: Drawer(
        child: SafeArea(
          child: Stack(
            children: [
              SizedBox(width: double.infinity,
                child: DrawerHeader(decoration: BoxDecoration(color: Theme.of(context).secondaryHeaderColor,),
                        child:Container(
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(radius: 35,
                                  child: ClipOval(
                                      child: Image.asset('assets/images/img_cat1.png',fit: BoxFit.cover,height: 35.w,))),
                              SizedBox(height: 2.w,),
                              Text("Header", style: TextStyle(color: Theme.of(context).primaryColorDark,fontWeight: FontWeight.w600),),
                              Text("Header detail", style: TextStyle(color: Theme.of(context).primaryColorDark,fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ),
                      ),
              ),
              Padding(padding:EdgeInsets.only(top: 170),
                child: Column(
                  children: [
                    ListTile(
                      selected: selectIndex == 0,
                      leading: Icon(Icons.home,color: Theme.of(context).secondaryHeaderColor,),
                      title: Text('Home',style: TextStyle(fontSize: 20),),
                      onTap: () => onDrawerItemTap(0),
                    ),
                    ListTile(
                      selected: selectIndex == 1,
                      leading: Icon(Icons.favorite,color: Theme.of(context).secondaryHeaderColor,),
                      title: Text('Favorite',style: TextStyle(fontSize: 20),),
                      onTap: () => onDrawerItemTap(1),
                    ),
                    ListTile(
                      selected: selectIndex == 2,
                      leading: Icon(Icons.music_note,color: Theme.of(context).secondaryHeaderColor,),
                      title: Text('Music',style: TextStyle(fontSize: 20),),
                      onTap: () => onDrawerItemTap(2),
                    ),
                    ListTile(
                      selected:  selectIndex == 3,
                      leading: Icon(Icons.videocam,color: Theme.of(context).secondaryHeaderColor,),
                      title: Text('Video',style: TextStyle(fontSize: 20),),
                      onTap: () => onDrawerItemTap(3),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child:Container(width: double.infinity,height: double.infinity,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/img_7.png'),fit: BoxFit.cover)),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Icon(selectIndex == 0
                  ? Icons.home : selectIndex == 1
                  ? Icons.favorite : selectIndex == 2
                  ? Icons.music_note : Icons.videocam,
                size: 40,color: Colors.white,),SizedBox(width: 2.w,),
              Text( selectIndex == 0
                  ? 'Home' : selectIndex == 1
                  ? 'Favorite' : selectIndex == 2
                  ? 'Music' : 'Video',style: TextStyle(color: Colors.white,fontSize: 40),)],),
        ),
      ),
    );
  }
}

