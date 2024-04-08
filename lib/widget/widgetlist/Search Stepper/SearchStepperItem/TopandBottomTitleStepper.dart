import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class TopandBottomTitleStepper extends StatefulWidget {
  String title;
  TopandBottomTitleStepper({super.key,this.title = 'Top and Bottom Title Stepper'});

  @override
  State<TopandBottomTitleStepper> createState() => _TopandBottomTitleStepperState();
}

class _TopandBottomTitleStepperState extends State<TopandBottomTitleStepper> {

  int activeStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,size: 5.h,color: Colors.white),
        ),
        title: Text(widget.title,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w900,color: Colors.white),),
        backgroundColor: Color(0xff9888A5),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Center(
                child: Container(
                  height:22.w, width: 100.w,
                  padding: EdgeInsets.only(top: 3.w),
                  decoration: BoxDecoration(color: Color(0xffFFEBD4),borderRadius: BorderRadius.circular(5.w),),
                  child: Center(
                    child: EasyStepper(
                      stepAnimationCurve: Curves.bounceInOut,direction: Axis.horizontal,
                      activeStep: activeStep,internalPadding: 0,
                      lineStyle: LineStyle(lineLength: 10.w, lineType: LineType.normal,
                          defaultLineColor: Theme.of(context).bottomAppBarColor),
                      stepRadius: 10,showLoadingAnimation: false,showStepBorder: true,
                      finishedStepBorderColor: Colors.white,
                      finishedStepTextColor: Theme.of(context).indicatorColor,
                      activeStepTextColor: Theme.of(context).indicatorColor,
                      defaultStepBorderType: BorderType.normal,
                      unreachedStepBorderColor: Theme.of(context).hoverColor,
                      steps: [
                        step(context: context, text: 'Glam Chain',
                          bgColor: activeStep >= 0 ? Theme.of(context).indicatorColor : Colors.white),
                        step(context: context, text: 'Crop Chain',topText: true,
                          bgColor: activeStep >= 1 ? Theme.of(context).indicatorColor : Colors.white),
                        step(context: context, text: 'Chain Cube',
                          bgColor: activeStep >= 2 ? Theme.of(context).indicatorColor : Colors.white),
                        step(context: context, text: 'Capital Chain',topText: true,
                          bgColor: activeStep >= 3 ? Theme.of(context).indicatorColor : Colors.white),
                        step(context: context, text: 'Ruby Chain',
                          bgColor: activeStep >= 4 ? Theme.of(context).indicatorColor : Colors.white),
                      ],
                      onStepReached: (index) => setState(() => activeStep = index),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  EasyStep step({
    required BuildContext context,
    String? text,Color? bgColor,bool? topText,}){
    return EasyStep(
      customStep:CircleAvatar(radius: 8,backgroundColor:Theme.of(context).primaryColorDark,
        child: CircleAvatar(radius: 7, backgroundColor: bgColor,),),
      title: text ?? "",topTitle: topText ?? false,
    );
  }
}
