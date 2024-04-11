import '/flutter_flow/flutter_flow_util.dart';
import '/other_pages/helpful_tip/helpful_tip_widget.dart';
import 'experimental_widget.dart' show ExperimentalWidget;
import 'package:flutter/material.dart';

class ExperimentalModel extends FlutterFlowModel<ExperimentalWidget> {
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
