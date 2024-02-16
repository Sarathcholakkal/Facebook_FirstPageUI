import 'package:facebook_ui/const/app.dart';
import 'package:facebook_ui/pages/widgets/suggetion_card.dart';
import 'package:flutter/material.dart';

class SuggetionSection extends StatelessWidget {
  const SuggetionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: [
          ListTile(
            leading: Text(
              "People may you know",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.smallText),
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_horiz)),
          ),
          Container(
            height: 340,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [SuggetionCard(profileImage: AppImages.actress)],
            ),
          )
        ],
      ),
    );
  }
}
