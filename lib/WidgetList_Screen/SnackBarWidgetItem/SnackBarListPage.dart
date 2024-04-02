import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'FloatingSnackbarPage.dart';
import 'SnackBarColorPage.dart';
import 'SnackBarWithActionPage.dart';
import 'SnackBarWithMarginPage.dart';
import 'SnackBarwithShapePage.dart';
import 'StandartSnackBarPage.dart';

class SnackBarListPage extends StatelessWidget {
  String title;
  SnackBarListPage({super.key,this.title = 'SnackBarList'});

  List listData = [
    "Standart SnackBar",
    "SnackBar Color",
    "SnackBar With Action",
    "Floating Snackbar",
    "SnackBar With Margin",
    "SnackBar with Shape",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: IconButton(onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(1.w),
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bgImage.png"),fit: BoxFit.cover)),
          child: Padding( padding: EdgeInsets.all(5.w),
            child: Container(
              child:ListView.builder(
                itemCount: listData.length,shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(padding: EdgeInsets.all(2.w),
                    child: InkWell(
                      onTap: () {
                        switch(index){
                          case 0:
                            Get.to(StandartSnackBarPage(),);
                            break;
                          case 1:
                            Get.to(SnackBarColorPage(),);
                            break;
                          case 2:
                            Get.to(SnackBarWithActionPage(),);
                            break;
                          case 3:
                            Get.to(FloatingSnackbarPage(),);
                            break;
                          case 4:
                            Get.to(SnackBarWithMarginPage(),);
                            break;
                          case 5:
                            Get.to(SnackBarwithShapePage(),);
                            break;
                        }
                      },
                      child: Container(width: 80.w,height: 8.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.w),
                          image: DecorationImage(image: AssetImage("assets/images/31.png"), fit: BoxFit.fill,),),
                        child: Center(
                          child: Text(
                            listData[index], style: TextStyle(color: Theme.of(context).secondaryHeaderColor,fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
