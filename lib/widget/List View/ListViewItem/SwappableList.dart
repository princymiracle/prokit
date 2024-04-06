import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SwappableList extends StatefulWidget {
  String title;
  SwappableList({super.key,this.title = 'Swipeable List'});
  @override
  State<SwappableList> createState() => _SwappableListState();
}

class _SwappableListState extends State<SwappableList> {

  List<SwipeData> itemData = [
    SwipeData(title: "Item 0 Sender", subject: "Subject: 0", img: "assets/images/cat1.png"),
    SwipeData(title: "Item 1 Sender", subject: "Subject: 1", img: "assets/images/cat2.png"),
    SwipeData(title: "Item 2 Sender", subject: "Subject: 2", img: "assets/images/cat3.png"),
    SwipeData(title: "Item 3 Sender", subject: "Subject: 3", img: "assets/images/cat4.png"),
    SwipeData(title: "Item 4 Sender", subject: "Subject: 4", img: "assets/images/cat5.png"),
    SwipeData(title: "Item 5 Sender", subject: "Subject: 5", img: "assets/images/cat6.png"),
    SwipeData(title: "Item 6 Sender", subject: "Subject: 6", img: "assets/images/cat7.png"),
    SwipeData(title: "Item 7 Sender", subject: "Subject: 7", img: "assets/images/cat8.png"),
    SwipeData(title: "Item 8 Sender", subject: "Subject: 8", img: "assets/images/cat9.png"),
    SwipeData(title: "Item 9 Sender", subject: "Subject: 9", img: "assets/images/cat10.png"),
    SwipeData(title: "Item 10 Sender", subject: "Subject: 10",img:"assets/images/cat1.png" ),
    SwipeData(title: "Item 11 Sender", subject: "Subject: 11",img:"assets/images/cat2.png" ),
    SwipeData(title: "Item 12 Sender", subject: "Subject: 12",img:"assets/images/cat3.png" ),
    SwipeData(title: "Item 13 Sender", subject: "Subject: 13",img:"assets/images/cat4.png" ),
    SwipeData(title: "Item 14 Sender", subject: "Subject: 14",img:"assets/images/cat5.png" ),
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
        child: RefreshIndicator(
          backgroundColor: Theme.of(context).primaryColorDark,
          onRefresh: () async {setState(() {Future.delayed(Duration(seconds: 2));});},
          child: Container(
            child: ListView.builder(
                padding: EdgeInsets.only(left: 2.w,right: 2.w,bottom: 2.w),
                itemCount: itemData.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                      key:UniqueKey(),
                      background: Padding(padding: EdgeInsets.only(left: 2.w,top: 5.w),
                        child: Container(
                          height: 23.h,color: Theme.of(context).dividerColor,
                          child: Padding(padding: EdgeInsets.only(left: 3.w),
                            child: Align(alignment:Alignment.centerLeft,child: Icon(Icons.delete,color: Theme.of(context).primaryColorDark,size: 8.w,)),
                          ),),
                      ),
                      secondaryBackground: Padding(padding: EdgeInsets.only(right: 2.w,top: 5.w),
                        child: Container(
                          color: Theme.of(context).backgroundColor,height: 23.h,
                          child: Padding(padding:  EdgeInsets.only(right: 3.w),
                            child: Align(alignment: Alignment.centerRight, child: Icon(Icons.archive,color: Theme.of(context).primaryColorDark,size: 8.w,),),),),
                      ),
                      onDismissed: (direction) {},
                      child: Padding(padding: EdgeInsets.only(top: 5.w),
                        child: Container(
                          height: 23.h, width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.horizontal(right: Radius.circular(1.w)), color: Color(0xffFFF2E4),),
                          child: Row(
                            children: [
                              Image.asset(itemData[index].img,fit: BoxFit.cover,height: 23.h,width: 40.w,),SizedBox(width: 4.w,),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(itemData[index].title,style: TextStyle(fontWeight: FontWeight.bold),), Text(itemData[index].subject)],),],
                          ),
                        ),
                      ),);
                },
            ),
          ),
        ),
      ),
    );
  }
}

class SwipeData{
  String title;
  String subject;
  String img;

  SwipeData({
    required this.title,
    required this.subject,
    required this.img,
  });
}