import '/flutter_flow/flutter_flow_util.dart';
import 'tests_widget.dart' show TestsWidget;
import 'package:flutter/material.dart';

class TestsModel extends FlutterFlowModel<TestsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
