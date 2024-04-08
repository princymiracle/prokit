import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SimpleBottomBar extends StatelessWidget {
  String title;
  SimpleBottomBar({super.key,this.title = 'Simple Bottom Bar'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(title,style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xff9888A5)
      ),

      body: Container(),

      bottomNavigationBar: Stack(alignment: Alignment.bottomRight,
        children: [
          Container(height: 6.h,width: double.infinity,
              child: Column(
                children: [
                  Divider(height: 1.w,color: Theme.of(context).splashColor,),
                  Padding(padding:EdgeInsets.only(top: 2.w,left: 2.w,),
                    child: Row(
                      children: [
                        Icon(Icons.menu,size: 7.w,color: Theme.of(context).secondaryHeaderColor,), SizedBox(width: 5.w,),
                        Icon(Icons.search,size: 7.w,color: Theme.of(context).secondaryHeaderColor,),
                      ],
                    ),
                  ),
                ],
              )
          ),
          Padding(padding: EdgeInsets.only(bottom: 5.w,right: 4.w),
            child: Container(height: 6.h,width: 39.w,
              child: ElevatedButton(
                onPressed: (){
                  showToast(
                    'Add a task',
                    backgroundColor: Theme.of(context).primaryColorDark,
                    textStyle: TextStyle(color: Theme.of(context).indicatorColor),
                    position: StyledToastPosition.top,textAlign: TextAlign.left,
                    context: context,alignment: Alignment.topLeft,fullWidth: true,
                  );
                },
                  child: Row(
                    children:  [
                      Icon(Icons.add,color: Theme.of(context).primaryColorDark,size: 5.w,),SizedBox(width: 1.w,),
                      Text('Add a task',style: TextStyle(color: Theme.of(context).primaryColorDark),),
                    ],
                ),
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Theme.of(context).indicatorColor),),
              ),
            ),
          )
        ],)
    );
  }
}
