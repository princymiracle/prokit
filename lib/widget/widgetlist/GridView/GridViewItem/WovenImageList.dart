import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class WovenImageList extends StatelessWidget {
   String title;
   WovenImageList({super.key,this.title = 'Woven Image List'});

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
        backgroundColor: Color(0xffC0B298),
        centerTitle: true,
      ),
      body: SafeArea(
        child:Stack(
          children:[
            GridView.builder(
              shrinkWrap: true,itemCount: imageData.length,padding: EdgeInsets.all(5.w),
              gridDelegate: SliverWovenGridDelegate.count(
                  pattern: [
                        WovenGridTile(1),
                        WovenGridTile(5 / 7, crossAxisRatio: 0.9, alignment: AlignmentDirectional.centerEnd,),
                      ],
                    crossAxisCount: 2,
                    mainAxisSpacing: 2.w,
                    crossAxisSpacing: 10.w,
              ),
              itemBuilder: (context, index) {
                return Container(child:Image.asset(imageData[index],fit: BoxFit.cover,) ,);
              },
            ),
          ],
        ),
      ),
    );
  }
}