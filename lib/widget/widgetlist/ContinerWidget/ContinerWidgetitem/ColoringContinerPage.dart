import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';



class ColoringContainerPage extends StatefulWidget {
  const ColoringContainerPage({super.key});

  @override
  State<ColoringContainerPage> createState() => _ColoringContainerPageState();
}

class _ColoringContainerPageState extends State<ColoringContainerPage> {
List<Coloringcontainer> coloringcontainer = [
   Coloringcontainer(color: Colors.pink),
   Coloringcontainer(color: Colors.blue),
   Coloringcontainer(color: Colors.green),
   Coloringcontainer(color: Colors.purpleAccent),
   Coloringcontainer(color: Colors.redAccent),
   Coloringcontainer(color: Colors.lightGreen),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Coloring Container",style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor:  Color(0xffC0B298),
      ),
      body: Container(
        child: Stack(
          children: [
            Padding(padding: EdgeInsets.only(top: 4.h,left: 5.w,right: 5.w ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Coloring Container",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
                  Text("This is the example of coloring on contiainer using different method",style: TextStyle(color: Colors.black54,fontSize: 11.sp),),
                  SizedBox(height: 2.h,),
                  Text("Example",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.sp),),
                  SizedBox(height: 1.h,),
                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: coloringcontainer.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                             Container(
                               height: 7.h,
                               width: double.infinity,
                               color: coloringcontainer[index].color,
                             ),
                          ],
                        );
                      }, separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(height: 2.h,);
                  },
                     )
              ],),
            ),
          ],
        ),
      ),
    );
  }
}

class Coloringcontainer{
  Color color;

  Coloringcontainer({
  required this.color,
});


}