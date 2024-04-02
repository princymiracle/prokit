import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';


class SnackBarWithActionPage extends StatefulWidget {
  String title;
  SnackBarWithActionPage({super.key,this.title = 'SnackBar With Action'});

  @override
  State<SnackBarWithActionPage> createState() => _SnackBarWithActionPageState();
}

class _SnackBarWithActionPageState extends State<SnackBarWithActionPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: IconButton(onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(widget.title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(1.w),
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bgImage.png"),fit: BoxFit.cover)),
          child: Container(
            child: Padding(
              padding:  EdgeInsets.only(top: 2.h, left: 5.w,right: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("SnackBar With Action",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                  SizedBox(height: 1.h,),
                  Text("This is the example of SnackBar With Action",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 1.h,),
                  Text("Example :-"),
                  SizedBox(height: 5.h,),
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar(); // Hide any previous snackbar
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar( // Show a new snackbar
                        content: const Text('Snackbar With Action'),
                        action: SnackBarAction(
                          label: 'Undo',textColor: Colors.green,
                          onPressed: () {
                            ScaffoldMessenger.of(context).hideCurrentSnackBar(); // Hide the current snackbar
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar( // Show another snackbar
                                content: Text(
                                  'Undo',style: TextStyle(color: Colors.green),
                                )));
                          },
                        ),
                      ));
                    },
                    child: const Text('Show Snackbar'),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     setState(() {
                  //       ScaffoldMessenger.of(context).showSnackBar(
                  //         SnackBar(
                  //           content: Text('Simple Snackbar'),
                  //         ),
                  //       );
                  //     });
                  //   },
                  //   child: Text("Show Snackbar"),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
