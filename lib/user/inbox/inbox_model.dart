import '/flutter_flow/flutter_flow_util.dart';
import 'inbox_widget.dart' show InboxWidget;
import 'package:flutter/material.dart';

class InboxModel extends FlutterFlowModel<InboxWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
