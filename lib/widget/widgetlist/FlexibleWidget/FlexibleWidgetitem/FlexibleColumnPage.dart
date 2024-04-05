import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class FlexibleColumnPage extends StatefulWidget {
  const FlexibleColumnPage({super.key});

  @override
  State<FlexibleColumnPage> createState() => _FlexibleColumnPageState();
}

class _FlexibleColumnPageState extends State<FlexibleColumnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Flexible Column",style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor:  Color(0xff9888A5),
      ),
      body: Container(
        child: Stack(
          children: [
            Padding(padding: EdgeInsets.only(top: 4.h,left: 4.w,right: 4.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Flexible Column",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),

                  Text("This is the example of flexible column",style: TextStyle(color: Colors.black54,fontSize: 11.sp),),
                  SizedBox(height: 2.h,),
                  Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
                  SizedBox(height: 1.h,),
                  Padding(
                    padding:  EdgeInsets.only(left: 3.w,right: 3.w),
                    child: Container(
                      height: 30.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                            flex: 2,
                            child: Container(
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(height: 1.h,),
                          Flexible(
                            flex: 3,
                            child: Container(
                              color: Colors.green,
                            ),
                          ),
                          SizedBox(height: 1.h,),
                          Flexible(
                            flex: 5,
                            child: Container(
                              width: double.infinity,


                              color: Colors.blue,
                            ),
                          ),
                        ],
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
}
