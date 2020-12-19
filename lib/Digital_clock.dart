import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final String currentTime = getSystemTime();

String getSystemTime() {
  var now = new DateTime.now();
  return new DateFormat("H:m:s").format(now);
}

