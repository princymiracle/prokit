import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class IconButtonPage extends StatelessWidget {
  String title;
  IconButtonPage({super.key,this.title = 'Icon Button'});

  String text =
      "An icon button is a picture printed on a Material widget""\n"
      "    that reacts to touches by filling with color (ink).";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(title,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xffC0B298),
      ),

      body: SafeArea(
        child: Stack(
          children: [
            Padding(padding:EdgeInsets.all(1.w),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(top: 2.w),
                    child: Text(text,style: TextStyle(color: Color(0xffC0B298),fontSize: 13),maxLines: 2,),
                  ),
                  Padding(padding: EdgeInsets.only(top: 3.w),
                    child: Divider(height: 1.w,color: Color(0xffC0B298),),
                  ),
                  Padding(padding: EdgeInsets.only(top: 3.w),
                    child: iconButton(context: context, text: "Simple IconButton", icon: Icons.thumb_up,toastText: 'BUTTON Pressed!',),
                  ),
                  Padding(padding: EdgeInsets.only(top: 3.w),
                    child: Divider(height: 1.w,color: Color(0xffC0B298),),
                  ),
                  Padding(padding: EdgeInsets.only(top: 3.w),
                    child: iconButton(context: context, text: "IconButton with Tooltip", icon: Icons.favorite,toastText: 'BUTTON Pressed!',),
                  ),
                  Padding(padding: EdgeInsets.only(top: 3.w),
                    child: Divider(height: 1.w,color: Color(0xffC0B298),),
                  ),
                  Padding(padding: EdgeInsets.only(top: 3.w),
                    child: Center(
                      child: Column(
                        children: [
                          Text("Custom Toggle IconButton",style: TextStyle(fontSize: 14),),
                          IconButton(onPressed: () {
                            showToast(
                              'Custom Toggle IconButton',backgroundColor: Theme.of(context).primaryColorDark,
                              textStyle: TextStyle(color: Color(0xffC0B298)),
                              position: StyledToastPosition.top,textAlign: TextAlign.left,
                              context: context,alignment: Alignment.topLeft,fullWidth: true,
                            );
                          }, icon: Icon(Icons.star,color: Theme.of(context).secondaryHeaderColor,size: 5.w,))],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget iconButton({
    required BuildContext context,
    required String text,String? toastText,
    required IconData icon,}){
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style: TextStyle(color: Theme.of(context).bottomAppBarColor,fontSize: 14),),
        IconButton(onPressed: () {
          showToast(
            toastText,backgroundColor: Theme.of(context).primaryColorDark,
            textStyle: TextStyle(color: Theme.of(context).indicatorColor),
            position: StyledToastPosition.top,textAlign: TextAlign.left,
            context: context,alignment: Alignment.topLeft,fullWidth: true,
          );
        }, icon: Icon(icon,color: Theme.of(context).secondaryHeaderColor,size: 5.w,))
      ],
    );
  }
}
