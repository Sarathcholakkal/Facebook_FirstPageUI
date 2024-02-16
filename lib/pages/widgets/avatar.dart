import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AvatarWidget extends StatelessWidget {
  final String image;
  final bool displayIndicator;
  final bool displayBorder;
  final double width;
  final double height;

  const AvatarWidget(
      {super.key,
      required this.image,
      this.displayIndicator = true,
      this.displayBorder = true,
      this.height = 50,
      this.width = 50});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: displayBorder
            ? Border.all(width: 3, color: Colors.blueAccent)
            : null,
        shape: BoxShape.circle,
      ),
      margin: const EdgeInsets.only(right: 7),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              image,
              fit: BoxFit.fill,
              width: width,
              height: height,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 1,
            child: displayIndicator
                ? Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.greenAccent,
                        border: Border.all(width: 2, color: Colors.white)),
                  )
                : const SizedBox(),
          )
        ],
      ),
    );
  }
}
