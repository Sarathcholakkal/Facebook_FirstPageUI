import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    const Widget verticalDivider = VerticalDivider(
      thickness: 1,
      color: Colors.black,
    );
    return Container(
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildSquareButton(
                onpress: () {},
                icon: Icons.video_call,
                color: Colors.red,
                label: "Live"),
            verticalDivider,
            buildSquareButton(
                onpress: () {},
                icon: Icons.collections_bookmark,
                color: Colors.green,
                label: "Photos"),
            verticalDivider,
            buildSquareButton(
                onpress: () {},
                icon: Icons.voice_chat_outlined,
                color: Colors.blue,
                label: "chats")
          ],
        ),
      ),
    );
  }

  TextButton buildSquareButton(
      {required void Function() onpress,
      required IconData icon,
      required Color color,
      required String label}) {
    return TextButton.icon(
      onPressed: onpress,
      icon: Icon(icon, color: color),
      label: Text(label),
    );
  }
}
