import 'package:flutter/material.dart';
import 'package:flutter_ui_components/Constants/IconPath.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ReorderableList extends StatelessWidget {
   String title;
   ReorderableList({super.key,this.title = 'Reorderable List'});

   List<ReorderData> reorderList= [
     ReorderData(title: "Map", img: IconPath.mapIconImg),
     ReorderData(title: "Album", img: IconPath.albumIconImg21),
     ReorderData(title: "Phone", img: IconPath.phoneIconImg),
     ReorderData(title: "DeskTop MAC", img: IconPath.deskTopIconImg),
     ReorderData(title: "Device Hub", img: IconPath.deviceHubIconImg),
     ReorderData(title: "Fast Food", img: IconPath.foodIconImg),
     ReorderData(title: "Flag", img:IconPath.flagIconImg),
     ReorderData(title: "Folder", img: IconPath.folderIconImg),
     ReorderData(title: "Games", img:IconPath.gameIconImg),
     ReorderData(title: "Keyboard", img: IconPath.keyboardIconImg),
     ReorderData(title: "Group", img: IconPath.groupIconImg),
     ReorderData(title: "Geadset", img: IconPath.geadsetIconImg),
     ReorderData(title: "Home", img: IconPath.homeIconImg),
     ReorderData(title: "Chart", img: IconPath.chartIconImg),
     ReorderData(title: "Laptop", img: IconPath.laptopIconImg),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(), icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
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
                    leading: Image.asset(reorderList[index].img,fit: BoxFit.cover,height: 5.w,),
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