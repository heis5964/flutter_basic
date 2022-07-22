import 'package:basicflutter/widgets/show_header_drawer.dart';
import 'package:basicflutter/widgets/show_image.dart';
//import 'package:basicflutter/widgets/show_icon_button.dart';
import 'package:basicflutter/widgets/show_text.dart';
//import 'package:basicflutter/widgets/show_svg.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //ประกาศตัวแปรเพื่อเปิดDrawerจากicon
  final scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //กำหนดkeyเพื่อเปิดDrawerจากicon
      key: scaffoldkey,
      //กำหนดสีพื้นหลังของScaffold
      backgroundColor: Colors.white,
      appBar: AppBar(
        //กำหนดให้Appbarให้เป็นพื้นเดียวกับbody
        elevation: 0,
        //กำหนดสีicon
        foregroundColor: Colors.pink,
        //กำหนดสีพื้นหลังAppBar
        backgroundColor: Colors.white,
        //leading: IconButton(onPressed: () {}, icon: showIcon()),
        // leadingWidth: 100,
        // leading: ShowIconButton(
        //     pressFunc: () {
        //       //กำหนดให้เปิดDrower
        //       // ignore: avoid_print
        //       print('You Click Leading');

        //       scaffoldkey.currentState?.openDrawer();
        //     },
        //     iconData: Icons.android),
        title: const ShowText(text: 'Home'),
        //กำหนดให้titleอยู่ตรงกลาง
        centerTitle: true,
        // actions: [
        //   ShowIconButton(
        //       pressFunc: () {
        //         // ignore: avoid_print
        //         print('You Tap Filter1');
        //       },
        //       iconData: Icons.filter_1),
        //   ShowIconButton(
        //       pressFunc: () {
        //         // ignore: avoid_print
        //         print('You Tap Filter2');
        //       },
        //       iconData: Icons.filter_2),
        //   ShowIconButton(
        //       pressFunc: () {
        //         // ignore: avoid_print
        //         print('You Tap Filter3');
        //       },
        //       iconData: Icons.filter_3),
        // ],
      ),
      //Drawerแสดงด้านซ้าย เรียกใช้จากไฟล์show_header_drawer.dart
      drawer: const ShowHeaderDrawer(),
      //Drawerแสดงด้านขวา
      //endDrawer: const Drawer(),
      //การดึงรูปภาพมาแสดงเป็นWidgets
      body: const ShowImage(
        width: 400,
        //path: 'images/img3.png',
      ),
      //body: const ShowSvg(path: 'images/imgsvg2.svg',),
    );
  }

  Icon showIcon() => const Icon(Icons.star);
}
