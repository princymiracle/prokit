import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ShadowContainerPage extends StatefulWidget {
  const ShadowContainerPage({super.key});

  @override
  State<ShadowContainerPage> createState() => _ShadowContainerPageState();
}

class _ShadowContainerPageState extends State<ShadowContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Shadow Container",style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xffC0B298),
      ),
      body: Container(
        child: Stack(
          children: [
            Padding(padding: EdgeInsets.only(top: 4.h,left: 5.w,right: 5.w,bottom: 4.h ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Shadow Container",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
              Text("This is the example of Shadow on contiainer ",style: TextStyle(color: Colors.black54),),
              SizedBox(height: 2.h,),
              Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
              SizedBox(height: 1.5.h,),
              Text("Continer with Shadow",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp),),
              SizedBox(height: 0.5.h,),
              Container(
                height: 4.h,
                width: 50.w,
                decoration: BoxDecoration(
                color: Color(0xffC0B298).withOpacity(0.7),
                  boxShadow:[
                    BoxShadow(
                      color: Colors.blueGrey.withOpacity(0.5),
                      blurRadius: 2,
                      offset: Offset(12, 10),
                    )
                  ]
                ),
                child: Text("this text is inside container",style: TextStyle(fontSize: 12.sp,color: Colors.white),),

              ),
              SizedBox(height: 2.h,),
              Text("Continer with Shadow and blur",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp),),
              SizedBox(height: 0.5.h,),
              Container(
                height: 4.h,
                width: 50.w,
                decoration: BoxDecoration(
                    color: Color(0xffC0B298).withOpacity(0.7),
                    boxShadow:[
                      BoxShadow(
                        color: Color(0xffC0B298).withOpacity(0.4),
                        blurRadius: 10,
                        offset: Offset(12, 10),
                      )
                    ]
                ),
                child: Text("this text is inside container",style: TextStyle(fontSize: 12.sp,color: Colors.white),),
              ),
              SizedBox(height: 2.h,),
              Text("Continer with multi  Shadow",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10.sp),),
              SizedBox(height: 0.5.h,),
              Container(
                height: 4.h,
                width: 50.w,
                decoration: BoxDecoration(
                    color: Color(0xffC0B298).withOpacity(0.7),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.blueGrey,
                        blurRadius: 10,
                        offset: Offset(12, 10),
                      ),
                    
                      BoxShadow(
                        color: Colors.red.withOpacity(0.3),
                        blurRadius: 10,
                        offset: Offset(12, 10),
                      ),
                    ]
                ),
                child: Text("this text is inside container",style: TextStyle(fontSize: 12.sp,color: Colors.white),),
              ),
            ],
          ),
        ),
          ],
        ),
      ),
    );
  }
}
