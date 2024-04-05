import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'DismissiblePropertiesPage.dart';
import 'DismissibleStandartPage.dart';

class DismissibleListPage extends StatefulWidget {
  const DismissibleListPage({super.key});

  @override
  State<DismissibleListPage> createState() => _DismissibleListPageState();
}

List<Widgetdata> widgetdata = [
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_dis1.png", title: "Dismissible 1 - \nStandart", ),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_dis2.png", title: "Dismissible 2 - \nProperties", ),

];

class _DismissibleListPageState extends State<DismissibleListPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back,size: 5.h,),
          ),
          title: Text("Dismissible List",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900),),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 2.h,right: 4.w,left: 4.w,bottom: 2.h),
          child: Container(
            child: Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: widgetdata.length,
                  itemBuilder: (context, index) {
                    return  InkWell(
                      onTap: () {
                        switch(index){
                          case 0:
                            Get.to(DismissibleStandartPage(),);
                            break;
                          case 1:
                            Get.to(DismissiblePropertiesPage(),);
                            break;
                        }
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 10.h,
                            width: 17.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(6)),
                              color: widgetdata[index].color1,
                              image: DecorationImage(
                                image: AssetImage(widgetdata[index].img.toString()),scale: 1,
                              ),
                            ),
                          ),
                          SizedBox(width: 5.w,),
                          Container(
                            height: 11.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.1),
                              borderRadius: BorderRadius.all(Radius.circular(10),),
                            ),
                            child: Padding(
                              padding:  EdgeInsets.only(left: 3.w,right: 2.w,top: 1.h,),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(widgetdata[index].title.toString(),style: TextStyle(fontSize: 14.sp),),
                                    ],
                                  ),
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor:  widgetdata[index].color1,
                                    child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
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

