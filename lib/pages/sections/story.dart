import 'package:facebook_ui/const/app.dart';
import 'package:facebook_ui/pages/widgets/story_card.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: const EdgeInsets.only(left: 10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          StroryCard(
            image: AppImages.common,
            avatarimage: AppImages.girl,
            text: "Add your Stroy",
            buttonFlag: true,
          ),
          StroryCard(
              image: AppImages.post,
              avatarimage: AppImages.user,
              text: "name1"),
          StroryCard(
              image: AppImages.post3,
              avatarimage: AppImages.post2,
              text: "name2"),
          StroryCard(
              image: AppImages.post2,
              avatarimage: AppImages.common,
              text: "name2"),
          StroryCard(
              image: AppImages.post,
              avatarimage: AppImages.user,
              text: "name1"),
          StroryCard(
              image: AppImages.post3,
              avatarimage: AppImages.post2,
              text: "name2"),
          StroryCard(
              image: AppImages.post2,
              avatarimage: AppImages.common,
              text: "name2"),
          StroryCard(
              image: AppImages.post,
              avatarimage: AppImages.user,
              text: "name1"),
          StroryCard(
              image: AppImages.post3,
              avatarimage: AppImages.post2,
              text: "name2"),
          StroryCard(
              image: AppImages.post2,
              avatarimage: AppImages.common,
              text: "name2"),
        ],
      ),
    );
  }
}
