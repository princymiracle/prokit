import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'AnimatedItem/AnimatedCrossFade/AnimatedCrossFadeListPage.dart';
import 'AnimatedItem/AnimatedList.dart';
import 'AnimatedItem/AnimatedOpacity.dart';
import 'AnimatedItem/AnimatedPhysicalModel.dart';
import 'AnimatedItem/AnimatedSize.dart';
import 'AnimatedItem/AnimatedWidget.dart';
import 'AnimatedItem/AnimateddeFaultTextstyle.dart';
import 'AspectRatioItem/AspectRatio.dart';
import 'CardItem/CardListPage.dart';
import 'DataTable/DataTableWidget.dart';
import 'DecoratedBoxTransition/DecoratedBoxTransitionPage.dart';
import 'Dismissible/DismissibleListPage.dart';
import 'DrawerItem/DrawerListPage.dart';
import 'HeroWidget/HeroWidgetPage.dart';
import 'ImageWidget/ImageWidgetPage.dart';
import 'OpacityWidget/TextOpacityPage.dart';
import 'RotationTransition/RotationTransitionPage.dart';
import 'SafeAreaWidget/SafeAreaWidgetListPage.dart';
import 'ScaleTransition/ScaleTransitionWidget.dart';
import 'SizeTransition/SizeTransitionPage.dart';
import 'SnackBarWidgetItem/SnackBarListPage.dart';

class WidgetListPage extends StatelessWidget {
  String title;
  WidgetListPage({super.key,this.title = 'Widget'});

  List listData = [
    "Animated Cross Fade",
    "Animateddefault Textstyle",
    "Animated List",
    "Animated Opacity",
    "Animated Physical Model",
    "Animated Size",
    "Animated Widget",
    "Aspect Ratio",
    "Card Widget",
    "DecoratedBox Transition",
    "Data Table",
    "Dismissible",
    "Drawer Widget",
    "Animated Rotation Transition",
    "Hero Widget",
    "Image Widget",
    "Opacity Widget",
    "SafeArea Widget",
    "Scale Transition",
    "Size Transition",
    "Snack Bar",
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
                            Get.to(ACrossListPage(),);
                            break;
                          case 1:
                            Get.to(AnimatedDefaultPage(),);
                            break;
                          case 2:
                            Get.to(AnimatedListPage());
                            break;
                          case 3:
                            Get.to(AnimatedOpacityPage(),);
                            break;
                          case 4:
                            Get.to(AnimatedPhysicalPage());
                            break;
                          case 5:
                            Get.to(AnimatedSizePage(),);
                            break;
                          case 6:
                            Get.to(AnimatedWidgetPage(),);
                            break;
                          case 7:
                            Get.to(AspectRatioPage(),);
                            break;
                          case 8:
                            Get.to(CardListPage(),);
                            break;
                          case 9:
                            Get.to(DecoratedBoxTransitionPage(),);
                            break;
                          case 10:
                            Get.to(DataTablePage(),);
                            break;
                          case 11:
                            Get.to(DismissibleListPage(),);
                            break;
                          case 12:
                            Get.to(DrawerListPage(),);
                            break;
                          case 13:
                            Get.to(RotationTransitionPage(),);
                            break;
                          case 14:
                            Get.to(HeroWidgetPage());
                            break;
                          case 15:
                            Get.to(ImageWidgetPage(),);
                            break;
                          case 16:
                            Get.to(TextOpacityPage(),);
                            break;
                          case 17:
                            Get.to(SafeAreaWidgetListPage(),);
                            break;
                          case 18:
                            Get.to(ScaleTransitionPage(),);
                            break;
                          case 19:
                            Get.to(SizeTransitionPage(),);
                            break;
                          case 20:
                            Get.to(SnackBarListPage(),);
                            break;
                        }
                      },
                      child: Container(width: 80.w,height: 8.h,
                        decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(2.w),
                            border: Border.all(color: Color(0xFF4CCD99),),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFF4CCD99).withOpacity(0.1),
                                spreadRadius: 3,
                                blurRadius: 10,
                              ),
                            ]
                        ),
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(2.w),
                        //   image: DecorationImage(image: AssetImage("assets/images/31.png"), fit: BoxFit.fill,),
                        // ),
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
 //     56  62