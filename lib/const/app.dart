import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF151BA0);
  static const Color text = Color(0xFF343AD1);
  static const Color stroke = Color(0xFF5A5EAD);
  static const Color liteGrey = Color(0xFFECE7E7);
  static Color? divider = Colors.grey[300];
  static Color? smallText = Colors.grey[700];
}

class AppImages {
  static String defaultimg = "https://picsum.photos/200/300?image=0";
  static const String common = "assets/commonpro.jpg";
  static const String user = "assets/userpro.jpg";
  static const String post = "assets/post.jpg";
  static const String post2 = "assets/singam.jpg";
  static const String post3 = "assets/iron.jpg";
  static const String girl = "assets/girl.jpg";
  static const String actress = "assets/actress.jpg";
  static const String keerthi = "assets/keerthi.jpg";
  static const String thammana = "assets/thammana.jpg";
}

class AppDivider {
  static Widget vertical = const VerticalDivider(
    thickness: 1,
    color: Colors.black,
  );

  static Widget horizonadalthin = Divider(
    color: AppColors.divider,
    thickness: 1,
  );

  static Widget horizondalthick = Divider(
    color: AppColors.divider,
    thickness: 5.0,
  );
}
