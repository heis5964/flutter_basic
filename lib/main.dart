import 'package:basicflutter/states/home.dart';
import 'package:flutter/material.dart';
//ทดสอบ
//สำนักงานสถิติจังหวัดสตูล
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //กำหนดไม่ให้bannerแสดง
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
