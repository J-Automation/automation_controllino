import 'package:flutter/material.dart';
import '../a/ut.dart';

///Shows the Controllino input/output status indicators.
///
/// [automation] Instance of OpenAutomation class.
/// Requires a state manager that includes the OpenAutomation class to view updates.
/// For better performance we recommend encapsulating this widget in a class independent of its corresponding image.
class ControllinoMiniStatusLights extends StatelessWidget {
  final dynamic _a;
  final bool _v;

  const ControllinoMiniStatusLights(
      {super.key, required dynamic automation, bool vin12 = true})
      : _v = vin12,
        _a = automation;

  @override
  Widget build(BuildContext context) {
    double w = KP.aq;
    double h = w * PS.h;
    double l = w * 0.04;

    return SizedBox(
      width: w,
      height: h,
      child: Stack(
        children: [
          _lc(x: w / PS.b, y: h / PS.a[0], d: l, p: _a.output[0]),
          _lc(x: w / PS.b, y: h / PS.a[1], d: l, p: _a.output[1]),
          _lc(x: w / PS.b, y: h / PS.a[2], d: l, p: _a.output[2]),
          _lc(x: w / PS.b, y: h / PS.a[3], d: l, p: _a.output[3]),
          _lc(x: w / PS.b, y: h / PS.a[4], d: l, p: _a.output[4]),
          _lc(x: w / PS.b, y: h / PS.a[5], d: l, p: _a.output[5]),
          _lc(x: w / PS.b, y: h / PS.a[6], d: l, p: _a.output[6]),
          _lc(x: w / PS.b, y: h / PS.a[7], d: l, p: _a.output[7]),
          _lco(x: w / PS.b, y: h / PS.f, d: l, o: false),
          _lco(x: w / PS.b, y: h / PS.g, d: l, o: false),
          _lc(x: w / PS.c, y: h / PS.a[0], d: l, p: _a.input[0]),
          _lc(x: w / PS.c, y: h / PS.a[1], d: l, p: _a.input[1]),
          _lc(x: w / PS.c, y: h / PS.a[2], d: l, p: _a.input[2]),
          _lc(x: w / PS.c, y: h / PS.a[3], d: l, p: _a.input[3]),
          _lc(x: w / PS.c, y: h / PS.a[4], d: l, p: _a.input[4]),
          _lc(x: w / PS.c, y: h / PS.a[5], d: l, p: _a.input[5]),
          _lc(x: w / PS.c, y: h / PS.a[6], d: l, p: _a.input[6]),
          _lc(x: w / PS.c, y: h / PS.a[7], d: l, p: _a.input[7]),
          _lco(x: w / PS.c, y: h / PS.d, d: l, o: _v),
          _lco(x: w / PS.c, y: h / PS.e, d: l, o: !_v),
        ],
      ),
    );
  }
}

///Shows the Controllino input/output status indicators.
///
/// [automation] Instance of OpenAutomation class.
/// Requires a state manager that includes the OpenAutomation class to view updates.
/// For better performance we recommend encapsulating this widget in a class independent of its corresponding image.
class ControllinoMaxiStatusLights extends StatelessWidget {
  final dynamic _a;
  final bool _v;
  final dynamic _m = (
    value: 0,
    isInput: true,
    index: 0,
    isLocked: false,
    isForced: false,
    isAnalog: false
  );

  const ControllinoMaxiStatusLights(
      {super.key, required dynamic automation, bool vin12 = true})
      : _v = vin12,
        _a = automation;

