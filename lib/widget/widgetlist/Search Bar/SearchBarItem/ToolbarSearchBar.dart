import 'package:flutter/material.dart';


class ToolbarSearchBarPage extends StatefulWidget {
  ToolbarSearchBarPage({super.key,});

  @override
  State<ToolbarSearchBarPage> createState() => _ToolbarSearchBarPageState();
}

class _ToolbarSearchBarPageState extends State<ToolbarSearchBarPage> {

  Widget appBarTitle = Text('Search Sample',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),);
  Icon actionIcon = Icon(Icons.search,color: Colors.white,size: 25,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9BBEC7).withOpacity(0.6),
        leading: Icon(Icons.menu,color: Theme.of(context).primaryColorDark,),
        title: appBarTitle,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                setState(() {
                  if(this.actionIcon.icon == Icons.search){
                    this.actionIcon = Icon(Icons.close,color: Theme.of(context).primaryColorDark,size: 25,);
                    this.appBarTitle = TextField(style: TextStyle(color: Theme.of(context).primaryColorDark),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,color: Theme.of(context).primaryColorDark,size: 25,),
                      hintText: 'Search...',hintStyle: TextStyle(color: Theme.of(context).primaryColorDark),
                      border: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).primaryColorDark)),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).primaryColorDark)),
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color:Theme.of(context).primaryColorDark)),
                    ),
                    );
                  }
                  else {
                    this.appBarTitle = Text('Search Sample',
                      style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w500),);
                    this.actionIcon = Icon(Icons.search,color: Theme.of(context).primaryColorDark,size: 25,);
                  }
                });
              },icon: actionIcon)
        ],
      ),

      body: SafeArea(
        child: Stack(
          children: [
           ],
        ),
      ),
    );
  }
}
