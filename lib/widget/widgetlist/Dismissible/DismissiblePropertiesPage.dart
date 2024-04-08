import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class DismissiblePropertiesPage extends StatefulWidget {
  String title;
  DismissiblePropertiesPage({super.key,this.title = 'Dismissible - 2 Properties'});

  @override
  State<DismissiblePropertiesPage> createState() => _DismissiblePropertiesPageState();
}

class _DismissiblePropertiesPageState extends State<DismissiblePropertiesPage>  {

  List products = List<int>.generate(100, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,size: 5.h,color: Colors.white),
        ),
        title: Text(widget.title,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900,color: Colors.white),),
        backgroundColor: Color(0xffC0B298),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(1.w),
          child: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding:  EdgeInsets.only(top: 2.h, left: 8.w,right: 8.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dismissible - 2 Properties",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                    SizedBox(height: 1.h,),
                    Text("This is the example of Dismissible - 2 Properties",style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 1.h,),
                    Text("Example :-"),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return Dismissible(
                          background: Container(
                            color: Colors.redAccent,
                            child: Icon(Icons.delete_forever),
                          ),
                          key: ValueKey(products[index]),
                          onDismissed: (direction) {
                            setState(() {
                              products.removeAt(index);
                            });
                          },
                          child: Container(
                            child: ListTile(
                              title: Text("products ${products[index]}"),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
