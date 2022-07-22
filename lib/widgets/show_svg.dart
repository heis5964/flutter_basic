import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShowSvg extends StatelessWidget {
  final String? path;
  //กำหนดขนาดรูปภาพ
  final double? width;
  const ShowSvg({
    Key? key,
    this.path,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.all(16),
      width: width ?? 250,
      child: SvgPicture.asset(path ?? 'images/imgsvg3.svg'),
    );
  }
}
