import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class VolumeControl extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;
  const VolumeControl({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  @override
  State<VolumeControl> createState() => _VolumeControlState();
}

class _VolumeControlState extends State<VolumeControl> {
  var position = 0.0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CupertinoButton(onPressed: (){}, child: Icon(CupertinoIcons.volume_mute, color: Colors.white70, size: widget.screenWidth*0.04,)),
        Expanded(
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: widget.screenHeight * 0.0065,
              thumbColor: Colors.white,
              thumbShape:  RoundSliderThumbShape(
                enabledThumbRadius: widget.screenHeight*0.0043,
                elevation: 0,
                pressedElevation: 0
              ),
              
              trackShape: const RoundedRectSliderTrackShape(),
              activeTrackColor: Colors.white,
              inactiveTrackColor: Colors.white24,
              overlayColor: Colors.transparent
              
            ),
            child: Slider(
              value: position,
              max: 100,
              onChanged: (val) {
                setState(() {
                  position = val;
                });
              },
            ),
          ),
        ),
        CupertinoButton(onPressed: (){}, child: Icon(CupertinoIcons.volume_up, color: Colors.white70, size: widget.screenWidth*0.04)),
      ],
    );
  }
}
