import 'package:flutter/material.dart';
import '../a/ut.dart';

///Controllino mini image.
class ControllinoMiniImage extends StatelessWidget {
  final double _w;

  const ControllinoMiniImage({super.key, required double width}) : _w = width;

  @override
  Widget build(BuildContext context) {
    double h = _w * PS.h;
    KP.aq = _w;
    return SizedBox(
        width: _w,
        height: h,
        child: const Image(
          image: AssetImage('assets/controllino_mini.png',
              package: 'automation_controllino'),
          fit: BoxFit.contain,
        ));
  }
}

///Controllino maxi image.
class ControllinoMaxiImage extends StatelessWidget {
  final double _w;

  const ControllinoMaxiImage({super.key, required double width}) : _w = width;

  @override
  Widget build(BuildContext context) {
    double h = _w * PS.i;
    KP.ar = _w;
    return SizedBox(
        width: _w,
        height: h,
        child: const Image(
          image: AssetImage('assets/controllino_maxi.png',
              package: 'automation_controllino'),
          fit: BoxFit.contain,
        ));
  }
}

///Controllino mega image.
class ControllinoMegaImage extends StatelessWidget {
  final double _w;

  const ControllinoMegaImage({super.key, required double width}) : _w = width;

  @override
  Widget build(BuildContext context) {
    double h = _w * PS.j;
    KP.as = _w;
    return SizedBox(
        width: _w,
        height: h,
        child: const Image(
          image: AssetImage('assets/controllino_mega.png',
              package: 'automation_controllino'),
          fit: BoxFit.contain,
        ));
  }
}
