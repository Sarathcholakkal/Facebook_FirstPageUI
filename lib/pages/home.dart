import 'package:facebook_ui/const/app.dart';
import 'package:facebook_ui/pages/sections/header.dart';
import 'package:facebook_ui/pages/sections/room.dart';
import 'package:facebook_ui/pages/sections/story.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stroke_text/stroke_text.dart';

import 'sections/staus.dart';
import 'widgets/round_buttons.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    var thinDivider = Divider(
      color: AppColors.divider,
      thickness: 1,
    );
    var thickDivider = Divider(
      color: AppColors.divider,
      thickness: 3.0,
    );
    return Scaffold(
      appBar: AppBar(
        title: const StrokeText(
          text: "facebook",
          textStyle: TextStyle(
              color: AppColors.text, fontWeight: FontWeight.bold, fontSize: 32),
          strokeColor: AppColors.stroke,
          strokeWidth: 1.5,
        ),
        actions: [
          RoundButtons(
              icons: Icons.search,
              onpress: () {
                print("go to search page");
              }),
          Container(
            width: 35,
            height: 35,
            margin: const EdgeInsets.only(right: 10),
            child: Stack(
              children: [
                GestureDetector(
                  child: const Image(
                    image: AssetImage("assets/msgr.png"),
                    width: 33,
                    height: 33,
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    width: 17,
                    height: 17,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                    child: const Center(
                      child: Text(
                        "5",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: SafeArea(
          child: Container(
        child: ListView(
          children: [
            const StausSection(),
            thinDivider,
            const HeaderSection(),
            thickDivider,
            const RoomSection(),
            thickDivider,
            const StorySection(),
          ],
        ),
      )),
    );
  }
}
