import 'package:flutter/material.dart';

import '../../const/app.dart';

class RoundButtons extends StatelessWidget {
  final IconData icons;
  final void Function() onpress;

  const RoundButtons({super.key, required this.icons, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 35,
      height: 35,
      decoration: const BoxDecoration(
          shape: BoxShape.circle, color: AppColors.liteGrey),
      child: IconButton(
        onPressed: onpress,
        icon: Icon(icons, color: Colors.black, size: 25),
      ),
    );
  }
}
