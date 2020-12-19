import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';

Widget addVerticalSpace(double height){
  return SizedBox(
    height: height,
  );
}

Widget addHorizontalSpace(double width){
  return SizedBox(
    width: width,
  );
}
Widget get simpleClock => AnalogClock(
  decoration: BoxDecoration(
      border: Border.all(width: 2.0, color: Colors.black),
      color: Colors.transparent,
      shape: BoxShape.circle),
  width: 100.0,
  isLive: false,
  hourHandColor: Colors.black,
  minuteHandColor: Colors.black,
  showSecondHand: false,
  numberColor: Colors.black87,
  showNumbers: true,
  textScaleFactor: 1.4,
  showTicks: false,
  showDigitalClock: true,
  datetime: DateTime(2019, 1, 1, 9, 12, 15),
  key: GlobalObjectKey(3),
);