import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart';
import 'WidgetList_Screen/WidgetListPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder:(context, orientation, deviceType) {
        return GetMaterialApp(
          title: 'MiracleKit - Flutter UI Components',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColorDark:Colors.white,
            primaryColor: Color(0xff007F73),
            secondaryHeaderColor: Color(0xff007F73),
            shadowColor : Color(0xff007F73),
            primaryColorLight: Color(0xff007F73),
            bottomAppBarColor: Colors.black,
            cardColor: Colors.grey,
            dividerColor: Colors.red,
            toggleableActiveColor: Color(0xffDBDBDB),
            errorColor: Color(0xffC6E7CA),
            focusColor: Color(0xff292C3C),
            disabledColor: Colors.blue,
            backgroundColor: Colors.green,
            dialogBackgroundColor: Colors.purple,
            hintColor: Colors.pink,
            canvasColor: Color(0xff386171),
            indicatorColor: Color(0xffA85400),
            highlightColor: Color(0xff607B8B),
            hoverColor: Color(0xff6E6E6E),
            splashColor: Color(0xffBABABA),
            colorScheme: ColorScheme.light(primary: Color(0xff007F73),),
          ),
          home: WidgetListPage(),
          // getPages:Screens.routes,
          // initialRoute: Routes.widgetlistpage,
        );
      },
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:sizer/sizer.dart';
//
// import 'Routes/Routes.dart';
// import 'Routes/Screen.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Sizer(
//       builder: (context, orientation, deviceType) {
//         return  GetMaterialApp(
//           title: 'Flutter Demo',
//           debugShowCheckedModeBanner: false,
//           theme: ThemeData(
//             primaryColorDark:Colors.white,
//             primaryColor: Color(0x85E98929),
//             secondaryHeaderColor: Color(0xffE98929),
//             shadowColor : Color(0x95E98929),
//             primaryColorLight: Color(0x97E98929),
//             bottomAppBarColor: Colors.black,
//             cardColor: Colors.grey,
//             dividerColor: Colors.red,
//             toggleableActiveColor: Color(0xffDBDBDB),
//             errorColor: Color(0xffC6E7CA),
//             focusColor: Color(0xff292C3C),
//             disabledColor: Colors.blue,
//             backgroundColor: Colors.green,
//             dialogBackgroundColor: Colors.purple,
//             hintColor: Colors.pink,
//             canvasColor: Color(0xff386171),
//             indicatorColor: Color(0xffA85400),
//             highlightColor: Color(0xff607B8B),
//             hoverColor: Color(0xff6E6E6E),
//             splashColor: Color(0xffBABABA),
//             colorScheme: ColorScheme.light(primary: Color(0x85E98929),),
//             // textTheme:Theme.of(context).textTheme,
//             // fontFamily: "PlusJakartaSans",
//           ),
//          // home: ScreenListPage(),
//           getPages:Screens.routes,
//           initialRoute: Routes.widgetlistpage,
//         );
//       },
//     );
//   }
// }
