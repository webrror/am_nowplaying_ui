import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/simple_icons.dart';

class AdditionalButtons extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  const AdditionalButtons({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CupertinoButton(
            onPressed: () {},
            child: Icon(
              CupertinoIcons.captions_bubble,
              color: Colors.white70,
              size: screenWidth*0.05,
            )),
        CupertinoButton(
            onPressed: () {},
            child: Iconify(
              SimpleIcons.airplayaudio,
              color: Colors.white70,
              size: screenWidth*0.05,
            )),
        CupertinoButton(
            onPressed: () {},
            child: Icon(
              CupertinoIcons.list_bullet,
              color: Colors.white70,
              size: screenWidth*0.05,
            ))
      ],
    );
  }
}
