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
      appBar: AppBar(centerTitle: true,
        leading: IconButton(onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(widget.title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(1.w),
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bgImage.png"),fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding:  EdgeInsets.only(top: 2.h, left: 5.w,right: 5.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dismissible - 1 Standart",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
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
// 1 = standart
// 2 = properties