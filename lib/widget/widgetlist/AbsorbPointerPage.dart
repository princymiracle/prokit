import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AbsorbPointerPage extends StatefulWidget {
  const AbsorbPointerPage({super.key});

  @override
  State<AbsorbPointerPage> createState() => _AbsorbPointerPageState();
}

class _AbsorbPointerPageState extends State<AbsorbPointerPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text("Absorb Pointer",style: TextStyle(color: Colors.white ,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xff9BBEC7),
      ),
      body: Container(
        child: Stack(
          children: [
            Center(
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  SizedBox(
                    height: 100,
                    width: 250,
                    child:AbsorbPointer(
                      absorbing: true,
                      child: Container(
                       height: 50,
                          width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).disabledColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    width: 100,
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).dialogBackgroundColor,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

