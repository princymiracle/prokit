import 'package:flutter/material.dart';

class WithSafeAreaPage extends StatefulWidget {
  String title;
  WithSafeAreaPage({super.key,this.title = 'With SafeArea'});

  @override
  _WithSafeAreaPageState createState() => _WithSafeAreaPageState();
}

class _WithSafeAreaPageState extends State<WithSafeAreaPage>  {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  Container(color: Color(0xffC0B298),child: Text("q w e r t y u i o p l k j h g f d s a z x c v b n m j u i h r f c g h b e q s z f o j y e f s n m k i g e w q a z x c v b n m k l p o i u y t r e w s d f g h"),),
      ),
    );
  }
}