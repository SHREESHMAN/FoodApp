import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String combineall(List<String> foo) {
  return '[${foo.join(',')}]';
}

String getitem(
  List<String> lis,
  String img,
) {
  String lowercaseVariable1 = img.toLowerCase().trim();
  for (String item in lis) {
    if (item.toLowerCase() == lowercaseVariable1) {
      return item;
    }
  }
  return '0';
}
