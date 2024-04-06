import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SimpleList extends StatelessWidget {
  String title;
  SimpleList({super.key,this.title = 'Simple List'});

  List<ListData> listviewData = [
     ListData(title: "Map", img: "assets/icons/icons_map.png"),
     ListData(title: "Album", img: "assets/icons/icons_album.png"),
     ListData(title: "Phone", img: "assets/icons/icons_phone.png"),
     ListData(title: "DeskTop MAC", img: "assets/icons/icons_desktop.png"),
     ListData(title: "Device Hub",img:  "assets/icons/icons_hub.png"),
     ListData(title: "Fast Food", img: "assets/icons/icons_food.png"),
     ListData(title: "Flag", img:"assets/icons/icons_flag.png"),
     ListData(title: "Folder", img: "assets/icons/icons_folder.png"),
     ListData(title: "Games", img:"assets/icons/icons_game.png"),
     ListData(title: "Keyboard", img: "assets/icons/icons_keyboard.png"),
     ListData(title: "Group", img: "assets/icons/icons_group.png"),
     ListData(title: "Geadset", img: "assets/icons/icons_geadset.png"),
     ListData(title: "Home", img: "assets/icons/icons_home.png"),
     ListData(title: "Chart", img: "assets/icons/icons_chat.png"),
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
        backgroundColor: Color(0xff9888A5),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
              shrinkWrap: true ,itemCount:listviewData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(listviewData[index].img,fit: BoxFit.cover,height: 5.w,),
                  title:Text( listviewData[index].title),
                );
              },),
        ),
      ),
    );
  }
}

class ListData{
  String title;
  String img;
  ListData({
    required this.title,
    required this.img,
  });
}