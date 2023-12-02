import 'package:flutter/material.dart';

import '../a/ut.dart';

///Shows the Arduino input/output status indicators.
///
/// [automation] Instance of OpenAutomation class.
/// Requires a state manager that includes the OpenAutomation class to view updates.
/// For better performance we recommend encapsulating this widget in a class independent of its corresponding image.
class ArduinoMiniStatusLights extends StatelessWidget {
  final dynamic _a;
  final dynamic _m = (
    value: 0,
    isInput: true,
    index: 0,
    isLocked: false,
    isForced: false,
    isAnalog: false
  );

  const ArduinoMiniStatusLights({super.key, required dynamic automation})
      : _a = automation;

  @override
  Widget build(BuildContext context) {
    double w = KP.at;
    double h = w * PS.k;
    double l = w * 0.035;

    return SizedBox(
      width: w,
      height: h,
      child: Stack(
        children: [
          _lc(x: w / PS.ag[3], y: h / PS.ak, d: l, p: _a.output[5]),
          _lc(x: w / PS.ag[4], y: h / PS.ak, d: l, p: _a.output[4]),
          _lc(x: w / PS.ag[5], y: h / PS.ak, d: l, p: _a.output[3]),
          _lc(x: w / PS.ag[6], y: h / PS.ak, d: l, p: _a.output[2]),
          _lc(x: w / PS.ag[7], y: h / PS.ak, d: l, p: _a.output[1]),
          _lc(x: w / PS.ag[8], y: h / PS.ak, d: l, p: _a.output[0]),
          _lc(x: w / PS.ag[9], y: h / PS.ak, d: l, p: _a.input[7]),
          _lc(x: w / PS.ag[10], y: h / PS.ak, d: l, p: _a.input[6]),
          _lc(x: w / PS.ag[0], y: h / PS.ak, d: l, p: _m),
          _lc(x: w / PS.ag[1], y: h / PS.ak, d: l, p: _m),
          _lc(x: w / PS.ag[2], y: h / PS.ak, d: l, p: _m),
          _lc(x: w / PS.ag[11], y: h / PS.ak, d: l, p: _m),
          _lc(x: w / PS.ag[12], y: h / PS.ak, d: l, p: _m),
          _lc(x: w / PS.ag[13], y: h / PS.ak, d: l, p: _m),
          _lc(x: w / PS.ag[14], y: h / PS.ak, d: l, p: _m),
          _lc(x: w / PS.ag[3], y: h / PS.al, d: l, p: _a.input[0]),
          _lc(x: w / PS.ag[4], y: h / PS.al, d: l, p: _a.input[1]),
          _lc(x: w / PS.ag[5], y: h / PS.al, d: l, p: _a.input[2]),
          _lc(x: w / PS.ag[6], y: h / PS.al, d: l, p: _a.input[3]),
          _lc(x: w / PS.ag[7], y: h / PS.al, d: l, p: _a.output[6]),
          _lc(x: w / PS.ag[8], y: h / PS.al, d: l, p: _a.output[7]),
          _lc(x: w / PS.ag[9], y: h / PS.al, d: l, p: _a.input[4]),
          _lc(x: w / PS.ag[10], y: h / PS.al, d: l, p: _a.input[5]),
          _lc(x: w / PS.ag[0], y: h / PS.al, d: l, p: _m),
          _lc(x: w / PS.ag[1], y: h / PS.al, d: l, p: _m),
          _lc(x: w / PS.ag[2], y: h / PS.al, d: l, p: _m),
          _lc(x: w / PS.ag[11], y: h / PS.al, d: l, p: _m),
          _lc(x: w / PS.ag[12], y: h / PS.al, d: l, p: _m),
          _lc(x: w / PS.ag[13], y: h / PS.al, d: l, p: _m),
          _lc(x: w / PS.ag[14], y: h / PS.al, d: l, p: _m),
        ],
      ),
    );
  }
}

///Shows the Arduino input/output status indicators.
///
/// [automation] Instance of OpenAutomation class.
/// Requires a state manager that includes the OpenAutomation class to view updates.
/// For better performance we recommend encapsulating this widget in a class independent of its corresponding image.
class ArduinoMaxiStatusLights extends StatelessWidget {
  final dynamic _a;
  final dynamic _m = (
    value: 0,
    isInput: true,
    index: 0,
    isLocked: false,
    isForced: false,
    isAnalog: false
  );

