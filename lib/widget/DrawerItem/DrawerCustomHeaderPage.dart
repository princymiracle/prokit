import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class DrawerCustomHeaderPage extends StatefulWidget {
  String title;
  DrawerCustomHeaderPage({super.key,this.title = 'Drawer Custom Header'});

  @override
  State<DrawerCustomHeaderPage> createState() => _DrawerCustomHeaderPageState();
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('title', title));
  }
}

class _DrawerCustomHeaderPageState extends State<DrawerCustomHeaderPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text(widget.title,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900,color: Colors.white),),
         backgroundColor: Color(0xff9BBEC7),
         centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Color(0xff9BBEC7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage("assets/images/Profile.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text("Ashish Rawat",style: TextStyle(fontSize: 12.sp,color: Colors.white),),
                  Text("ashishrawat@gmail.com",style: TextStyle(fontSize: 12.sp,color: Colors.white),),
                ],
              ),
            ),
            ListTile(
              title: Text("Item 1"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("Item 2"),
              leading: Icon(Icons.arrow_forward),
            ),
            InkWell(
              onTap: () => Get.back(),
              child: ListTile(
                title: Text("Close this Drawer"),
              ),
            ),
          ],
        ),
      ),
      body: Center(child: Text('Drawer Custom Header',style: TextStyle(fontWeight: FontWeight.bold),),),
    );
  }
}