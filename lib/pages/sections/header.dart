import 'package:facebook_ui/const/app.dart';
import 'package:flutter/material.dart';

import '../widgets/sqarebutton.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SqureButton(
                onpress: () {},
                icon: Icons.video_call,
                color: Colors.red,
                label: "Live"),
            AppDivider.vertical,
            SqureButton(
                onpress: () {},
                icon: Icons.collections_bookmark,
                color: Colors.green,
                label: "Photos"),
            AppDivider.vertical,
            SqureButton(
                onpress: () {},
                icon: Icons.voice_chat_outlined,
                color: Colors.blue,
                label: "chats")
          ],
        ),
      ),
    );
  }
}
