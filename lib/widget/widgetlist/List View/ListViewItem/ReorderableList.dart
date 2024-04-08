import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ReorderableListPage extends StatelessWidget {
   String title;
   ReorderableListPage({super.key,this.title = 'Reorderable List'});

   List<ReorderData> reorderList= [
     ReorderData(title: "Map", img: "assets/icons/icons_map.png"),
     ReorderData(title: "Album", img: "assets/icons/icon_album.png"),
     ReorderData(title: "Phone", img: "assets/icons/icons_phone.png"),
     ReorderData(title: "DeskTop MAC", img: "assets/icons/icons_desktop.png"),
     ReorderData(title: "Device Hub", img: "assets/icons/icons_hub.png"),
     ReorderData(title: "Fast Food", img: "assets/icons/icons_food.png"),
     ReorderData(title: "Flag", img:"assets/icons/icons_flag.png"),
     ReorderData(title: "Folder", img: "assets/icons/icons_folder.png"),
     ReorderData(title: "Games", img:"assets/icons/icons_game.png"),
     ReorderData(title: "Keyboard", img: "assets/icons/icons_keyboard.png"),
     ReorderData(title: "Group", img: "assets/icons/icons_group.png"),
     ReorderData(title: "Geadset", img:"assets/icons/icons_geadset.png"),
     ReorderData(title: "Home", img: "assets/icons/icons_home.png"),
     ReorderData(title: "Chart", img: "assets/icons/icons_chat.png"),
     ReorderData(title: "Laptop", img: "assets/icons/icon_laptop.png"),
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
        child: Container(padding: EdgeInsets.only(top: 5.w,left: 3.w,right: 3.w,),
          child: ListView.builder(
            shrinkWrap: true ,itemCount:reorderList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 3.w,left: 2.w,right: 2.w),
                child: Container(
                  height: 8.h,
                  decoration: BoxDecoration(
                      color:Theme.of(context).primaryColorDark,borderRadius: BorderRadius.circular(1.w),
                      boxShadow: [BoxShadow(color: Theme.of(context).hoverColor,blurRadius: 3.0,blurStyle: BlurStyle.outer)],
                  ),
                  child: ListTile(
                    leading: Image.asset(reorderList[index].img,fit: BoxFit.cover,height: 5.w,color: Color(0xffC0B298),),
                    title:Text( reorderList[index].title),
                  ),
                ),
              );
            },),
        ),
      ),
    );
  }
}

class ReorderData{
  String title;
  String img;
  ReorderData({
    required this.title,
    required this.img,
  });
}