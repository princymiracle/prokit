import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AnimatedSliverAppBar extends StatefulWidget {
   String title;
   AnimatedSliverAppBar({super.key,this.title = 'Flutter is Awesome'});

  @override
  State<AnimatedSliverAppBar> createState() => _AnimatedSliverAppBarState();
}

class _AnimatedSliverAppBarState extends State<AnimatedSliverAppBar> {

  List<AppbarData> lakeImg = [
    AppbarData(title: "Administrate Tour",img: "assets/images/travel1.png"),
    AppbarData(title:"Scour Tour" , img: "assets/images/travel2.png"),
    AppbarData(title:"Grid Tour" , img: "assets/images/travel3.png"),
    AppbarData(title: "Smart Tour", img: "assets/images/travel4.png"),
    AppbarData(title: "Carefree Tour", img: "assets/images/travel5.png"),
    AppbarData(title: "Pursue Tour", img: "assets/images/travel1.png"),
    AppbarData(title:"Savvy Tour" , img: "assets/images/travel2.png"),
    AppbarData(title:"Amble Tour" ,img: "assets/images/travel3.png"),
    AppbarData(title:"Intelligence Tour" , img: "assets/images/travel4.png"),
    AppbarData(title: "Conquest Tour", img: "assets/images/travel5.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(leadingWidth: 80.w,
                leading: Padding(padding: EdgeInsets.only(top: 4.w,left: 25.w),
                  child: Text(widget.title,style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.w600),),
                ),
                expandedHeight: 25.h, collapsedHeight: 10.h,backgroundColor: Color(0xffC0B298),
                actions: [Padding(padding:EdgeInsets.only(right: 13.w),
                  child: IconButton(onPressed:() {}, icon: Icon(Icons.menu,color: Colors.white,),),
                )],
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset("assets/images/img_silver.png",fit: BoxFit.cover,),
                ),
                snap: true,pinned: true,floating: true,
              ),

            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                return Padding(padding: EdgeInsets.only(left: 1.w,top: 1.w,right:1.w),
                  child: Container(
                    height: 17.h, width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(lakeImg[index].img), fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(Theme.of(context).bottomAppBarColor.withOpacity(0.6), BlendMode.darken))),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(lakeImg[index].title, style: TextStyle(color: Theme.of(context).primaryColorDark, fontSize: 22),),
                        Text("A tour description is a piece of copy that summarizes the entire tour.",
                          style: TextStyle(fontSize: 10, color: Theme.of(context).primaryColorDark),),],),
                  ),
                );
              }, childCount: lakeImg.length,
            )),
          ],
        ),
      ),
    );
  }
}

class AppbarData{
  String title;
  String img;

  AppbarData({
    required this.title,
    required this.img,
  });
}
