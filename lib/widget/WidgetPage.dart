import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'AnimatedItem/AnimatedWidgetListPage.dart';
import 'AspectRatio/AspectRatioPage.dart';
import 'Button/ButtonsPage.dart';
import 'CardItem/CardWidgetListPage.dart';
import 'ClipRReactWidget.dart';
import 'DataTable/DataTableWidget.dart';
import 'DecoratedBoxTransition/DecoratedBoxTransitionPage.dart';
import 'Dismissible/DismissibleListPage.dart';
import 'DrawerItem/DrawerListPage.dart';
import 'ExpandedeWidget/ExpandedWidgetPage.dart';
import 'FadeTransitionPage.dart';
import 'GestureDetectorWidgetPage.dart';
import 'HeroWidget/HeroWidgetPage.dart';
import 'IgnorePointerWidget.dart';
import 'ImageWidget/ImageWidgetPage.dart';
import 'InterctiveViewerPage.dart';
import 'MediaQueryWidget.dart';
import 'OpacityWidget/TextOpacityPage.dart';
import 'RotationTransition/RotationTransitionPage.dart';
import 'SafeAreaWidget/SafeAreaWidgetListPage.dart';
import 'ScaleTransition/ScaleTransitionWidget.dart';
import 'SideTransitionPage/SideTransitionPage.dart';
import 'SizeTransition/SizeTransitionPage.dart';
import 'SnackBarWidgetItem/SnackBarListPage.dart';
import 'TextField Gallery/TextFieldsPage.dart';
import 'TranfromWidget/TransfromWidgetPage.dart';
import 'widgetlist/AbsorbPointerPage.dart';
import 'widgetlist/AlignWidgetPage.dart';
import 'widgetlist/AnimatedAlignPage.dart';
import 'widgetlist/AnimatedContiner/AnimatedContainerPage.dart';
import 'widgetlist/AppBar/AppBarList.dart';
import 'widgetlist/BottomSheet/BottomSheetList.dart';
import 'widgetlist/ContinerWidget/ContinerWidgetList.dart';
import 'widgetlist/DividerWidget/DividerWidgetList.dart';
import 'widgetlist/FlexibleWidget/FlexibleWidgetList.dart';
import 'widgetlist/WarpWidgetList/WarpWidgetListPage.dart';

class WidgetPage extends StatefulWidget {
  const WidgetPage({super.key});

  @override
  State<WidgetPage> createState() => _WidgetPageState();
}

List<Widgetdata> widgetdata = [
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_appbar.png", title: "App Bar", subtitle: "A material Design app bar",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_container.png", title: "Continer Widget", subtitle: "One of the main widget in Flutter",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_Flexible.png", title: "Flexible Widget", subtitle: "Used to divider with flex value",),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_expanded.png", title: "Expanded  Widget", subtitle: "Used to fie the rest of screen",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_button.png", title: "Button Widget", subtitle: "A material Design all types button ",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_divider.png", title: "Divider Widget", subtitle: "Usually used for menu",),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_card.png", title: "Card Widget", subtitle: "One of the main widget in flutter",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_transfrom.png", title: "Transform Widget", subtitle: "Usually to transform widget\n in flutter",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_animated.png", title: "Side Transition", subtitle: "Animates the position of a\nwidget in flutter",),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_animated.png", title: "Animated Container", subtitle: "Used to animate a container",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_wrap.png", title: "Wrap Widget", subtitle: "USed to list data from left to right",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_a.png", title: "Absorb Pointer", subtitle: "Absorb Pointers during hit testing",),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_align.png", title: "Align Widget", subtitle: "Used to do some alignment",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_animated.png", title: "Animated Align", subtitle: "Animated Align of align",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_clip.png", title: "ClipRRect Widget", subtitle: "A Widget that clips its child",),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_animated.png", title: "Fade Transition", subtitle: "Animates the opacity of widget",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_finger.png", title: "Gesture Detector Widget", subtitle: "Used to handle touch on object",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_a.png", title: "Ignore Pointer", subtitle: "A Widget that is invisible\nduring hit testing",),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icons_interactive.png", title: "Interactive Viewer Widget", subtitle: "A Widget gallery, with multiple\nactions and views",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_mediaquery.png", title: "Media Query Widget", subtitle: "Used to get device information\nscreen",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_bottomsheet.png", title: "Bottom Sheet", subtitle: "use to some show layout\nfrom the bottom",),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_appbar.png", title: "Drawer Widget", subtitle: "Usually used for menu",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_aspect.png", title: "SnackBar Widget", subtitle: "Used to so text",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_snakbar.png", title: "Aspect Ratio", subtitle: "The aspect ratio is expressed as a\nratio of width to height",),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_datatable.png", title: "Data Table", subtitle: "A Widget used to display and\nmanipulate data in a tabular view",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_menu.png", title: "Dismissible", subtitle: "A widget that can be dismissed by\ndragging in the indicated direction",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_hero.png", title: "Hero Widget", subtitle: "Hero widget to animate a widget\nfrom one screen to the next",),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_image.png", title: "Image Widget", subtitle: "Use to show image",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_opacity.png", title: "Opacity Widget", subtitle: "A widget that makes its child\npartially transparent.",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_safearea.png", title: "Safe Area Widget", subtitle: "SafeArea widget is an essential\ncomponent used to ensure a Flutter",),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_animated.png", title: "Animation Widget", subtitle: "The Widget to create a widget that\nperforms a reusable animation",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_animated.png", title: "Rotation Transition", subtitle: "Animates the rotation of a widget",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_animated.png", title: "Scale Transition", subtitle: "Animates the scale of a\ntransformed  widget",),
  Widgetdata(color1: Color(0xff9888A5), img: "assets/icons/icon_animated.png", title: "Size Transition", subtitle: "Animates its own size and clips\nand align its child",),
  Widgetdata(color1: Color(0xffC0B298), img: "assets/icons/icon_animated.png", title: "DecoratedBox Transition", subtitle: "Animates the rotation of a widget",),
  Widgetdata(color1: Color(0xff9BBEC7), img: "assets/icons/icon_listview.png", title: "Text Field", subtitle: "Text fields allow users to type \ntext into an app",),


];

