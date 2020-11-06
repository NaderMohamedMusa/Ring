import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart' show CupertinoThemeData;
import 'package:ring/activity_ring.dart';
import 'package:ring/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ExampleApp());
}


class ExampleApp extends StatelessWidget {
  const ExampleApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ring',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        cupertinoOverrideTheme: const CupertinoThemeData(
          brightness: Brightness.dark,
        ),
      ),
      themeMode: ThemeMode.dark,
      home: const Scaffold(
        body: SafeArea(
          child: RingExample(),
        ),
      ),
    );
  }
}


class RingExample extends StatelessWidget {
  const RingExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        const Divider(height: 50),
        const Text('One Ring. percent = $firstRingPercent'),
        const Divider(
          height: 100,
          color: Colors.transparent,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Ring(
              percent: firstRingPercent,
              color: ringGradients,
              radius: ringRadius,
              width: width,
              child: gradientsChild,
            ),

            Ring(
              percent: firstRingPercent,
              color: ringColors,
              radius: ringRadius,
              width: width,
              child: colorsChild,
            ),

          ],
        ),


        const Divider(height: 110),
        const Text('2 Rings. percent = $secondRingPercent'),
        const Divider(height: 110),


        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Ring(
              percent: secondRingPercent,
              color: ringGradients,
              radius: ringRadius,
              width: width,
              child: gradientsChild,
            ),


            Ring(
              percent: secondRingPercent,
              color: ringColors,
              radius: ringRadius,
              width: width,
              child: colorsChild,
            ),

          ],
        ),
      ],
    );
  }
}
