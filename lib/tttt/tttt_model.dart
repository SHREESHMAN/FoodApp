import '/flutter_flow/flutter_flow_util.dart';
import 'tttt_widget.dart' show TtttWidget;
import 'package:flutter/material.dart';

class TtttModel extends FlutterFlowModel<TtttWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
