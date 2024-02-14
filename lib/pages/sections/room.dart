import 'package:facebook_ui/const/app.dart';
import 'package:facebook_ui/pages/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          buildroom(),
          const AvatarWidget(image: AppImages.common),
          const AvatarWidget(image: AppImages.user),
          const AvatarWidget(image: AppImages.post),
          const AvatarWidget(image: AppImages.common),
          const AvatarWidget(image: AppImages.user),
          const AvatarWidget(image: AppImages.post),
          const AvatarWidget(image: AppImages.common),
          const AvatarWidget(image: AppImages.user),
          const AvatarWidget(image: AppImages.post),
          const AvatarWidget(image: AppImages.common),
          const AvatarWidget(image: AppImages.user),
          const AvatarWidget(image: AppImages.post),
          const AvatarWidget(image: AppImages.common),
          const AvatarWidget(image: AppImages.user),
          const AvatarWidget(image: AppImages.post)
        ],
      ),
    );
  }

  Widget buildroom() {
    return Container(
      padding: EdgeInsets.only(left: 4, right: 10),
      child: OutlinedButton.icon(
          onPressed: () {
            print("create a chat room");
          },
          style: ButtonStyle(
            side: MaterialStateProperty.all(BorderSide(
              color: Colors.blue[100]!,
              width: 2.0,
            )),
          ),
          icon: const Icon(
            Icons.video_call_outlined,
            color: Colors.red,
          ),
          label: const Text(
            "Create \n Room",
            style: TextStyle(
              color: Colors.blue,
            ),
          )),
    );
  }
}
