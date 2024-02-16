import 'package:facebook_ui/const/app.dart';
import 'package:facebook_ui/pages/widgets/avatar.dart';
import 'package:facebook_ui/pages/widgets/bluetick.dart';
import 'package:facebook_ui/pages/sections/footer.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String profileName;
  final String profileimage;
  final String PublishAt;
  final String postTitle;
  final String postImage;
  final bool blueTick;

  final String likeCount;
  final String shareCount;
  final String commentCount;

  const PostCard(
      {super.key,
      required this.profileName,
      required this.profileimage,
      required this.PublishAt,
      required this.postTitle,
      required this.postImage,
      required this.likeCount,
      required this.commentCount,
      required this.shareCount,
      this.blueTick = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          createHeader(),
          createTitle(),
          createImage(),
          createFooter(),
          AppDivider.horizonadalthin,
          const Footer()
        ],
      ),
    );
  }

  Row createFooter() {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          width: 15,
          height: 15,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Colors.blueAccent),
          child: const Icon(
            Icons.thumb_up,
            color: Colors.white,
            size: 10,
          ),
        ),
        createCount(displayText: likeCount),
        const Spacer(),
        Container(
          // margin: const EdgeInsets.only(right: 10),
          child: Row(
            children: [
              createCount(displayText: commentCount),
              const SizedBox(
                width: 5,
              ),
              createCount(displayText: "Comments"),
              const SizedBox(
                width: 20,
              ),
              createCount(displayText: shareCount),
              const SizedBox(
                width: 5,
              ),
              createCount(displayText: "Share"),
              SizedBox(
                width: 5,
              ),
              AvatarWidget(
                image: profileimage,
                width: 20,
                height: 20,
                displayBorder: false,
                displayIndicator: false,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: AppColors.smallText,
                  ))
            ],
          ),
        )
      ],
    );
  }

  Text createCount({required displayText}) {
    return Text(
      displayText,
      style: TextStyle(color: AppColors.smallText),
    );
  }

  Container createImage() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Image.asset(postImage),
    );
  }

  Container createTitle() {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: Center(
        child: Text(
          postTitle,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  ListTile createHeader() {
    return ListTile(
      leading: AvatarWidget(
        image: profileimage,
        displayBorder: false,
        displayIndicator: false,
      ),
      title: Row(
        children: [
          Text(
            profileName,
            style: const TextStyle(
                color: Colors.black,
                fontFamily: "roboto",
                fontWeight: FontWeight.bold),
          ),
          blueTick ? const BlueTick() : const SizedBox()
        ],
      ),
      subtitle: Row(
        children: [
          Text(
            PublishAt,
            style: TextStyle(color: Colors.grey[500]),
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.public,
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
          onPressed: () {
            print("open more options");
          },
          icon: Icon(Icons.more_horiz_outlined)),
    );
  }
}
