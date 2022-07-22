import 'package:basicflutter/utility/my_constant.dart';
import 'package:basicflutter/widgets/show_text.dart';
import 'package:flutter/material.dart';

class ShowHeaderDrawer extends StatelessWidget {
  const ShowHeaderDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            //decoration: MyConstant().colorBox(),
            decoration: MyConstant().linearGradientBox(),
            //ให้แสดงสีครอบคลุมDrawer
            child: Container(
              width: double.infinity,
              child: const ShowText(text: 'Home'),
            ),
          ),
        ],
      ),
    );
  }
}
