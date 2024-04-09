import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'foodcart_widget.dart' show FoodcartWidget;
import 'package:flutter/material.dart';

class FoodcartModel extends FlutterFlowModel<FoodcartWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Create Document] action in menuItem widget.
  FoodItemsRecord? uploadedentry;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
