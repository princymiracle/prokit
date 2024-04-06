import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class BouncyList extends StatelessWidget {
   String title;
   BouncyList({super.key,this.title = 'Bouncy List'});

   List<BouncyData> lakeImg = [
     BouncyData(title: "Administrate Tour",img: "assets/images/travel1.png"),
     BouncyData(title:"Scour Tour" , img: "assets/images/travel2.png"),
     BouncyData(title:"Grid Tour" , img: "assets/images/travel3.png"),
     BouncyData(title: "Smart Tour", img: "assets/images/travel4.png"),
     BouncyData(title: "Carefree Tour", img: "assets/images/travel5.png"),
     BouncyData(title: "Pursue Tour", img: "assets/images/travel1.png"),
     BouncyData(title:"Savvy Tour" , img: "assets/images/travel2.png"),
     BouncyData(title:"Amble Tour" ,img: "assets/images/travel3.png"),
     BouncyData(title:"Intelligence Tour" , img: "assets/images/travel4.png"),
     BouncyData(title: "Conquest Tour", img: "assets/images/travel5.png"),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,size: 5.h,color: Colors.white),
        ),
        title: Text(title,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900,color: Colors.white),),
        backgroundColor: Color(0xffC0B298),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemCount: lakeImg.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 1.w),
                  child: Container(
                    height: 31.w,width: double.infinity,
                    decoration: BoxDecoration(image: DecorationImage(
                            image: AssetImage(lakeImg[index].img), fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(Theme.of(context).bottomAppBarColor.withOpacity(0.6), BlendMode.darken))
                    ),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(lakeImg[index].title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 22),),
                        Text("A tour description is a piece of copy that summarizes the entire tour.",style: TextStyle(fontSize: 10,color: Theme.of(context).primaryColorDark),),
                      ],
                    ),
                  ),
                );
              },),
         ),
      ),
    );
  }
}

class BouncyData{
  String title;
  String img;

  BouncyData({
    required this.title,
    required this.img,
  });
}