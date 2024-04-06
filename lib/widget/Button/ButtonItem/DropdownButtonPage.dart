import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class DropdownButtonPage extends StatefulWidget {
  String title;
  DropdownButtonPage({super.key,this.title = 'Dropdown Button'});

  @override
  State<DropdownButtonPage> createState() => _DropdownButtonPageState();
}

class _DropdownButtonPageState extends State<DropdownButtonPage> {

  String? dropdownValue;

  var simpleItem = ["One","Two","Free","Four","Five"];
  var dropDown = ["One","Two","Free","Four"];
  var scrollItem = ["One","Two","Free","Four","Can","I","Have","A","Little","Bit","More","Five","Six","Seven","Eight","Nine","Ten"];

  String scrollableValue = 'One';
  String simpleValue ='One';
  String text =
      "A dropdown button lets the user select from a number of""\n"
      " items. The button shows the currently selected item as ""\n"
      "well as an arrow that opens a menu for selecting another""\n"
      "                                     item.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(widget.title,style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xff9BBEC7),
      ),

      body: SafeArea(
        child: Stack(
          children: [
            Padding(padding:EdgeInsets.all(1.h),
              child: Column(
                children: [
                  Padding(padding:  EdgeInsets.only(top: 5),
                    child: Text(text,maxLines: 4,style: TextStyle(color: Color(0xff9BBEC7),fontSize: 13,fontWeight: FontWeight.bold),),
                  ),
                  Padding(padding: EdgeInsets.only(top: 7),
                    child: Divider(height: 1.w,color: Color(0xff9BBEC7),),
                  ),
                  Padding(padding: EdgeInsets.only(top: 7),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Simple dropdown: ",style: TextStyle(color: Theme.of(context).bottomAppBarColor,fontSize: 14),),
                        Container(
                          child: DropdownButton<String>(
                            value: simpleValue,dropdownColor: Color(0xff9BBEC7),
                            items: simpleItem.map((String simpleItem) =>
                                DropdownMenuItem<String>(
                                  child: Text(simpleItem,style: TextStyle(color: Theme.of(context).indicatorColor),),
                                  value: simpleItem,
                                )).toList(),
                            onChanged: (String? val) {
                              setState(() {simpleValue = val!;});
                            },),
                        ),
                      ],
                    )
                  ),
                  Padding(padding: EdgeInsets.only(top: 7),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Dropdown with a hint: ",style: TextStyle(color: Theme.of(context).bottomAppBarColor,fontSize: 14),),
                        Container(
                          child: DropdownButton<String>(
                            value: dropdownValue,dropdownColor: Theme.of(context).primaryColorDark,
                            hint: Text( "Choose",style: TextStyle(color: Theme.of(context).indicatorColor),),
                            items: dropDown.map((e) =>
                                DropdownMenuItem<String>(
                                  child: Text(e,style: TextStyle(color: Theme.of(context).indicatorColor),),
                                  value: e,
                                )).toList(),
                            onChanged: (val) {
                              setState(() {dropdownValue = val;});
                            },),
                        ),
                      ],
                    )
                  ),
                  Padding(padding: EdgeInsets.only(top: 7),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Scrollable dropdown: ",style: TextStyle(color: Theme.of(context).bottomAppBarColor,fontSize: 14),),
                        Container(
                          child: DropdownButton<String>(
                            value: scrollableValue,dropdownColor: Theme.of(context).primaryColorDark,
                            items: scrollItem.map((e) =>
                                DropdownMenuItem<String>(
                                  child: Text(e,style: TextStyle(color: Theme.of(context).indicatorColor),),
                                  value: e,
                                )).toList(),
                            onChanged: (String? val) {
                              setState(() {scrollableValue = val!;});
                            },),
                        ),
                      ],
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
