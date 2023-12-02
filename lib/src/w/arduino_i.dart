import 'package:flutter/material.dart';

import '../a/ut.dart';

///Arduino nano image.
class ArduinoMiniImage extends StatelessWidget {
  final double _w;

  const ArduinoMiniImage({super.key, required double width}) : _w = width;

  @override
  Widget build(BuildContext context) {
    double h = _w * PS.k;
    KP.at = _w;
    return SizedBox(
        width: _w,
        height: h,
        child: const Image(
          image: AssetImage('assets/arduino_nano.png',
              package: 'automation_controllino'),
          fit: BoxFit.contain,
        ));
  }
}

///Arduino mega image.
class ArduinoMaxiAndMegaImage extends StatelessWidget {
  final double _w;

  const ArduinoMaxiAndMegaImage({super.key, required double width})
      : _w = width;

  @override
  Widget build(BuildContext context) {
    double h = _w * PS.l;
    KP.au = _w;
    return SizedBox(
        width: _w,
        height: h,
        child: const Image(
          image: AssetImage('assets/arduino_mega.png',
              package: 'automation_controllino'),
          fit: BoxFit.contain,
        ));
  }
}
