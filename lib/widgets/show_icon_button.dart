import 'package:flutter/material.dart';

class ShowIconButton extends StatelessWidget {
  final Function() pressFunc;
  final IconData iconData;
  const ShowIconButton({
    Key? key,
    required this.pressFunc,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: pressFunc, icon: Icon(iconData));
  }
}
