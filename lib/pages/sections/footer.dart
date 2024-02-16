import 'package:facebook_ui/const/app.dart';
import 'package:flutter/material.dart';

import '../widgets/sqarebutton.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SqureButton(
                onpress: () {},
                icon: Icons.thumb_up_outlined,
                color: AppColors.smallText!,
                label: "Live"),
            AppDivider.vertical,
            SqureButton(
                onpress: () {},
                icon: Icons.chat_outlined,
                color: AppColors.smallText!,
                label: "Photos"),
            AppDivider.vertical,
            SqureButton(
                onpress: () {},
                icon: Icons.share,
                color: AppColors.smallText!,
                label: "Share")
          ],
        ),
      ),
    );
  }
}
