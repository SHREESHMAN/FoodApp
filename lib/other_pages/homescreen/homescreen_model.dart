import '/complete/components/helpful_tip/helpful_tip_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'homescreen_widget.dart' show HomescreenWidget;
import 'package:flutter/material.dart';

class HomescreenModel extends FlutterFlowModel<HomescreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for HelpfulTip component.
  late HelpfulTipModel helpfulTipModel;

  @override
  void initState(BuildContext context) {
    helpfulTipModel = createModel(context, () => HelpfulTipModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    helpfulTipModel.dispose();
  }
}
