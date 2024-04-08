import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

class TitledBottomBar extends StatelessWidget {
  String title;
  TitledBottomBar({super.key,this.title = 'Titled Bottom Bar'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(), icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(title,style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600),),
        backgroundColor: Color(0xffC0B298),
      ),

        bottomNavigationBar: TitledBottomNavigationBar(
            currentIndex: 2, onTap: (index){},
            items: [
              TitledNavigationBarItem(title: Text('Home',style: TextStyle(color: Theme.of(context).indicatorColor),), icon: Icon(Icons.home,color: Theme.of(context).indicatorColor,)),
              TitledNavigationBarItem(title: Text('Search',style: TextStyle(color: Theme.of(context).indicatorColor),), icon: Icon(Icons.search,color: Theme.of(context).indicatorColor,)),
              TitledNavigationBarItem(title: Text('Bag',style: TextStyle(color: Theme.of(context).indicatorColor),), icon: Icon(Icons.card_travel,color: Theme.of(context).indicatorColor,)),
              TitledNavigationBarItem(title: Text('Orders',style: TextStyle(color: Theme.of(context).indicatorColor),), icon: Icon(Icons.shopping_cart,color: Theme.of(context).indicatorColor,)),
              TitledNavigationBarItem(title: Text('Profile',style: TextStyle(color: Theme.of(context).indicatorColor),), icon: Icon(Icons.person_outline,color: Theme.of(context).indicatorColor,)),
            ],
        )
    );
  }
}
