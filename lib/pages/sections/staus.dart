import 'package:facebook_ui/pages/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:facebook_ui/const/app.dart';

class StausSection extends StatelessWidget {
  const StausSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const AvatarWidget(
        image: AppImages.girl,
        displayIndicator: false,
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: "What's is in your mind",
          hintStyle: TextStyle(color: Colors.grey[500]),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
