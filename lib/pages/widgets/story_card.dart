import 'package:facebook_ui/const/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StroryCard extends StatelessWidget {
  final String image;

  const StroryCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover),
            borderRadius: const BorderRadius.all(Radius.circular(15))));
  }
}
