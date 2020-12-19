import 'package:analog_clock/analog_clock.dart';
import 'package:clock_ui_project/widget_functions.dart';
import 'package:flutter/material.dart';
import 'package:clock_ui_project/BorderBox.dart';
import 'package:clock_ui_project/custom_function.dart';
import 'package:intl/intl.dart';
import 'dart:core';

// ignore: must_be_immutable
class ClockPage extends StatelessWidget {
  static var today = new DateTime.now();
  var formatedTanggal = new DateFormat.yMMMd().format(today);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double padding = 25;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(
      child: Scaffold(
        // backgroundColor: COLOR_WHITE,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/abstrak4.jpg"), fit: BoxFit.fill),
          ),
          child: Column(
            children: [
              addVerticalSpace(padding),
              Padding(
                padding: sidePadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BorderBox(
                      height: 50,
                      width: 50,
                      child: Icon(Icons.menu,color: COLOR_WHITE,),
                    ),
                    Text(
                      "World Clock",
                      style: TextStyle(
                        fontFamily: 'SharpSans',
                        fontSize: 25.0,
                        color: COLOR_WHITE,
                      ),
                    ),
                  ],
                ),
              ),
              addVerticalSpace(40),
              Padding(
                padding: sidePadding,
                child: Text(
                  formatedTanggal.toString(),
                  style: TextStyle(
                    fontFamily: 'Sofia',
                    fontSize: 40,
                    color: COLOR_WHITE,
                  ),
                ),
              ),
              addVerticalSpace(20),
              SizedBox (
                  width: 300,
                  height: 300,
                  child: AnalogClock(
                    decoration: BoxDecoration(
                      border: Border.all(width: 5.0, color: Colors.transparent),
                      shape: BoxShape.circle,
                      color: Colors.transparent.withOpacity(.4),
                      // image: DecorationImage(image: AssetImage("assets/ocean1.jpg"), fit: BoxFit.fill),
                    ),
                    tickColor: Colors.white70,
                    showDigitalClock: false,
                    width: 300,
                    hourHandColor: COLOR_WHITE,
                    minuteHandColor: COLOR_WHITE,
                    secondHandColor: COLOR_WHITE,
                    showNumbers: true,
                    numberColor: Colors.white,
                  ) ),
              addVerticalSpace(20),
              addVerticalSpace(90),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                height: 74.3,
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(.3)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                      Column(
                        children: [
                          Icon(Icons.access_time_outlined, color: Colors.blue, size: 40,),
                          Text("Clock", style: TextStyle(color: Colors.blue,),),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.access_alarm, color: Colors.grey, size: 40,),
                          Text("Alarm",style: TextStyle(color: Colors.grey,),)
                        ],
                      ),
                      Column(
                        children: [
                        Icon(Icons.timer, color: Colors.grey, size: 40,),
                        Text("Timer", style: TextStyle(color: Colors.grey,),),],
                  ),
                ],
              ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
