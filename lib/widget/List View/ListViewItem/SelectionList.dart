import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SelectionList extends StatefulWidget {
   String title;
   SelectionList({super.key,this.title = 'Selection List'});

  @override
  State<SelectionList> createState() => _SelectionListState();
}

class _SelectionListState extends State<SelectionList> {

  List<SelectData> selectList = [
    SelectData(img: "assets/images/cat1.png", title: "Cat Item  1", subject: "This is description of Cat 1",status: false),
    SelectData(img: "assets/images/cat2.png", title: "Cat Item  2", subject: "This is description of Cat 2",status: false),
    SelectData(img: "assets/images/cat3.png", title: "Cat Item  3", subject: "This is description of Cat 3",status: false),
    SelectData(img: "assets/images/cat4.png", title: "Cat Item  4", subject: "This is description of Cat 4",status: false),
    SelectData(img: "assets/images/cat5.png", title: "Cat Item  5", subject: "This is description of Cat 5",status: false),
    SelectData(img: "assets/images/cat6.png", title: "Cat Item  6", subject: "This is description of Cat 6",status: false),
    SelectData(img: "assets/images/cat7.png", title: "Cat Item  7", subject: "This is description of Cat 7",status: false),
    SelectData(img: "assets/images/cat8.png", title: "Cat Item  8", subject: "This is description of Cat 8",status: false),
    SelectData(img: "assets/images/cat9.png", title: "Cat Item  9", subject: "This is description of Cat 9",status: false),
    SelectData(img: "assets/images/cat10.png", title: "Cat Item  10", subject: "This is description of Cat 10",status: false),
    SelectData(img: "assets/images/cat1.png", title: "Cat Item  11", subject: "This is description of Cat 11",status: false),
    SelectData(img: "assets/images/cat2.png", title: "Cat Item  12", subject: "This is description of Cat 12",status: false),
    SelectData(img: "assets/images/cat3.png", title: "Cat Item  13", subject: "This is description of Cat 13",status: false),
    SelectData(img: "assets/images/cat4.png", title: "Cat Item  14", subject: "This is description of Cat 14",status: false),
    SelectData(img: "assets/images/cat5.png", title: "Cat Item  15", subject: "This is description of Cat 15",status: false),
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
        backgroundColor: Color(0xff9888A5),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(padding: EdgeInsets.only(left: 1.w,right: 1.w,top: 2.w),
          child: ListView.builder(
            itemCount: selectList.length,shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 2.w,left: 2.w,right: 2.w),
                  child: Container(
                     decoration: BoxDecoration(
                        color:Theme.of(context).primaryColorDark,borderRadius: BorderRadius.circular(1.w),
                        boxShadow: [BoxShadow(color: Theme.of(context).hoverColor,blurRadius: 3.0,blurStyle: BlurStyle.outer)],
                        ),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        child: ClipOval(
                          child: Image.asset(
                            selectList[index].img,fit: BoxFit.cover,height: 15.w,width: 15.w,),
                        ),
                      ),
                      title:Text(selectList[index].title,style: TextStyle(color:Theme.of(context).secondaryHeaderColor,),),
                      subtitle: Text(selectList[index].subject,style: TextStyle(color: Theme.of(context).shadowColor,fontSize: 14),),
                      trailing: Checkbox(
                        value: selectList[index].status,side: BorderSide(color: Theme.of(context).cardColor,width: 2),visualDensity: VisualDensity.compact,
                        activeColor: Theme.of(context).secondaryHeaderColor,
                        onChanged: (value) {
                          selectList[index].status = value!;
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                );
              },
          ),
        ),
      ),
    );
  }
}

class SelectData{
  String img;
  String title;
  String subject;
  bool status;

  SelectData({
    required this.img,
    required this.title,
    required this.subject,
    required this.status,
  });

}