  @override
  Widget build(BuildContext context) {
    double w = KP.ar;
    double h = w * PS.i;
    double l = w * 0.025;

    return SizedBox(
      width: w,
      height: h,
      child: Stack(
        children: [
          _lc(x: w / PS.n, y: h / PS.m[0], d: l, p: _a.input[0]),
          _lc(x: w / PS.n, y: h / PS.m[1], d: l, p: _a.input[1]),
          _lc(x: w / PS.n, y: h / PS.m[2], d: l, p: _a.input[2]),
          _lc(x: w / PS.n, y: h / PS.m[3], d: l, p: _a.input[3]),
          _lc(x: w / PS.n, y: h / PS.m[4], d: l, p: _a.input[4]),
          _lc(x: w / PS.n, y: h / PS.m[5], d: l, p: _a.input[5]),
          _lco(x: w / PS.n, y: h / PS.t, d: l, o: _v),
          _lco(x: w / PS.n, y: h / PS.u, d: l, o: !_v),
          _lc(x: w / PS.o, y: h / PS.m[0], d: l, p: _a.input[6]),
          _lc(x: w / PS.o, y: h / PS.m[1], d: l, p: _a.input[7]),
          _lc(x: w / PS.o, y: h / PS.m[2], d: l, p: _a.input[8]),
          _lc(x: w / PS.o, y: h / PS.m[3], d: l, p: _a.input[9]),
          _lc(x: w / PS.o, y: h / PS.m[4], d: l, p: _a.input[10]),
          _lc(x: w / PS.o, y: h / PS.m[5], d: l, p: _a.input[11]),
          _lc(x: w / PS.o, y: h / PS.t, d: l, p: _m),
          _lc(x: w / PS.o, y: h / PS.u, d: l, p: _m),
          _lc(x: w / PS.p, y: h / PS.m[0], d: l, p: _a.output[0]),
          _lc(x: w / PS.p, y: h / PS.m[1], d: l, p: _a.output[1]),
          _lc(x: w / PS.p, y: h / PS.m[2], d: l, p: _a.output[2]),
          _lc(x: w / PS.p, y: h / PS.m[3], d: l, p: _a.output[3]),
          _lc(x: w / PS.p, y: h / PS.m[4], d: l, p: _a.output[4]),
          _lc(x: w / PS.p, y: h / PS.m[5], d: l, p: _a.output[5]),
          _lc(x: w / PS.q, y: h / PS.m[0], d: l, p: _a.output[6]),
          _lc(x: w / PS.q, y: h / PS.m[1], d: l, p: _a.output[7]),
          _lc(x: w / PS.q, y: h / PS.m[2], d: l, p: _a.output[8]),
          _lc(x: w / PS.q, y: h / PS.m[3], d: l, p: _a.output[9]),
          _lc(x: w / PS.q, y: h / PS.m[4], d: l, p: _a.output[10]),
          _lc(x: w / PS.q, y: h / PS.m[5], d: l, p: _a.output[11]),
          _lc(x: w / PS.r, y: h / PS.m[0], d: l, p: _a.output[12]),
          _lc(x: w / PS.r, y: h / PS.m[1], d: l, p: _a.output[13]),
          _lc(x: w / PS.r, y: h / PS.m[2], d: l, p: _a.output[14]),
          _lc(x: w / PS.r, y: h / PS.m[3], d: l, p: _a.output[15]),
          _lc(x: w / PS.r, y: h / PS.m[4], d: l, p: _a.output[16]),
          _lc(x: w / PS.s, y: h / PS.m[0], d: l, p: _a.output[17]),
          _lc(x: w / PS.s, y: h / PS.m[1], d: l, p: _a.output[18]),
          _lc(x: w / PS.s, y: h / PS.m[2], d: l, p: _a.output[19]),
          _lc(x: w / PS.s, y: h / PS.m[3], d: l, p: _a.output[20]),
          _lc(x: w / PS.s, y: h / PS.m[4], d: l, p: _a.output[21]),
        ],
      ),
    );
  }
}

///Shows the Controllino input/output status indicators.
///
/// [automation] Instance of OpenAutomation class.
/// Requires a state manager that includes the OpenAutomation class to view updates.
/// For better performance we recommend encapsulating this widget in a class independent of its corresponding image.
class ControllinoMegaStatusLights extends StatelessWidget {
  final dynamic _a;
  final bool _v;
  final dynamic _m = (
    value: 0,
    isInput: true,
    index: 0,
    isLocked: false,
    isForced: false,
    isAnalog: false
  );

  const ControllinoMegaStatusLights(
      {super.key, required dynamic automation, bool vin12 = true})
      : _v = vin12,
        _a = automation;

