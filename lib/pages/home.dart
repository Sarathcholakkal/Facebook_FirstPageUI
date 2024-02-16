import 'package:facebook_ui/const/app.dart';
import 'package:facebook_ui/pages/sections/footer.dart';
import 'package:facebook_ui/pages/sections/header.dart';
import 'package:facebook_ui/pages/sections/room.dart';
import 'package:facebook_ui/pages/sections/story.dart';
import 'package:facebook_ui/pages/sections/postCard.dart';
import 'package:facebook_ui/pages/sections/suggetion.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stroke_text/stroke_text.dart';

import 'sections/staus.dart';
import 'widgets/round_buttons.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
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
        padding: const EdgeInsets.all(.5),
        child: ListView(
          children: [
            const StausSection(),
            AppDivider.horizonadalthin,
            const HeaderSection(),
            AppDivider.horizonadalthin,
            const RoomSection(),
            AppDivider.horizondalthick,
            const StorySection(),
            AppDivider.horizondalthick,
            const PostCard(
              profileName: "Anoop Mohan",
              profileimage: AppImages.common,
              PublishAt: "5h",
              postTitle: "hello every one",
              postImage: AppImages.post,
              blueTick: true,
              likeCount: "10k",
              commentCount: "500",
              shareCount: "3k",
            ),
            AppDivider.horizondalthick,
            const PostCard(
              profileName: "vidyth",
              profileimage: AppImages.post3,
              PublishAt: "1 sec ago",
              postTitle: "",
              postImage: AppImages.girl,
              likeCount: "22k",
              commentCount: "300",
              shareCount: "1k",
            ),
            AppDivider.horizondalthick,
            const SuggetionSection(),
            AppDivider.horizondalthick,
            const PostCard(
              profileName: "sudheesh",
              profileimage: AppImages.user,
              PublishAt: "1 sec ago",
              postTitle:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              postImage: AppImages.post2,
              likeCount: "22k",
              commentCount: "300",
              shareCount: "1k",
            ),
            AppDivider.horizondalthick,
          ],
        ),
      )),
    );
  }
}
