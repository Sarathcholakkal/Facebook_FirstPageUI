import 'package:facebook_ui/pages/widgets/avatar.dart';
import 'package:facebook_ui/pages/widgets/round_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StroryCard extends StatelessWidget {
  final String image;
  final String text;
  final String avatarimage;
  final bool buttonFlag;

  const StroryCard(
      {super.key,
      required this.image,
      required this.avatarimage,
      this.buttonFlag = false,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover),
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 5,
            left: 10,
            child: buttonFlag
                ? RoundButtons(
                    icons: Icons.add,
                    onpress: () {
                      print("data added");
                    },
                    iconColor: Colors.blue,
                  )
                : AvatarWidget(
                    image: avatarimage,
                    displayIndicator: false,
                    displayBorder: false,
                  ),
          ),
          Positioned(
              bottom: 1,
              left: 1,
              child: Text(
                text != null ? text : "not avilable",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                    fontFamily: "NotoSans"),
              ))
        ],
      ),
    );
  }
}
