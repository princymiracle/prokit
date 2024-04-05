
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class WarpDirectionPage extends StatefulWidget {
  const WarpDirectionPage({super.key});

  @override
  State<WarpDirectionPage> createState() => _WarpDirectionPageState();
}

class _WarpDirectionPageState extends State<WarpDirectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("WarpDirection",style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xffC0B298),
      ),
      body: Container(
        child: Stack(
          children: [
            Padding(padding: EdgeInsets.only(top: 6.w,left: 5.w,right: 5.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("WarpDirection",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
                    Text("this is the example of of wrap widget without any style",style: TextStyle(color: Colors.black54,fontSize: 11.sp),),
                    SizedBox(height: 2.h,),
                    Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
                    SizedBox(height: 2.h,),
                    Text("Direction horizontal",style: TextStyle(color: Color(0xffC0B298),),),
                    Wrap(
                      children: [
                        Text("aaaaaabbbbbbbccccccgggggggrrrrrhhhhhhrrrreeeeejjjjjkkkkkyyyyyuuuuttttiiiiooooeeeeeewqwwwllxxlvfgmhyyuiyioeoedjfntjueri")
                      ],
                    ),
                    SizedBox(height: 2.h,),
                    Text("Direction vertical",style: TextStyle(color: Color(0xffC0B298)),),
                    SizedBox(height: 2.h,),
                    Wrap(
                      children: [
                        Text("asssddfgfw\nsrgtgygc\nvhhhhrrrr\nhrsdftrg\ntbhcvswi\nofrk\nigf;kdol\nkdlrgj\nkglbhjl\nfkjfw\nklejdeguh\nwifhyiu\ngeryug\nydfiugyd\nrigfde\ni9sqp9\ngt80ie\nr0t9fonj")
                      ],
                    ),
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