  const ArduinoMaxiStatusLights({super.key, required dynamic automation})
      : _a = automation;

  @override
  Widget build(BuildContext context) {
    double w = KP.au;
    double h = w * PS.l;
    double l = w * 0.018;

    return SizedBox(
      width: w,
      height: h,
      child: Stack(
        children: [
          _lc(x: w / PS.ah[0], y: h / PS.am, d: l, p: _a.output[11]),
          _lc(x: w / PS.ah[1], y: h / PS.am, d: l, p: _a.output[10]),
          _lc(x: w / PS.ah[2], y: h / PS.am, d: l, p: _a.output[9]),
          _lc(x: w / PS.ah[3], y: h / PS.am, d: l, p: _a.output[8]),
          _lc(x: w / PS.ah[4], y: h / PS.am, d: l, p: _a.output[7]),
          _lc(x: w / PS.ah[5], y: h / PS.am, d: l, p: _a.output[6]),
          _lc(x: w / PS.ah[6], y: h / PS.am, d: l, p: _a.output[5]),
          _lc(x: w / PS.ah[7], y: h / PS.am, d: l, p: _a.output[4]),
          _lc(x: w / PS.ah[8], y: h / PS.am, d: l, p: _a.output[3]),
          _lc(x: w / PS.ah[9], y: h / PS.am, d: l, p: _a.output[2]),
          _lc(x: w / PS.ah[10], y: h / PS.am, d: l, p: _a.output[1]),
          _lc(x: w / PS.ah[11], y: h / PS.am, d: l, p: _a.output[0]),
          _lc(x: w / PS.ah[12], y: h / PS.am, d: l, p: _m),
          _lc(x: w / PS.ah[13], y: h / PS.am, d: l, p: _m),
          _lc(x: w / PS.ah[14], y: h / PS.am, d: l, p: _m),
          _lc(x: w / PS.ah[15], y: h / PS.am, d: l, p: _m),
          _lc(x: w / PS.ah[16], y: h / PS.am, d: l, p: _m),
          _lc(x: w / PS.ah[17], y: h / PS.am, d: l, p: _m),
          _lc(x: w / PS.ah[18], y: h / PS.am, d: l, p: _a.input[10]),
          _lc(x: w / PS.ah[19], y: h / PS.am, d: l, p: _a.input[11]),
          _lc(x: w / PS.ah[20], y: h / PS.am, d: l, p: _m),
          _lc(x: w / PS.ah[21], y: h / PS.am, d: l, p: _m),
          _lc(x: w / PS.ai[0], y: h / PS.an, d: l, p: _a.input[0]),
          _lc(x: w / PS.ai[1], y: h / PS.an, d: l, p: _a.input[1]),
          _lc(x: w / PS.ai[2], y: h / PS.an, d: l, p: _a.input[2]),
          _lc(x: w / PS.ai[3], y: h / PS.an, d: l, p: _a.input[3]),
          _lc(x: w / PS.ai[4], y: h / PS.an, d: l, p: _a.input[4]),
          _lc(x: w / PS.ai[5], y: h / PS.an, d: l, p: _a.input[5]),
          _lc(x: w / PS.ai[6], y: h / PS.an, d: l, p: _a.input[6]),
          _lc(x: w / PS.ai[7], y: h / PS.an, d: l, p: _a.input[7]),
          _lc(x: w / PS.ai[8], y: h / PS.an, d: l, p: _a.input[8]),
          _lc(x: w / PS.ai[9], y: h / PS.an, d: l, p: _a.input[9]),
          _lc(x: w / PS.ai[10], y: h / PS.an, d: l, p: _m),
          _lc(x: w / PS.ai[11], y: h / PS.an, d: l, p: _m),
          _lc(x: w / PS.ai[12], y: h / PS.an, d: l, p: _m),
          _lc(x: w / PS.ai[13], y: h / PS.an, d: l, p: _m),
          _lc(x: w / PS.ai[14], y: h / PS.an, d: l, p: _m),
          _lc(x: w / PS.ai[15], y: h / PS.an, d: l, p: _m),
          _lc(x: w / PS.ao, y: h / PS.aj[0], d: l, p: _a.output[12]),
          _lc(x: w / PS.ao, y: h / PS.aj[1], d: l, p: _a.output[14]),
          _lc(x: w / PS.ao, y: h / PS.aj[2], d: l, p: _a.output[16]),
          _lc(x: w / PS.ao, y: h / PS.aj[3], d: l, p: _a.output[18]),
          _lc(x: w / PS.ao, y: h / PS.aj[4], d: l, p: _a.output[20]),
          _lc(x: w / PS.ao, y: h / PS.aj[5], d: l, p: _m),
          _lc(x: w / PS.ao, y: h / PS.aj[6], d: l, p: _m),
          _lc(x: w / PS.ao, y: h / PS.aj[7], d: l, p: _m),
          _lc(x: w / PS.ao, y: h / PS.aj[8], d: l, p: _m),
          _lc(x: w / PS.ao, y: h / PS.aj[9], d: l, p: _m),
          _lc(x: w / PS.ao, y: h / PS.aj[10], d: l, p: _m),
          _lc(x: w / PS.ao, y: h / PS.aj[11], d: l, p: _m),
          _lc(x: w / PS.ao, y: h / PS.aj[12], d: l, p: _m),
          _lc(x: w / PS.ao, y: h / PS.aj[13], d: l, p: _m),
          _lc(x: w / PS.ao, y: h / PS.aj[14], d: l, p: _m),
          _lc(x: w / PS.ao, y: h / PS.aj[15], d: l, p: _m),
          _lc(x: w / PS.ap, y: h / PS.aj[0], d: l, p: _a.output[13]),
          _lc(x: w / PS.ap, y: h / PS.aj[1], d: l, p: _a.output[15]),
          _lc(x: w / PS.ap, y: h / PS.aj[2], d: l, p: _a.output[17]),
          _lc(x: w / PS.ap, y: h / PS.aj[3], d: l, p: _a.output[19]),
          _lc(x: w / PS.ap, y: h / PS.aj[4], d: l, p: _a.output[21]),
          _lc(x: w / PS.ap, y: h / PS.aj[5], d: l, p: _m),
          _lc(x: w / PS.ap, y: h / PS.aj[6], d: l, p: _m),
          _lc(x: w / PS.ap, y: h / PS.aj[7], d: l, p: _m),
          _lc(x: w / PS.ap, y: h / PS.aj[8], d: l, p: _m),
          _lc(x: w / PS.ap, y: h / PS.aj[9], d: l, p: _m),
          _lc(x: w / PS.ap, y: h / PS.aj[10], d: l, p: _m),
          _lc(x: w / PS.ap, y: h / PS.aj[11], d: l, p: _m),
          _lc(x: w / PS.ap, y: h / PS.aj[12], d: l, p: _m),
          _lc(x: w / PS.ap, y: h / PS.aj[13], d: l, p: _m),
          _lc(x: w / PS.ap, y: h / PS.aj[14], d: l, p: _m),
          _lc(x: w / PS.ap, y: h / PS.aj[15], d: l, p: _m),
        ],
      ),
    );
  }
}

