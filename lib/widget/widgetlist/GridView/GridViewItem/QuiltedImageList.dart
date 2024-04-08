import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class QuiltedImageList extends StatelessWidget {
   String title;
   QuiltedImageList({super.key,this.title = 'Quilted Image List'});

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
        backgroundColor: Color(0xff9BBEC7),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              child: GridView.custom(padding: EdgeInsets.all(1.w),
                gridDelegate: SliverQuiltedGridDelegate(
                  crossAxisCount: 4,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                  repeatPattern: QuiltedGridRepeatPattern.same,
                  pattern: [
                    QuiltedGridTile(2, 2),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 2),
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate((context, index) =>
                            Card(color: Theme.of(context).primaryColorDark,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1.w)),
                              child: Padding(padding: EdgeInsets.all(1.w),
                                child: ClipRRect(borderRadius: BorderRadius.circular(2.w),
                                    child: Image.asset(imageData[index],fit: BoxFit.cover,)),),
                            ),
                    childCount: imageData.length),
              ),
            ),
          ],
        )
      ),
    );
  }
}