  @override
  Widget build(BuildContext context) {
    double w = KP.as;
    double h = w * PS.j;
    double l = w * 0.017;

    return SizedBox(
      width: w,
      height: h,
      child: Stack(
        children: [
          _lc(x: w / PS.w, y: h / PS.v[0], d: l, p: _a.input[0]),
          _lc(x: w / PS.w, y: h / PS.v[1], d: l, p: _a.input[1]),
          _lc(x: w / PS.w, y: h / PS.v[2], d: l, p: _a.input[2]),
          _lc(x: w / PS.w, y: h / PS.v[3], d: l, p: _a.input[3]),
          _lc(x: w / PS.w, y: h / PS.v[4], d: l, p: _a.input[4]),
          _lc(x: w / PS.w, y: h / PS.v[5], d: l, p: _a.input[5]),
          _lc(x: w / PS.w, y: h / PS.v[6], d: l, p: _a.input[6]),
          _lc(x: w / PS.w, y: h / PS.v[7], d: l, p: _a.input[7]),
          _lc(x: w / PS.x, y: h / PS.v[0], d: l, p: _a.input[8]),
          _lc(x: w / PS.x, y: h / PS.v[1], d: l, p: _a.input[9]),
          _lc(x: w / PS.x, y: h / PS.v[2], d: l, p: _a.input[10]),
          _lc(x: w / PS.x, y: h / PS.v[3], d: l, p: _a.input[11]),
          _lc(x: w / PS.x, y: h / PS.v[4], d: l, p: _a.input[12]),
          _lc(x: w / PS.x, y: h / PS.v[5], d: l, p: _a.input[13]),
          _lc(x: w / PS.x, y: h / PS.v[6], d: l, p: _a.input[14]),
          _lc(x: w / PS.x, y: h / PS.v[7], d: l, p: _a.input[15]),
          _lc(x: w / PS.y, y: h / PS.v[0], d: l, p: _a.input[16]),
          _lc(x: w / PS.y, y: h / PS.v[1], d: l, p: _a.input[17]),
          _lc(x: w / PS.y, y: h / PS.v[2], d: l, p: _a.input[18]),
          _lc(x: w / PS.y, y: h / PS.v[3], d: l, p: _a.input[19]),
          _lc(x: w / PS.y, y: h / PS.v[4], d: l, p: _a.input[20]),
          _lc(x: w / PS.z, y: h / PS.v[0], d: l, p: _a.output[0]),
          _lc(x: w / PS.z, y: h / PS.v[1], d: l, p: _a.output[1]),
          _lc(x: w / PS.z, y: h / PS.v[2], d: l, p: _a.output[2]),
          _lc(x: w / PS.z, y: h / PS.v[3], d: l, p: _a.output[3]),
          _lc(x: w / PS.z, y: h / PS.v[4], d: l, p: _a.output[4]),
          _lc(x: w / PS.z, y: h / PS.v[5], d: l, p: _a.output[5]),
          _lc(x: w / PS.z, y: h / PS.v[6], d: l, p: _a.output[6]),
          _lc(x: w / PS.z, y: h / PS.v[7], d: l, p: _a.output[7]),
          _lc(x: w / PS.aa, y: h / PS.v[0], d: l, p: _a.output[8]),
          _lc(x: w / PS.aa, y: h / PS.v[1], d: l, p: _a.output[9]),
          _lc(x: w / PS.aa, y: h / PS.v[2], d: l, p: _a.output[10]),
          _lc(x: w / PS.aa, y: h / PS.v[3], d: l, p: _a.output[11]),
          _lc(x: w / PS.aa, y: h / PS.v[4], d: l, p: _a.output[12]),
          _lc(x: w / PS.aa, y: h / PS.v[5], d: l, p: _a.output[13]),
          _lc(x: w / PS.aa, y: h / PS.v[6], d: l, p: _a.output[14]),
          _lc(x: w / PS.aa, y: h / PS.v[7], d: l, p: _a.output[15]),
          _lc(x: w / PS.ab, y: h / PS.v[0], d: l, p: _a.output[16]),
          _lc(x: w / PS.ab, y: h / PS.v[1], d: l, p: _a.output[17]),
          _lc(x: w / PS.ab, y: h / PS.v[2], d: l, p: _a.output[18]),
          _lc(x: w / PS.ab, y: h / PS.v[3], d: l, p: _a.output[19]),
          _lc(x: w / PS.ab, y: h / PS.v[4], d: l, p: _a.output[20]),
          _lc(x: w / PS.ab, y: h / PS.v[5], d: l, p: _a.output[21]),
          _lc(x: w / PS.ab, y: h / PS.v[6], d: l, p: _a.output[22]),
          _lc(x: w / PS.ab, y: h / PS.v[7], d: l, p: _a.output[23]),
          _lc(x: w / PS.ac, y: h / PS.v[0], d: l, p: _a.output[24]),
          _lc(x: w / PS.ac, y: h / PS.v[1], d: l, p: _a.output[25]),
          _lc(x: w / PS.ac, y: h / PS.v[2], d: l, p: _a.output[26]),
          _lc(x: w / PS.ac, y: h / PS.v[3], d: l, p: _a.output[27]),
          _lc(x: w / PS.ac, y: h / PS.v[4], d: l, p: _a.output[28]),
          _lc(x: w / PS.ac, y: h / PS.v[5], d: l, p: _a.output[29]),
          _lc(x: w / PS.ac, y: h / PS.v[6], d: l, p: _a.output[30]),
          _lc(x: w / PS.ac, y: h / PS.v[7], d: l, p: _a.output[31]),
          _lc(x: w / PS.ad, y: h / PS.v[0], d: l, p: _a.output[32]),
          _lc(x: w / PS.ad, y: h / PS.v[1], d: l, p: _a.output[33]),
          _lc(x: w / PS.ad, y: h / PS.v[2], d: l, p: _a.output[34]),
          _lc(x: w / PS.ad, y: h / PS.v[3], d: l, p: _a.output[35]),
          _lc(x: w / PS.ad, y: h / PS.v[4], d: l, p: _a.output[36]),
          _lc(x: w / PS.ad, y: h / PS.v[5], d: l, p: _a.output[37]),
          _lc(x: w / PS.ad, y: h / PS.v[6], d: l, p: _a.output[38]),
          _lc(x: w / PS.ad, y: h / PS.v[7], d: l, p: _a.output[39]),
          _lco(x: w / PS.w, y: h / PS.af, d: l, o: !_v),
          _lco(x: w / PS.w, y: h / PS.ae, d: l, o: _v),
          _lc(x: w / PS.x, y: h / PS.af, d: l, p: _m),
          _lc(x: w / PS.x, y: h / PS.ae, d: l, p: _m),
        ],
      ),
    );
  }
}