class _WidgetPageState extends State<WidgetPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back,size: 5.h,),

          ),
          title: Text("Widgets",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w900),),
          actions: [
            Padding(
              padding:  EdgeInsets.only(right: 3.w),
              child: Icon(Icons.settings),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 2.h,right: 4.w,left: 4.w,bottom: 2.h),
          child: ListView.separated(

            shrinkWrap: true,
            itemCount: widgetdata.length,
            itemBuilder: (context, index) {
              return  InkWell(
                onTap: () {
                  switch(index){
                    case 0:
                      Get.to(AppBarListPage());
                      break;
                    case 1:
                      Get.to(ContainerWidgetList());
                      break;
                    case 2:
                      Get.to(FlexibleWidgetList());
                      break;
                    case 3:
                      Get.to(ExpandedWidgetPage());
                      break;
                    case 4:
                      Get.to(ButtonsPage());
                      break;
                    case 5:
                      Get.to(DividerWidgetList());
                      break;
                    case 6:
                      Get.to(CardListPage());
                      break;
                    case 7:
                      Get.to(TransformWidgetPage());
                      break;
                    case 8:
                      Get.to(SideTransitionPage());
                      break;
                    case 9:
                      Get.to(AnimatedContainerPage());
                      break;
                    case 10:
                      Get.to(WarpWidgetListPage());
                      break;
                    case 11:
                      Get.to(AbsorbPointerPage());
                      break;
                    case 12:
                      Get.to(AlignWidgetPage());
                      break;
                    case 13:
                      Get.to(AnimatedAlignPage());
                      break;
                    case 14:
                      Get.to(ClipRRectPage());
                      break;
                    case 15:
                      Get.to(FadeTransitionPage());
                      break;
                    case 16:
                      Get.to(GestureDetectorWidgetPage());
                      break;
                    case 17:
                      Get.to(IgnorePointerPage());
                      break;
                    case 18:
                      Get.to(InteractiveViewerPage());
                      break;
                    case 19:
                      Get.to(MediaQueryWidgetPage());
                      break;
                    case 20:
                      Get.to(BottomSheetListPage());
                      break;
                    case 21:
                      Get.to(DrawerListPage());
                      break;
                    case 22:
                      Get.to(SnackBarListPage());
                      break;
                    case 23:
                      Get.to(AspectRatioPage());
                      break;
                    case 24:
                      Get.to(DataTablePage());
                      break;
                    case 25:
                      Get.to(DismissibleListPage());
                      break;
                    case 26:
                      Get.to(HeroWidgetPage());
                      break;
                    case 27:
                      Get.to(ImageWidgetPage());
                      break;
                    case 28:
                      Get.to(TextOpacityPage());
                      break;
                    case 29:
                      Get.to(SafeAreaWidgetListPage());
                      break;
                    case 30:
                      Get.to(AnimationWidgetListPages());
                      break;
                    case 31:
                      Get.to(RotationTransitionPage());
                      break;
                    case 32:
                      Get.to(ScaleTransitionPage());
                      break;
                    case 33:
                      Get.to(SizeTransitionPage());
                      break;
                    case 34:
                      Get.to(DecoratedBoxTransitionPage());
                      break;
                    case 35:
                      Get.to(TextFieldsListPage());
                      break;

                  }
                },
                child: Row(
                  children: [
                    Container(
                      height: 10.h,
                      width: 18.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        color: widgetdata[index].color1,
                        image: DecorationImage(
                          image: AssetImage(widgetdata[index].img.toString()),scale: 0.8,
                        ),
                      ),
                    ),
                    SizedBox(width: 4.w,),
                    Container(
                      height: 11.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.all(Radius.circular(10),),
                      ),
                      child: Padding(
                        padding:  EdgeInsets.only(left: 2.w,right: 2.w,top: 1.h,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(widgetdata[index].title.toString(),style: TextStyle(fontSize: 12.sp),),
                                Text(widgetdata[index].subtitle.toString(),style: TextStyle(fontSize: 10.sp,color: Colors.black54),),
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
        ),

      ),
    );
  }
}

class Widgetdata {
  String img;
  Color color1;
  String title;
  String subtitle;

  Widgetdata({
    required this.color1,
    required this.img,
    required this.title,
    required this.subtitle,
  });
}

