import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ControlButtons extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  const ControlButtons({
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
        CupertinoButton(onPressed: (){}, child: Icon(CupertinoIcons.backward_fill, color: Colors.white, size: screenWidth*0.085)),
        CupertinoButton(onPressed: (){}, child: Icon(CupertinoIcons.pause_solid, color: Colors.white,size: screenWidth*0.1)),
        CupertinoButton(onPressed: (){}, child: Icon(CupertinoIcons.forward_fill, color: Colors.white,size: screenWidth*0.085)),
      ],
    );
  }
}