Widget _lc(
    {required double x,
    required double y,
    required double d,
    required dynamic p}) {
  return Positioned(left: x - d / 2, top: y - d / 2, child: _LG(l: d, p: p));
}

Widget _lco(
    {required double x,
    required double y,
    required double d,
    required bool o}) {
  return Positioned(
    left: x - d / 2,
    top: y - d / 2,
    child: Container(
      width: d,
      height: d,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: (o) ? LedColors.ledOn : LedColors.ledOff,
      ),
    ),
  );
}

class _LG extends StatelessWidget {
  final double _s;
  final dynamic _m;

  const _LG({required double l, required dynamic p})
      : _m = p,
        _s = l;

  @override
  Widget build(BuildContext context) {
    double n = _s * 0.5;
    return Container(
      width: _s,
      height: _s,
      decoration: BoxDecoration(
          color: (_m.value > 0) ? LedColors.ledOn : LedColors.ledOff,
          shape: BoxShape.circle),
      child: (_m.isLocked)
          ? Center(
              child: Container(
              width: n,
              height: n,
              decoration: BoxDecoration(
                  color: LedColors.ledLocked, shape: BoxShape.circle),
            ))
          : (_m.isForced)
              ? Center(
                  child: Container(
                  width: n,
                  height: n,
                  decoration: BoxDecoration(
                      color: LedColors.ledForced, shape: BoxShape.circle),
                ))
              : null,
    );
  }
}
