import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../const/app.dart';

class SuggetionCard extends StatelessWidget {
  final String profileImage;

  const SuggetionCard({super.key, required this.profileImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(right: 10, left: 10),
      child: Stack(
        children: [
          suggestImage(),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5))),
              child: Column(
                children: [
                  const ListTile(
                    title: Text("Name 1"),
                    subtitle: Text("mutal friends 23"),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        cardButton(
                            onpress: () {},
                            icon: Icons.person_add,
                            label: "Add friend",
                            buttonColor: Colors.blue[600]),
                        //=======================================

                        cardBorderButton(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  OutlinedButton cardBorderButton() {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
      child: const Text(
        "Remove",
      ),
    );
  }

  FilledButton cardButton(
      {required void Function() onpress,
      required IconData icon,
      required String label,
      required buttonColor}) {
    return FilledButton.icon(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.blue)),
        onPressed: onpress,
        icon: Icon(icon),
        label: Text(label));
  }

  Positioned suggestImage() {
    return Positioned(
        left: 0,
        right: 0,
        top: 0,
        child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Image.asset(
              profileImage,
              fit: BoxFit.cover,
              height: 200,
            )));
  }
}
