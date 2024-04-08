import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SimpleSearchBar extends StatefulWidget {
   SimpleSearchBar({super.key});

  @override
  State<SimpleSearchBar> createState() => _SimpleSearchBarState();
}

class _SimpleSearchBarState extends State<SimpleSearchBar> {

  TextEditingController controller = TextEditingController();
  bool showList = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/img_searchbar2.png",width: double.infinity,height: 15.h,fit: BoxFit.cover,),
          Padding(padding: EdgeInsets.only(top: 35.w),
            child: Wrap(
              children: [
                Container(height: 10.w,color:  Color(0xff9888A5).withOpacity(0.5,),
                  child: TextField(
                    cursorColor: Theme.of(context).primaryColorDark,style: TextStyle(color: Theme.of(context).primaryColorDark),
                    controller: controller,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(contentPadding: EdgeInsets.only(bottom: 3.w,),
                      hintText: 'Search from below list',border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintStyle: TextStyle(color: Theme.of(context).primaryColorDark),
                      suffixIcon: showList
                          ? IconButton(
                            icon:Icon(Icons.cancel,size: 5.w,color: Theme.of(context).primaryColorDark),
                            onPressed: () {
                              setState(() {controller.text = "";showList = false;});},)
                              : null,
                      prefixIcon:Icon(Icons.search_rounded,color: Theme.of(context).primaryColorDark,size: 5.w,),
                    ),
                    onChanged: (value) {
                      setState(() {showList = value.isNotEmpty;});},
                  ),
                ),
                if(showList)...[
                  Padding(padding: EdgeInsets.only(top: 3.h),
                    child: ListView.builder(
                        itemCount: 100,shrinkWrap: true,
                        itemBuilder: (context, index) => ListTile(title: Text('Event $index',
                          style: TextStyle(color: Theme.of(context).secondaryHeaderColor),),
                        ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
