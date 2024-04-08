import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SlidableList extends StatelessWidget {
   String title;
   SlidableList({super.key,this.title = 'Slidable List'});

   List<SlidableData> senderData = [
     SlidableData(title: "Cat Item 0", subject: "Category: 0", img: "assets/images/cat1.png"),
     SlidableData(title: "Cat Item 1", subject: "Category: 1", img: "assets/images/cat2.png"),
     SlidableData(title: "Cat Item 2", subject: "Category: 2", img: "assets/images/cat3.png"),
     SlidableData(title: "Cat Item 3", subject: "Category: 3", img: "assets/images/cat4.png"),
     SlidableData(title: "Cat Item 4", subject: "Category: 4", img: "assets/images/cat5.png"),
     SlidableData(title: "Cat Item 5", subject: "Category: 5", img: "assets/images/cat6.png"),
     SlidableData(title: "Cat Item 6", subject: "Category: 6", img: "assets/images/cat7.png"),
     SlidableData(title: "Cat Item 7", subject: "Category: 7", img: "assets/images/cat8.png"),
     SlidableData(title: "Cat Item 8", subject: "Category: 8", img: "assets/images/cat9.png"),
     SlidableData(title: "Cat Item 9", subject: "Category: 9", img: "assets/images/cat10.png"),
     SlidableData(title: "Cat Item 10", subject: "Category: 10",img:"assets/images/cat1.png"),
     SlidableData(title: "Cat Item 11", subject: "Category: 11",img:"assets/images/cat2.png"),
     SlidableData(title: "Cat Item 12", subject: "Category: 12",img:"assets/images/cat3.png"),
     SlidableData(title: "Cat Item 13", subject: "Category: 13",img:"assets/images/cat4.png"),
     SlidableData(title: "Cat Item 14", subject: "Category: 14",img:"assets/images/cat5.png"),
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
        child: RefreshIndicator(
          backgroundColor: Theme.of(context).primaryColorDark,
          onRefresh: () async {await Future.delayed(Duration(seconds: 2));},
          child: Stack(alignment: Alignment.topLeft,
            children: [
              Container(
                child: ListView.builder(
                  shrinkWrap: true ,itemCount:senderData.length,
                  itemBuilder: (context, index) {
                    return Slidable(
                        endActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          dismissible: DismissiblePane(onDismissed: () {}),
                          children:  [
                            SlidableAction(
                              onPressed: (context) {ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Delete")));},
                              backgroundColor:Theme.of(context).dividerColor,
                              foregroundColor: Theme.of(context).primaryColorDark, icon: Icons.delete, label: 'Delete',),
                            SlidableAction(
                              onPressed: (context) {ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("More")));},
                              backgroundColor:Theme.of(context).disabledColor,
                              foregroundColor: Theme.of(context).primaryColorDark, icon: Icons.more_horiz, label: 'More',),
                          ],
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 20, child: ClipOval(child: Image.asset(senderData[index].img,fit: BoxFit.cover,height: 15.w,width: 15.w,),),
                          ),
                          title:Text( senderData[index].title,
                            style: TextStyle(color:Theme.of(context).secondaryHeaderColor,fontWeight: FontWeight.bold),),
                          subtitle: Text(senderData[index].subject,style: TextStyle(color: Theme.of(context).shadowColor),),),
                    );
                  },),
              ),
            ],
          ),
        )
      ),
    );
  }
}

class SlidableData{
  String title;
  String subject;
  String img;
  
  SlidableData({
    required this.title,
    required this.subject,
    required this.img,
  });
}
