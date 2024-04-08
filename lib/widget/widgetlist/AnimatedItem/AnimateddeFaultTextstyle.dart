import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AnimatedDefaultPage extends StatefulWidget {
  String title;
  AnimatedDefaultPage({super.key,this.title = 'Animated Defult TextStyle'});

  @override
  State<AnimatedDefaultPage> createState() => _AnimatedDefaultPageState();
}

class _AnimatedDefaultPageState extends State<AnimatedDefaultPage> {

  bool _first = true;
  double _fontSize = 15;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,size: 3.h,color: Colors.white,),
        ),
        title: Text(widget.title,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900,color: Colors.white),),
        backgroundColor: Color(0xffC0B298),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(1.w),
           //  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bgImage.png"),fit: BoxFit.cover)),
            child: Container(
              child: Padding(
                padding:  EdgeInsets.only(top: 4.h,left: 10.w,right: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Animated Default Textstyle",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500),),
                    SizedBox(height: 1.h,),
                    Text("This is the example of Animated Default Textstyle",style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 1.h,),
                    Text("Example :-"),
                    SizedBox(height: 3.h,),
                    Container(
                      child: SizedBox(
                        height: 15.h,
                        child: AnimatedDefaultTextStyle(
                          duration: Duration(milliseconds: 300),
                          style: TextStyle(
                            fontSize: _fontSize,
                            color: _color,
                            fontWeight: FontWeight.bold,
                          ),
                          child: Text("This text will change"),
                        ),
                      ),
                    ),
                    Center(
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.redAccent.withOpacity(0.5)),
                        ),
                          onPressed: () {
                            setState(() {
                              _fontSize = _first ? 30 : 35;
                              _color = _first ? Colors.blue : Colors.red;
                              _first = !_first;
                            });
                          },
                        child: Text("Change",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ),
    );
  }
}
