import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class DataTablePage extends StatefulWidget {
  String title;
  DataTablePage({super.key,this.title = 'Data Table Widget'});

  @override
  State<DataTablePage> createState() => _DataTablePageState();
}

class _DataTablePageState extends State<DataTablePage> with TickerProviderStateMixin {

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
                  Text("Data Table Widget",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                  SizedBox(height: 1.h,),
                  Text("This is the example of Data Table Widget",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 1.h,),
                  Text("Example :-"),
                  SizedBox(height: 5.h,),
                  DataTable(
                    columns: <DataColumn>[
                      DataColumn(label: Text("Name",style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.bold),),tooltip: 'Name'),
                      DataColumn(label: Text("Phone",style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.bold),),tooltip: 'Phone'),
                      DataColumn(label: Text("Address",style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.bold),),tooltip: 'Address'),
                    ],
                    rows: <DataRow>[
                      DataRow(
                          cells:<DataCell>[
                            DataCell(Text("Name 1"),),
                            DataCell(Text("0123456789"),),
                            DataCell(Text("Surat"),),
                          ],
                      ),
                      DataRow(
                        cells:<DataCell>[
                          DataCell(Text("Name 2"),),
                          DataCell(Text("0123456789"),),
                          DataCell(Text("Surat"),),
                        ],
                      ),
                      DataRow(
                        cells:<DataCell>[
                          DataCell(Text("Name 3"),),
                          DataCell(Text("0123456789"),),
                          DataCell(Text("Surat"),),
                        ],
                      ),
                    ],
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
