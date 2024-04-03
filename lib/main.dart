import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart';
import 'AnimationWidgetListPages.dart';
import 'WidgetList_Screen/CardItem/CardWidgetListPage.dart';
import 'WidgetList_Screen/DataTable/DataTableWidget.dart';
import 'WidgetList_Screen/DecoratedBoxTransition/DecoratedBoxTransitionPage.dart';
import 'WidgetList_Screen/Dismissible/DismissibleListPage.dart';
import 'WidgetList_Screen/DrawerItem/DrawerListPage.dart';
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
         // home: AnimationWidgetListPages(),
         // home: CardListPage(),
         // home: DataTablePage(),
        //  home: DecoratedBoxTransitionPage(),
         // home: DismissibleListPage(),
          home: DrawerListPage(),

          // getPages:Screens.routes,
          // initialRoute: Routes.widgetlistpage,
        );
      },
    );
  }
}

