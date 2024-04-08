import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AnimatedListPage extends StatefulWidget {
  String title;
  AnimatedListPage({super.key,this.title = 'Animated List'});

  @override
  State<AnimatedListPage> createState() => _AnimatedListPageState();
}

class _AnimatedListPageState extends State<AnimatedListPage> {

  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  void _addItem() {
    _items.insert(0, "Item ${_items.length + 1}");
    _key.currentState!.insertItem(
      0,
      duration: Duration(seconds: 1),
    );
  }

  void _removeItem(int index) {
    _key.currentState!.removeItem(
      index,
          (_, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: Card(
            margin: EdgeInsets.all(10),
            color: Colors.red,
            child: ListTile(
              title: Text(
                "Deleted",
                style: TextStyle(fontSize: 12.sp),
              ),
            ),
          ),
        );
      },
      duration: Duration(milliseconds: 300),
    );
    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,size: 3.h,color: Colors.white),
        ),
        title: Text(widget.title,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900,color: Colors.white),),
        backgroundColor: Color(0xff9BBEC7),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(1.w),
         // decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bgImage.png"),fit: BoxFit.cover)),
          child: Container(
            child: Padding(
              padding:  EdgeInsets.only(top: 4.h,left: 7.w,right: 7.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Animated List",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500),),
                  SizedBox(height: 1.h,),
                  Text("This is the example of Animated List",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 1.h,),
                  Text("Example :-"),
                  SizedBox(height: 3.h,),
                   FloatingActionButton(
                     backgroundColor: Colors.red.withOpacity(0.5),
                    onPressed: _addItem,
                    child: const Icon(Icons.add),
                  ),
                  Expanded(
                      child: AnimatedList(
                        key: _key,
                        initialItemCount: 0,
                        padding: EdgeInsets.all(4.w),
                        itemBuilder: (context, index, animation) {
                          return SizeTransition(
                            key: UniqueKey(),
                            sizeFactor: animation,
                            child: Card(
                              color: Colors.orangeAccent.withOpacity(0.3),
                              child: ListTile(
                                title: Text(
                                  _items[index],
                                  style: TextStyle(fontSize: 12.sp,),
                                ),
                                trailing: IconButton(
                                    onPressed: () {
                                      _removeItem(index);
                                    },
                                    icon: Icon(Icons.delete,),
                                ),
                              ),
                            ),
                          );
                        },
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