///Shows the Arduino input/output status indicators.
///
/// [automation] Instance of OpenAutomation class.
/// Requires a state manager that includes the OpenAutomation class to view updates.
/// For better performance we recommend encapsulating this widget in a class independent of its corresponding image.
class ArduinoMegaStatusLights extends StatelessWidget {
  final dynamic _a;
  final dynamic _m = (
    value: 0,
    isInput: true,
    index: 0,
    isLocked: false,
    isForced: false,
    isAnalog: false
  );

  const ArduinoMegaStatusLights({super.key, required dynamic automation})
      : _a = automation;

  @override
  Widget build(BuildContext context) {
    double w = KP.au;
    double h = w * PS.l;
    double l = w * 0.018;

    return SizedBox(
      width: w,
      height: h,
      child: Stack(
        children: [
          _lc(x: w / PS.ah[0], y: h / PS.am, d: l, p: _a.output[11]),
          _lc(x: w / PS.ah[1], y: h / PS.am, d: l, p: _a.output[10]),
          _lc(x: w / PS.ah[2], y: h / PS.am, d: l, p: _a.output[9]),
          _lc(x: w / PS.ah[3], y: h / PS.am, d: l, p: _a.output[8]),
          _lc(x: w / PS.ah[4], y: h / PS.am, d: l, p: _a.output[7]),
          _lc(x: w / PS.ah[5], y: h / PS.am, d: l, p: _a.output[6]),
          _lc(x: w / PS.ah[6], y: h / PS.am, d: l, p: _a.output[5]),
          _lc(x: w / PS.ah[7], y: h / PS.am, d: l, p: _a.output[4]),
          _lc(x: w / PS.ah[8], y: h / PS.am, d: l, p: _a.output[3]),
          _lc(x: w / PS.ah[9], y: h / PS.am, d: l, p: _a.output[2]),
          _lc(x: w / PS.ah[10], y: h / PS.am, d: l, p: _a.output[1]),
          _lc(x: w / PS.ah[11], y: h / PS.am, d: l, p: _a.output[0]),
          _lc(x: w / PS.ah[12], y: h / PS.am, d: l, p: _m),
          _lc(x: w / PS.ah[13], y: h / PS.am, d: l, p: _m),
          _lc(x: w / PS.ah[14], y: h / PS.am, d: l, p: _m),
          _lc(x: w / PS.ah[15], y: h / PS.am, d: l, p: _m),
          _lc(x: w / PS.ah[16], y: h / PS.am, d: l, p: _m),
          _lc(x: w / PS.ah[17], y: h / PS.am, d: l, p: _m),
          _lc(x: w / PS.ah[18], y: h / PS.am, d: l, p: _a.input[19]),
          _lc(x: w / PS.ah[19], y: h / PS.am, d: l, p: _a.input[20]),
          _lc(x: w / PS.ah[20], y: h / PS.am, d: l, p: _m),
          _lc(x: w / PS.ah[21], y: h / PS.am, d: l, p: _m),
          _lc(x: w / PS.ai[0], y: h / PS.an, d: l, p: _a.input[0]),
          _lc(x: w / PS.ai[1], y: h / PS.an, d: l, p: _a.input[1]),
          _lc(x: w / PS.ai[2], y: h / PS.an, d: l, p: _a.input[2]),
          _lc(x: w / PS.ai[3], y: h / PS.an, d: l, p: _a.input[3]),
          _lc(x: w / PS.ai[4], y: h / PS.an, d: l, p: _a.input[4]),
          _lc(x: w / PS.ai[5], y: h / PS.an, d: l, p: _a.input[5]),
          _lc(x: w / PS.ai[6], y: h / PS.an, d: l, p: _a.input[6]),
          _lc(x: w / PS.ai[7], y: h / PS.an, d: l, p: _a.input[7]),
          _lc(x: w / PS.ai[8], y: h / PS.an, d: l, p: _a.input[8]),
          _lc(x: w / PS.ai[9], y: h / PS.an, d: l, p: _a.input[9]),
          _lc(x: w / PS.ai[10], y: h / PS.an, d: l, p: _a.input[10]),
          _lc(x: w / PS.ai[11], y: h / PS.an, d: l, p: _a.input[11]),
          _lc(x: w / PS.ai[12], y: h / PS.an, d: l, p: _a.input[12]),
          _lc(x: w / PS.ai[13], y: h / PS.an, d: l, p: _a.input[13]),
          _lc(x: w / PS.ai[14], y: h / PS.an, d: l, p: _a.input[14]),
          _lc(x: w / PS.ai[15], y: h / PS.an, d: l, p: _a.input[15]),
          _lc(x: w / PS.ao, y: h / PS.aj[0], d: l, p: _a.output[24]),
          _lc(x: w / PS.ao, y: h / PS.aj[1], d: l, p: _a.output[26]),
          _lc(x: w / PS.ao, y: h / PS.aj[2], d: l, p: _a.output[28]),
          _lc(x: w / PS.ao, y: h / PS.aj[3], d: l, p: _a.output[30]),
          _lc(x: w / PS.ao, y: h / PS.aj[4], d: l, p: _a.output[32]),
          _lc(x: w / PS.ao, y: h / PS.aj[5], d: l, p: _a.output[34]),
          _lc(x: w / PS.ao, y: h / PS.aj[6], d: l, p: _a.output[36]),
          _lc(x: w / PS.ao, y: h / PS.aj[7], d: l, p: _a.output[38]),
          _lc(x: w / PS.ao, y: h / PS.aj[8], d: l, p: _a.input[16]),
          _lc(x: w / PS.ao, y: h / PS.aj[9], d: l, p: _a.input[18]),
          _lc(x: w / PS.ao, y: h / PS.aj[10], d: l, p: _a.output[12]),
          _lc(x: w / PS.ao, y: h / PS.aj[11], d: l, p: _a.output[14]),
          _lc(x: w / PS.ao, y: h / PS.aj[12], d: l, p: _a.output[16]),
          _lc(x: w / PS.ao, y: h / PS.aj[13], d: l, p: _a.output[18]),
          _lc(x: w / PS.ao, y: h / PS.aj[14], d: l, p: _m),
          _lc(x: w / PS.ao, y: h / PS.aj[15], d: l, p: _m),
          _lc(x: w / PS.ap, y: h / PS.aj[0], d: l, p: _a.output[25]),
          _lc(x: w / PS.ap, y: h / PS.aj[1], d: l, p: _a.output[27]),
          _lc(x: w / PS.ap, y: h / PS.aj[2], d: l, p: _a.output[29]),
          _lc(x: w / PS.ap, y: h / PS.aj[3], d: l, p: _a.output[31]),
          _lc(x: w / PS.ap, y: h / PS.aj[4], d: l, p: _a.output[33]),
          _lc(x: w / PS.ap, y: h / PS.aj[5], d: l, p: _a.output[35]),
          _lc(x: w / PS.ap, y: h / PS.aj[6], d: l, p: _a.output[37]),
          _lc(x: w / PS.ap, y: h / PS.aj[7], d: l, p: _a.output[39]),
          _lc(x: w / PS.ap, y: h / PS.aj[8], d: l, p: _a.input[17]),
          _lc(x: w / PS.ap, y: h / PS.aj[9], d: l, p: _m),
          _lc(x: w / PS.ap, y: h / PS.aj[10], d: l, p: _a.output[13]),
          _lc(x: w / PS.ap, y: h / PS.aj[11], d: l, p: _a.output[15]),
          _lc(x: w / PS.ap, y: h / PS.aj[12], d: l, p: _a.output[17]),
          _lc(x: w / PS.ap, y: h / PS.aj[13], d: l, p: _a.output[19]),
          _lc(x: w / PS.ap, y: h / PS.aj[14], d: l, p: _m),
          _lc(x: w / PS.ap, y: h / PS.aj[15], d: l, p: _m),
          _lc(x: w / PS.ah[2], y: h / PS.aj[14], d: l, p: _a.output[20]),
          _lc(x: w / PS.ah[3], y: h / PS.aj[14], d: l, p: _a.output[21]),
          _lc(x: w / PS.ah[4], y: h / PS.aj[14], d: l, p: _a.output[22]),
          _lc(x: w / PS.ah[5], y: h / PS.aj[14], d: l, p: _a.output[23]),
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
  return Positioned(left: x - d / 2, top: y - d / 2, child: _LG(s: d, m: p));
}

class _LG extends StatelessWidget {
  final double _l;
  final dynamic _p;

  const _LG({required double s, required dynamic m})
      : _p = m,
        _l = s;

  @override
  Widget build(BuildContext context) {
    double p = _l * 0.5;
    return Container(
      width: _l,
      height: _l,
      decoration: BoxDecoration(
          color: (_p.value > 0) ? LedColors.ledOn : LedColors.ledOff,
          shape: BoxShape.circle),
      child: (_p.isLocked)
          ? Center(
              child: Container(
              width: p,
              height: p,
              decoration: BoxDecoration(
                  color: LedColors.ledLocked, shape: BoxShape.circle),
            ))
          : (_p.isForced)
              ? Center(
                  child: Container(
                  width: p,
                  height: p,
                  decoration: BoxDecoration(
                      color: LedColors.ledForced, shape: BoxShape.circle),
                ))
              : null,
    );
  }
}
