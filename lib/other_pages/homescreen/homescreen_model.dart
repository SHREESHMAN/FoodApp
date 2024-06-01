import '/complete/helpful_tip/helpful_tip_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'homescreen_widget.dart' show HomescreenWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class HomescreenModel extends FlutterFlowModel<HomescreenWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? firstController;
  final unfocusNode = FocusNode();
  // Model for HelpfulTip component.
  late HelpfulTipModel helpfulTipModel;

  @override
  void initState(BuildContext context) {
    helpfulTipModel = createModel(context, () => HelpfulTipModel());
  }

  @override
  void dispose() {
    firstController?.finish();
    unfocusNode.dispose();
    helpfulTipModel.dispose();
  }
}
