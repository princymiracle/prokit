import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class StandardImageList extends StatelessWidget {
   String title;
   StandardImageList({super.key,this.title = 'Standard Image List'});

   List imageData = [
     "assets/images/cityImage1.png", "assets/images/cityImage2.png",
     "assets/images/cityImage3.png", "assets/images/cityImage4.png",
     "assets/images/cityImage5.png", "assets/images/cityImage6.png",
     "assets/images/cityImage7.png", "assets/images/cityImage8.png",
     "assets/images/cityImage9.png", "assets/images/cityImage10.png",
     "assets/images/cityImage11.png","assets/images/cityImage12.png",
     "assets/images/cityImage13.png","assets/images/cityImage14.png",
     "assets/images/cityImage15.png","assets/images/cityImage16.png",
     "assets/images/cityImage17.png","assets/images/cityImage18.png",
     "assets/images/cityImage19.png","assets/images/cityImage20.png",
     ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,size: 5.h,color: Colors.white),
        ),
        title: Text(title,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900,color: Colors.white),),
        backgroundColor: Color(0xff9888A5),
        centerTitle: true,
      ),
      body: SafeArea(
        child:Stack(
          children:[
            Container(
            child: GridView.builder(
              shrinkWrap: true,itemCount: imageData.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(2.w),
                  child: ClipRRect(borderRadius: BorderRadius.circular(2.w),
                      child: Image.asset(imageData[index],fit: BoxFit.cover,height: 60.w,width: 60.w,)),
                );
              },
            ),
          ),],
        ),
      ),
    );
  }
}
