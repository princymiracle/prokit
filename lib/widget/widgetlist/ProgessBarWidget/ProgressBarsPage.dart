import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:sizer/sizer.dart';

class ProgressBarsPage extends StatefulWidget {
  String title;
  ProgressBarsPage({super.key,this.title = 'Progress Indicator Gallery'});

  @override
  State<ProgressBarsPage> createState() => _ProgressBarsPageState();
}

class _ProgressBarsPageState extends State<ProgressBarsPage> with SingleTickerProviderStateMixin {

  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(vsync: this, duration: Duration(milliseconds: 2000),);
    animation = Tween(begin: 0.0, end: 1.0).animate(controller)..addListener(() {setState(() {});});
    controller.repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(), icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(widget.title,style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xff9888A5),
      ),
      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(1.w),

          child: Padding(padding: EdgeInsets.all(3.w),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                progressIndicator(context: context,
                    conHeight: 10.h,value: animation.value,
                    title: 'Linear Progress Indicator'),
                Padding(padding: EdgeInsets.only(top: 2.w,),
                  child: circularProgressIndicator(
                      context: context,
                      conHeight: 15.h,
                      title: "Circular Progress Indicator"),
                ),
                Padding(padding: EdgeInsets.only(top: 4.w,),
                  child: customCircular(
                      context: context,
                      conHeight: 27.h,
                      title: "Custom Circular Percentage Indicator", text: '70%'),
                ),
                Padding(padding: EdgeInsets.only(top: 4.w),
                  child: customProgressBar(
                    context: context,
                    conHeight: 25.h,
                    text:'Custom ProgressBar',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget progressIndicator({
    required BuildContext context,
    required double conHeight,double? value,
    required String title,}){
    return Container(
      height: conHeight,decoration: BoxDecoration(color: Color(0xff9888A5).withOpacity(0.4),borderRadius: BorderRadius.circular(1.w)),
      child: Column(
        children: [
          Padding(padding:EdgeInsets.only(top: 2.w),
              child: Center(child: Text(title,style: TextStyle(color: Theme.of(context).hoverColor,fontSize: 16),))),
          Padding(padding:EdgeInsets.only(top: 2.w),
            child: LinearProgressIndicator(value: value, color: Color(0xff9888A5),),),
        ],
      ),
    );
  }

  Widget circularProgressIndicator({
    required BuildContext context,
    required double conHeight,
    required String title,}){
    return Container(
      height: conHeight,decoration: BoxDecoration(color: Color(0xff9888A5).withOpacity(0.4),borderRadius: BorderRadius.circular(1.w)),
      child: Column(
        children: [
          Padding(padding:EdgeInsets.only(top: 2.w),
              child: Center(child: Text(title,style: TextStyle(color: Theme.of(context).hoverColor,fontSize: 16),))),
          Padding(padding:EdgeInsets.only(top: 2.w,left: 2.w),
            child: Row(
              children: [
                CircularProgressIndicator(color: Color(0xff9888A5),strokeWidth:2,),SizedBox(width: 9.w,),
                CircularProgressIndicator(color: Theme.of(context).dividerColor,strokeWidth:4,),SizedBox(width: 9.w,),
                CircularProgressIndicator(color: Color(0xff9888A5),strokeWidth:6,),SizedBox(width: 9.w,),
                CircularProgressIndicator(color: Theme.of(context).dividerColor,strokeWidth:8,),SizedBox(width: 9.w,),
                CircularProgressIndicator(color: Color(0xff9888A5),strokeWidth:10,),
              ],
            )
          ),
        ],
      ),
    );
  }

  Widget customCircular({
    required BuildContext context,
    required double conHeight,
    required String title,
    required String text}){
    return Container(
      height: conHeight,decoration: BoxDecoration(color: Color(0xff9888A5).withOpacity(0.4),borderRadius: BorderRadius.circular(1.w)),
      child: Column(
        children: [
          Padding(padding:EdgeInsets.only(top: 2.w),
              child: Center(child: Text(title,style: TextStyle(color: Theme.of(context).hoverColor,fontSize: 16),))),
          Padding(padding:EdgeInsets.only(top: 4.w),
            child: Center(child: CircularPercentIndicator(radius: 15.w, lineWidth: 7.0, percent: 0.70,
                  center:  Text(text,style: TextStyle(color: Theme.of(context).hoverColor,fontWeight: FontWeight.bold,fontSize: 14.sp),),progressColor: Theme.of(context).dialogBackgroundColor,
                  backgroundColor: Theme.of(context).primaryColorDark, rotateLinearGradient: true, circularStrokeCap: CircularStrokeCap.round),)),
        ],
      ),
    );
  }

  Widget customProgressBar({
    required BuildContext context,double? conHeight,String? text}){
    return Container(
      height: conHeight,decoration: BoxDecoration(color: Color(0xff9888A5).withOpacity(0.4),borderRadius: BorderRadius.circular(1.w)),
      child: Column(
        children: [
          Padding(padding:EdgeInsets.only(top: 2.w),
              child: Center(child: Text(text ?? "",style: TextStyle(color: Theme.of(context).hoverColor,fontSize: 16),))),
          Padding(padding: EdgeInsets.only(top: 4.w),
            child: Container(height: 10.h,width: 20.w,
                decoration: BoxDecoration(color: Theme.of(context).primaryColorDark, borderRadius: BorderRadius.circular(2.w),
                    boxShadow: [BoxShadow(color: Theme.of(context).hoverColor,blurRadius: 3.0,blurStyle: BlurStyle.outer)]),
              child:Center(
                child: SpinKitWave(
                  color: Theme.of(context).secondaryHeaderColor,
                  size: 5.h,type: SpinKitWaveType.start,
                  duration: const Duration(milliseconds: 2000),),)
            ),
          ),
        ],
      ),
    );
  }
}
