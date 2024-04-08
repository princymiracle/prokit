
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ColorPickerPage extends StatefulWidget {
  String title;
  ColorPickerPage({super.key,this.title = 'Color Picker'});

  @override
  State<ColorPickerPage> createState() => _ColorPickerPageState();
}

class _ColorPickerPageState extends State<ColorPickerPage> {

  Color currentColor = Colors.limeAccent;

  void changeColor(Color color) {
    setState(() => currentColor = color);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(widget.title,style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor:  Color(0xffC0B298),
      ),

      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(2.w),
          child: Center(child:
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    showDialog(context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(backgroundColor: Theme.of(context).primaryColorDark,
                          title: Text('Pick a color'),
                          content: SingleChildScrollView(
                            child: ColorPicker(pickerColor: currentColor, onColorChanged: changeColor, showLabel: true, pickerAreaHeightPercent: 0.8,),),
                          actions: <Widget>[TextButton(onPressed: () {Navigator.of(context).pop();}, child: const Text('Done'),),],);},);
                  },
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Theme.of(context).secondaryHeaderColor),),
                  child: Text('Change Color',style: TextStyle(color: Theme.of(context).primaryColorDark),),
                ),
                SizedBox(height: 5.w),
                const Text('Selected Color', style: TextStyle(fontSize: 20),),
                SizedBox(height: 2.w),
                Container(
                  width: 30.w, height: 15.h, decoration: BoxDecoration(color: currentColor, borderRadius: BorderRadius.circular(2.w),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
