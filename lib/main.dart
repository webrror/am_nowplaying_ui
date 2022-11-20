import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/nowplaying.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        primaryColor: Colors.pink
      ),
      home: NowPlaying(),
    );
  }
}

