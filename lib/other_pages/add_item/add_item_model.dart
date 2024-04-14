import '/backend/backend.dart';
import '/complete/components/helpful_tip/helpful_tip_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_item_widget.dart' show AddItemWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class AddItemModel extends FlutterFlowModel<AddItemWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? thirdController;
  final unfocusNode = FocusNode();
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // Model for HelpfulTip component.
  late HelpfulTipModel helpfulTipModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Gemini - Text From Image] action in IconButton widget.
  String? gemdesc;
  // Stores action output result for [Gemini - Text From Image] action in IconButton widget.
  String? image;
  // Stores action output result for [Bottom Sheet - addNewCategory] action in IconButton widget.
  bool? addNew;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Gemini - Text From Image] action in IconButton widget.
  String? expirydate;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  final textFieldKey7 = GlobalKey();
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7;
  String? textFieldSelectedOption7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Column widget.
  ScrollController? columnController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for ListView widget.
  ScrollController? listViewController1;
  // State field(s) for ListView widget.
  ScrollController? listViewController2;
  // Stores action output result for [Backend Call - Create Document] action in Row widget.
  FoodItemsRecord? uploadedentry;
  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';

  @override
  void initState(BuildContext context) {
    columnController1 = ScrollController();
    helpfulTipModel = createModel(context, () => HelpfulTipModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    columnController2 = ScrollController();
    listViewController1 = ScrollController();
    listViewController2 = ScrollController();
  }

  @override
  void dispose() {
    thirdController?.finish();
    unfocusNode.dispose();
    columnController1?.dispose();
    helpfulTipModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    textFieldFocusNode7?.dispose();

    tabBarController?.dispose();
    columnController2?.dispose();
    textFieldFocusNode8?.dispose();
    textController8?.dispose();

    listViewController1?.dispose();
    listViewController2?.dispose();
  }
}
