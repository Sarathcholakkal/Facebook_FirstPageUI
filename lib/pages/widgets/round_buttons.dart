import 'package:flutter/material.dart';

import '../../const/app.dart';

class RoundButtons extends StatelessWidget {
  final IconData icons;
  final void Function() onpress;
  final Color iconColor;

  const RoundButtons({
    super.key,
    required this.icons,
    required this.onpress,
    this.iconColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(right: 10),
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
          shape: BoxShape.circle, color: AppColors.liteGrey),
      child: IconButton(
        onPressed: onpress,
        icon: Icon(icons, color: iconColor, size: 25),
      ),
    );
  }
}
