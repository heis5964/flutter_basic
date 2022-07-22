import 'package:flutter/material.dart';

class ShowImage extends StatelessWidget {
  final String? path;
  //กำหนดตัวแปรขนาดรูปภาพ
  final double? width;
  const ShowImage({
    Key? key,
    this.path,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 250,
      child: Image.asset(path ?? 'images/img1.png'),
    );
  }
}
