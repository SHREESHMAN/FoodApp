import '/flutter_flow/flutter_flow_util.dart';
import 'tests_widget.dart' show TestsWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TestsModel extends FlutterFlowModel<TestsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
