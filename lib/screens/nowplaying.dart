import 'package:applemusicui/widgets/additional_buttons.dart';
import 'package:applemusicui/widgets/audio_control_buttons.dart';
import 'package:applemusicui/widgets/seekbar.dart';
import 'package:applemusicui/widgets/volume_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NowPlaying extends StatelessWidget {
  const NowPlaying({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      child: CupertinoPageScaffold(
          child: Container(
        //height: screenHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.deepPurple[600]!,
              Colors.deepPurple[900]!,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight * 0.003,
            ),
            Icon(
              Icons.horizontal_rule_rounded,
              color: Colors.white38,
              size: screenWidth * 0.11,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22.0, right: 22, bottom: 12),
              child: Material(
                elevation: 30,
                borderRadius: BorderRadius.circular(12),
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/hold.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("HOLD ME TIGHT OR DON'T",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: screenWidth * 0.048)),
                      const SizedBox(
                        height: 0,
                      ),
                      Text(
                        'Fall Out Boy',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: screenWidth * 0.045),
                      )
                    ],
                  ),
                  CupertinoButton(
                      padding: EdgeInsets.zero,
                      child: CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.white10,
                        foregroundColor: Colors.white,
                        child: Icon(
                          CupertinoIcons.ellipsis,
                          size: screenWidth * 0.05,
                        ),
                      ),
                      onPressed: () {})
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Material(
                color: Colors.transparent,
                child: SeekBar(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: ControlButtons(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Material(
                  color: Colors.transparent,
                  child: VolumeControl(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: AdditionalButtons(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
