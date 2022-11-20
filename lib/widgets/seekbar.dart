import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeekBarData {
  final Duration position;
  final Duration duration;
  SeekBarData({
    required this.position,
    required this.duration,
  });
}

class SeekBar extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;
  const SeekBar({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  @override
  State<SeekBar> createState() => _SeekBarState();
}

class _SeekBarState extends State<SeekBar> {
  var position = 0.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: widget.screenHeight * 0.008,
                  thumbColor: Colors.white,
                  thumbShape: RoundSliderThumbShape(
                    enabledThumbRadius: widget.screenHeight * 0.0052,
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
                  max: 3.30,
                  onChanged: (val) {
                    setState(() {
                      position = val;
                    });
                  },
                ),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Padding(
              padding: const EdgeInsets.only(left:25.0),
              child: Text(position.toStringAsFixed(2), style: TextStyle(fontSize: 12, color: Colors.white60),),
            ),
            const Padding(
              padding: EdgeInsets.only(right:25.0),
              child: Text('3.30', style: TextStyle(fontSize: 12, color: Colors.white60)),
            ),
          ],
        )
      ],
    );
  }
}
