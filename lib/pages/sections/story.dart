import 'package:facebook_ui/const/app.dart';
import 'package:facebook_ui/pages/widgets/story_card.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const <Widget>[StroryCard(image: AppImages.post2)],
      ),
    );
  }
}
