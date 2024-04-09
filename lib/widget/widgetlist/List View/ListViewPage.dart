import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'ListViewItem/BouncyList.dart';
import 'ListViewItem/ExpandableList.dart';
import 'ListViewItem/ReorderableList.dart';
import 'ListViewItem/SelectionList.dart';
import 'ListViewItem/SimpleList.dart';
import 'ListViewItem/SlidableList.dart';
import 'ListViewItem/SwappableList.dart';




class ListViewWidgetListPage extends StatefulWidget {
  const ListViewWidgetListPage({super.key});

  @override
  State<ListViewWidgetListPage> createState() => _ListViewWidgetListPageState();
}

List<Widgetdata> widgetdata = [
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_list1.png", title: "Simple List"),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_list2.png", title: "Bouncy List"),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_list3.png", title: "Slidable List"),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_list4.png", title: "Swappable List"),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_list5.png", title: "Reorderable List"),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_list6.png", title: "Expandable List"),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_list7.png", title: "Selection List"),

];

class _ListViewWidgetListPageState extends State<ListViewWidgetListPage> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back,size: 3.h,),
          ),
          title: Text("ListView Widgets",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900),),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 2.h,right: 4.w,left: 4.w,bottom: 2.h),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: widgetdata.length,
                    itemBuilder: (context, index) {
                      return  InkWell(
                        onTap: () {
                          switch(index){
                            case 0:
                              Get.to(SimpleList());
                              break;
                            case 1:
                              Get.to(BouncyList());
                              break;
                            case 2:
                              Get.to(SlidableList());
                              break;
                            case 3:
                              Get.to(SwappableList());
                              break;
                            case 4:
                              Get.to(ReorderableListPage());
                              break;
                            case 5:
                              Get.to(ExpandableList());
                              break;
                            case 6:
                              Get.to(SelectionList());
                              break;
                          }
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 9.h,
                              width: 18.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(6)),
                                color: widgetdata[index].color1,
                                image: DecorationImage(
                                  image: AssetImage(widgetdata[index].img.toString()),scale: 1,
                                ),
                              ),
                            ),
                            SizedBox(width: 4.w,),
                            Container(
                              height: 9.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                borderRadius: BorderRadius.all(Radius.circular(10),),
                              ),
                              child: Padding(
                                padding:  EdgeInsets.only(left: 2.w,right: 2.w,top: 2.5.h,),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(widgetdata[index].title.toString(),style: TextStyle(fontSize: 15.sp),),
                                      ],
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.only(bottom: 2.h),
                                      child: CircleAvatar(

                                        radius: 15,
                                        backgroundColor:  widgetdata[index].color1,
                                        child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }, separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 2.h,); },
                  ),
                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}

class Widgetdata {
  String img;
  Color color1;
  String title;

  Widgetdata({
    required this.color1,
    required this.img,
    required this.title,
  });
}

