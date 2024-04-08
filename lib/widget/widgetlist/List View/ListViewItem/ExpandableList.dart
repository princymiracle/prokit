import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ExpandableList extends StatefulWidget {
  String title;
   ExpandableList({super.key,this.title = 'Expandable Demo'});

  @override
  State<ExpandableList> createState() => _ExpandableListState();
}

class _ExpandableListState extends State<ExpandableList> {

  List<SubData> sublist  = [
    SubData(title: "Map", img: "assets/icons/icons_map.png"),
    SubData(title: "Album", img:"assets/icons/icons_album.png"),
    SubData(title: "Phone", img:"assets/icons/icons_phone.png"),
    SubData(title: "DeskTop MAC", img: "assets/icons/icons_desktop.png"),
  ];

  bool status = false;
  bool lakeStatus = false;
  bool subStatus = false;

  String  subtext =
      "Vembanad is the longest lake in India, as well as the largest in the state of Kerala."
      " The lake has an area of 230 square kilometers and a maximum length of 96.5 km."
      " Spanning several districts in the state of Kerala, it is known as Vembanadu Lake "
      "in Kottayam, Vaikom, Changanassery, Punnamada Lake in Alappuzha, Punnappra,"
      " Kuttanadu and Kochi Lake in Kochi. Several groups of small islands including "
      "Vypin, Mulavukad, Maradu, Udayamperoor, Vallarpadam, and Willingdon Island are "
      "located in the Kochi Lake portion. Kochi Port is built around the Willingdon "
      "Island and the Vallarpadam island.Kuttanad, also known as The Rice Bowl of "
      "Kerala, has the lowest altitude in.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back,size: 5.h,color: Colors.white),
          ),
          title: Text(widget.title,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900,color: Colors.white),),
          backgroundColor: Color(0xff9BBEC7),
          centerTitle: true,
        ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(padding: EdgeInsets.all(3.w),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                lakePicholaFirst("assets/images/img_lake1.png","Vembanad Lake", subtext, Icons.keyboard_arrow_up_outlined, Icons.keyboard_arrow_down_outlined,),
                SizedBox(height: 2.h,),
                lakePicholaSecond("Vembanad Lake"),
                SizedBox(height: 2.h,),
                subList("Sublist", Icons.keyboard_arrow_up_outlined, Icons.keyboard_arrow_down_outlined, sublist,),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget lakePicholaFirst(String image,String title,String subText,IconData icon,IconData icon1){
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorDark, borderRadius: BorderRadius.circular(1.w),
        boxShadow: [BoxShadow(color: Theme.of(context).shadowColor,blurRadius: 1.0,blurStyle: BlurStyle.outer)],
      ),
      child: Wrap(
        children: [
          ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(2.w),topRight: Radius.circular(2.w)),
              child: Image.asset(image,fit: BoxFit.cover,width: double.infinity,height: 25.h,)),
          Padding(padding: EdgeInsets.only(left: 2.w,right: 2.w),
            child: ExpansionTile(tilePadding: EdgeInsets.zero,shape: const Border(),
              title: Text(title,style: TextStyle(color: Theme.of(context).shadowColor,fontSize: 38),),
              trailing:lakeStatus
                  ? Padding(padding:  EdgeInsets.only(bottom: 12.w),
                   child: Icon(icon,size: 6.w,color: Theme.of(context).cardColor,),)
                  : Padding(padding:  EdgeInsets.only(bottom: 12.w,),
                   child: Icon(icon1,size: 6.w,color: Theme.of(context).cardColor,),),
              onExpansionChanged: (value) {
              lakeStatus = value; setState(() {});
              },
              children: [Text(subText,style: TextStyle(color: Theme.of(context).shadowColor,fontSize: 10,),maxLines: 11,),],
            ),
          )
        ],
      ),
    );
  }

  Widget lakePicholaSecond(String title,){
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorDark, borderRadius: BorderRadius.circular(1.w),
        boxShadow: [BoxShadow(color: Theme.of(context).shadowColor,blurRadius: 1.0,blurStyle: BlurStyle.outer)],
      ),
      child:Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(left: 3.w),
            child: Text(title,style: TextStyle(color: Theme.of(context).shadowColor,fontSize: 40),),
          ),
          status ? Padding(padding: EdgeInsets.only(bottom: 2.w,left: 2.w),
            child: Text(status ? "Vembanad Lake" : "",style: TextStyle(color: Theme.of(context).primaryColor),),)
              : Container(),
          Image.asset(status ? "assets/images/img_lake3.png" : "assets/images/img_lake2.png" ,fit: BoxFit.fill,height: status ? 22.h : 18.h,width: double.infinity,),
          status ? Padding(padding: EdgeInsets.only(top: 2.w,left: 2.w),
            child: Text(status ? "Different views of Vembanad Lake" : "",style: TextStyle(color: Theme.of(context).secondaryHeaderColor),),)
              : Container(),
          Padding(padding: EdgeInsets.only(left: 2.w),
            child: TextButton(
              child: Text(status ? "COLLAPSE" : "EXPAND",style: TextStyle(color: Theme.of(context).secondaryHeaderColor),),
              onPressed: () {
                setState(() {status = !status;});
                },
            ),
          ),
        ],
      ),
    );
  }

  Widget subList(String title,IconData icon,IconData icon1,List<SubData> data){
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorDark, borderRadius: BorderRadius.circular(1.w),
        boxShadow: [BoxShadow(color: Theme.of(context).shadowColor,blurRadius: 1.0,blurStyle: BlurStyle.outer)],
      ),
      child: ExpansionTile(shape: const Border(),
        title: Text(title,style: TextStyle(color: Theme.of(context).shadowColor),),
        trailing: subStatus
            ? Icon(icon,size: 6.w,color: Theme.of(context).shadowColor,)
            : Icon(icon1,size: 6.w,color: Theme.of(context).cardColor,),
        onExpansionChanged: (value) {
          subStatus = value; setState(() {});
        },
        children: List.generate(data.length, (index) =>
            ListTile(
              title: Text(data[index].title),
              leading: Image.asset(data[index].img,fit: BoxFit.cover,height: 4.w,),
            ),
        ),
      ),
    );
  }
}

class SubData{
  String title;
  String img;

  SubData({
    required this.title,
    required this.img,
  });
}