import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CountryCodePickerPage extends StatelessWidget {
  String title;
  CountryCodePickerPage({super.key,this.title = 'Country Code Picker'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(title,style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor:  Color(0xffC0B298),
      ),

      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(2.w),
          child:Center(child: CountryCodePicker(
            onChanged: print, initialSelection: 'IN', favorite: const ['+91','IN'],
            showCountryOnly: false, showOnlyCountryWhenClosed: true, showFlag: true,alignLeft: false,
            showFlagDialog: true, flagWidth: 10.w,
            textStyle: TextStyle(color: Theme.of(context).indicatorColor,fontSize: 16),
            dialogTextStyle: TextStyle(color: Theme.of(context).indicatorColor),),
          ),
        ),
      ),
    );
  }
}
