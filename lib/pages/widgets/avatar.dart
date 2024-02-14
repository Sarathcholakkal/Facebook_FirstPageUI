import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AvatarWidget extends StatelessWidget {
  final String image;
  final bool displayIndicator;

  const AvatarWidget(
      {super.key, required this.image, this.displayIndicator = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 7),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              image,
              fit: BoxFit.fill,
              width: 50,
              height: 50,
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
