import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class BorderRadiusContainerPage extends StatefulWidget {
  const BorderRadiusContainerPage({super.key});

  @override
  State<BorderRadiusContainerPage> createState() => _BorderRadiusContainerPageState();
}

class _BorderRadiusContainerPageState extends State<BorderRadiusContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Border Radius Container",style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xff9888A5),
      ),
      body: Container(
        child: Stack(
          children: [
            Padding(padding: EdgeInsets.only(top: 4.h,left: 5.w,right: 5.w,bottom: 4.h ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Border Container",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
                Text("This is the example of border on contiainer ",style: TextStyle(color: Colors.black54),),
                SizedBox(height: 2.h,),
                Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
                SizedBox(height: 1.5.h,),
                Text("Border with radius",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11.sp),),
                SizedBox(height: 0.5.h,),
                Container(
                  height: 3.h,
                  width: 52.w,
                  decoration: BoxDecoration(
                   border: Border.all(color: Colors.black),
                     borderRadius: BorderRadius.all(Radius.circular(15),
                     ),
                  ),
                  child: Text("This text is inside container",style: TextStyle(fontSize: 12.sp),),
                ),
                SizedBox(height: 2.h,),
                Text("Border radius with top left and bottom right radius ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11.sp),),
                SizedBox(height: 0.5.h,),
                Container(
                  height: 3.h,
                  width: 53.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Text("This text is inside container",style: TextStyle(fontSize: 12.sp),),
                ),
                SizedBox(height: 2.h,),
                Text("Border radius with top left and top right radius ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11.sp),),
                SizedBox(height: 0.5.h,),
                Container(
                  height: 3.h,
                  width: 53.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),
                    ),
                  ),
                  child: Text("This text is inside container",style: TextStyle(fontSize: 12.sp),),
                ),
                SizedBox(height: 2.h,),
                Text("Border radius with bottom left and bottom right radius ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11.sp),),
                SizedBox(height: 0.5.h,),
                Container(
                  height: 3.h,
                  width: 53.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: Text("This text is inside container",style: TextStyle(fontSize: 12.sp),),
                ),
                SizedBox(height: 2.h,),
                Text("Border radius with horizontal radius",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11.sp),),
                SizedBox(height: 0.5.h,),
                Container(
                  height: 3.h,
                  width: 52.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.horizontal(left: Radius.circular(15),
                    ),
                  ),
                  child: Text("This text is inside container",style: TextStyle(fontSize: 12.sp),),
                ),
                SizedBox(height: 2.h,),
                Text("Border radius with background color  ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11.sp),),
                SizedBox(height: 0.5.h,),
                Container(
                  height: 3.h,
                  width: 53.w,
                  decoration: BoxDecoration(
                    color: Color(0xff9888A5).withOpacity(0.5),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),
                    ),
                  ),
                  child: Text("This text is inside container",style: TextStyle(fontSize: 12.sp),),
                ),
                SizedBox(height: 2.h,),
                Text("Border radius with image"),
                SizedBox(height: 0.5.h,),
                Container(
                  height: 30.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/img_clip1.png'),fit: BoxFit.cover,

                    ),
                    border: Border.all(
                      color: Color(0xff9888A5),
                    ),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),),
                  ),
                )
              ],
            ),
          ),
        ),
          ],
        ),
      ),
    );
  }
}
