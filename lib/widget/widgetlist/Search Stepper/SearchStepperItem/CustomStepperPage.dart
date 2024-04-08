import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CustomStepperPage extends StatefulWidget {
  String title;
  CustomStepperPage({super.key,this.title = 'Custom Stepper'});

  @override
  State<CustomStepperPage> createState() => _CustomStepperPageState();
}

class _CustomStepperPageState extends State<CustomStepperPage> {

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
        backgroundColor: Color(0xffC0B298),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Center(
                child: Container(height: 35.w, width: 100.w,
                  decoration: BoxDecoration(color: Color(0xffFFEBD4),borderRadius: BorderRadius.circular(5.w),),
                  child: Center(
                    child: EasyStepper(
                      activeStep: activeStep,
                      lineStyle:  LineStyle(defaultLineColor:Theme.of(context).bottomAppBarColor,
                        lineLength: 50, lineType: LineType.dashed, lineThickness: 3,
                        lineSpace: 1, lineWidth: 10, unreachedLineType: LineType.dashed,),
                      stepShape: StepShape.rRectangle,stepRadius:28,showLoadingAnimation: false,
                      stepBorderRadius: 15, borderThickness: 3, internalPadding: 10,
                      padding: const EdgeInsetsDirectional.symmetric(horizontal: 30, vertical: 20,),
                      finishedStepBorderColor:Theme.of(context).primaryColorDark,
                      finishedStepTextColor: Theme.of(context).indicatorColor,
                      activeStepTextColor:Theme.of(context).indicatorColor,
                      unreachedStepBorderColor: Theme.of(context).hoverColor,
                      finishedStepBackgroundColor: Theme.of(context).primaryColorDark,
                      steps: [
                        customStep(context: context,img: "assets/images/img_stepperImg1.png",
                            text: 'Person 1',stepOpacity: activeStep >= 0 ? 1 : 0.3,),
                        customStep(context: context,img: "assets/images/img_stepperImg2.png",
                            text: 'Person 2',stepOpacity: activeStep >= 1 ? 1 : 0.3,),
                        customStep(context: context,img: "assets/images/img_stepperImg3.png",
                            text: 'Person 3',stepOpacity: activeStep >= 2 ? 1 : 0.3,),
                        customStep(context: context,img: "assets/images/img_stepperImg4.png",
                            text: 'Person 4',stepOpacity: activeStep >= 3 ? 1 : 0.3,),
                        customStep(context: context,img: "assets/images/img_stepperImg5.png",
                            text: 'Person 5',stepOpacity: activeStep >= 4 ? 1 : 0.3,),
                        customStep(context: context,img: "assets/images/img_stepperImg1.png",
                            text: 'Person 6',stepOpacity: activeStep >= 5 ? 1 : 0.3,),
                        customStep(context: context,img: "assets/images/img_stepperImg2.png",
                            text: 'Person 7',stepOpacity: activeStep >= 6 ? 1 : 0.3,),
                        customStep(context: context,img: "assets/images/img_stepperImg3.png",
                            text: 'Person 8',stepOpacity: activeStep >= 7 ? 1 : 0.3,),
                        customStep(context: context,img: "assets/images/img_stepperImg4.png",
                            text: 'Person 9',stepOpacity: activeStep >= 8 ? 1 : 0.3,),
                        customStep(context: context,img: "assets/images/img_stepperImg5.png",
                            text: 'Person 10',stepOpacity: activeStep >= 9 ? 1 : 0.3,),
                      ],
                      onStepReached: (index) => setState(() => activeStep = index),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  EasyStep customStep({
    required BuildContext context,String? img,
    String? text,double? stepOpacity,}){
    return EasyStep(
      customStep: ClipRRect(borderRadius: BorderRadius.circular(15),
        child: Opacity(opacity: stepOpacity ?? 0.0,
          child: Image.asset(img ?? ""),),
      ),
      customTitle:  Text(text ?? "", textAlign: TextAlign.center,),
    );
  }
}
