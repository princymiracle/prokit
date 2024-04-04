import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class DismissibleStandartPage extends StatefulWidget {
  String title;
  DismissibleStandartPage({super.key,this.title = 'Dismissible - 1 Standart'});

  @override
  State<DismissibleStandartPage> createState() => _DismissibleStandartPageState();
}

class _DismissibleStandartPageState extends State<DismissibleStandartPage>  {

  List<String> items = [
    "Dart",
    "Kotlin",
    "Java",
    "Phthon",
    "Java Script",
    "PHP",
    "HTML",
    "CSS",
    "Dart",
    "Kotlin",
    "Java",
    "Phthon",
    "Java Script",
    "PHP",
    "HTML",
    "CSS",
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
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(1.w),
          child: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding:  EdgeInsets.only(top: 2.h, left: 8.w,right: 8.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dismissible - 1 Standart",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500),),
                    SizedBox(height: 1.h,),
                    Text("This is the example of Dismissible - 1 Standart",style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 1.h,),
                    Text("Example :-"),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                        itemCount: items.length,
                      padding: EdgeInsets.symmetric(vertical: 4.h),
                      itemBuilder: (context, index) {
                        return Dismissible(
                          key: ValueKey<String>(items[index]),
                          child: Container(
                            color: Color(0xFFEBEDFE),
                            margin: EdgeInsets.only(top: 2.h),
                            height: 5.h,
                            child: Center(
                              child: Text(items[index].toString()),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
