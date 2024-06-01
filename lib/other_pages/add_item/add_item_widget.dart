import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/gemini/gemini.dart';
import '/complete/components/add_new_category/add_new_category_widget.dart';
import '/complete/components/blocked/blocked_widget.dart';
import '/complete/components/empty/empty_widget.dart';
import '/complete/helpful_tip/helpful_tip_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/walkthroughs/third.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'add_item_model.dart';
export 'add_item_model.dart';

class AddItemWidget extends StatefulWidget {
  const AddItemWidget({super.key});

  @override
  State<AddItemWidget> createState() => _AddItemWidgetState();
}

class _AddItemWidgetState extends State<AddItemWidget>
    with TickerProviderStateMixin {
  late AddItemModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddItemModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!functions.tutdone(FFAppState().tutorialsdone.toList(), 3)) {
        safeSetState(
            () => _model.thirdController = createPageWalkthrough(context));
        _model.thirdController?.show(context: context);
        FFAppState().addToTutorialsdone(3);
        setState(() {});
      }
    });

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();

    _model.textController6 ??= TextEditingController();
    _model.textFieldFocusNode6 ??= FocusNode();

    _model.textController7 ??= TextEditingController();

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.textController8 ??= TextEditingController();
    _model.textFieldFocusNode8 ??= FocusNode();

    animationsMap.addAll({
      'iconOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            color: const Color(0xFF00F4FF),
            angle: 0.785,
          ),
        ],
      ),
      'textFieldOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          TintEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0xFF00ACBA),
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dropDownOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          TintEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0xFF00ACBA),
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textFieldOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          TintEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0xFF00ACBA),
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textFieldOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          TintEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: Colors.black,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textFieldOnActionTriggerAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          TintEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0xFF00ACBA),
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textFieldOnActionTriggerAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          TintEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0xFF00ACBA),
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'floatingActionButtonOnPageLoadAnimation': AnimationInfo(
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 580.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 0.5,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: Align(
          alignment: const AlignmentDirectional(1.0, 1.0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 6.0),
            child: FloatingActionButton(
              onPressed: () async {
                FFAppState().helptext = 'Adding food item please wait';
                setState(() {});
                if ((_model.dropDownValue == null ||
                        _model.dropDownValue == '') ||
                    (_model.textController3.text == '') ||
                    (_model.textController4.text == '') ||
                    (_model.textController5.text == '') ||
                    ((_model.uploadedLocalFile1.bytes?.isEmpty ?? true))) {
                  await showDialog(
                    context: context,
                    builder: (alertDialogContext) {
                      return AlertDialog(
                        title: const Text('Missing Required Data!'),
                        content: const Text(
                            'Please make sure you have proveded the following data required by the food banks: Image, Expiry Date, Condition & Category(manually or AI)'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(alertDialogContext),
                            child: const Text('Ok'),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  {
                    setState(() => _model.isDataUploading3 = true);
                    var selectedUploadedFiles = <FFUploadedFile>[];
                    var selectedMedia = <SelectedFile>[];
                    var downloadUrls = <String>[];
                    try {
                      selectedUploadedFiles =
                          _model.uploadedLocalFile1.bytes!.isNotEmpty
                              ? [_model.uploadedLocalFile1]
                              : <FFUploadedFile>[];
                      selectedMedia = selectedFilesFromUploadedFiles(
                        selectedUploadedFiles,
                      );
                      downloadUrls = (await Future.wait(
                        selectedMedia.map(
                          (m) async => await uploadData(m.storagePath, m.bytes),
                        ),
                      ))
                          .where((u) => u != null)
                          .map((u) => u!)
                          .toList();
                    } finally {
                      _model.isDataUploading3 = false;
                    }
                    if (selectedUploadedFiles.length == selectedMedia.length &&
                        downloadUrls.length == selectedMedia.length) {
                      setState(() {
                        _model.uploadedLocalFile3 = selectedUploadedFiles.first;
                        _model.uploadedFileUrl3 = downloadUrls.first;
                      });
                    } else {
                      setState(() {});
                      return;
                    }
                  }

                  FFAppState().addToFoodItem(FoodItemStruct(
                    img: _model.uploadedFileUrl3,
                    name: _model.textController1.text,
                    category: _model.dropDownValue,
                    description: _model.textController7.text,
                    expiry: functions.getdate(
                        _model.textController3.text,
                        _model.textController4.text,
                        _model.textController5.text),
                    quantity: double.tryParse(_model.textController6.text),
                    donated: false,
                    price: double.tryParse(_model.textController2.text),
                  ));
                  setState(() {});
                  setState(() {
                    _model.textController2?.clear();
                    _model.textController3?.clear();
                    _model.textController4?.clear();
                    _model.textController5?.clear();
                    _model.textController6?.clear();
                    _model.textController1?.clear();
                  });
                  setState(() {
                    _model.dropDownValueController?.reset();
                  });
                  setState(() {
                    _model.isDataUploading1 = false;
                    _model.uploadedLocalFile1 =
                        FFUploadedFile(bytes: Uint8List.fromList([]));
                  });

                  setState(() {
                    _model.isDataUploading3 = false;
                    _model.uploadedLocalFile3 =
                        FFUploadedFile(bytes: Uint8List.fromList([]));
                    _model.uploadedFileUrl3 = '';
                  });
                }

                setState(() {
                  _model.tabBarController!.animateTo(
                    _model.tabBarController!.length - 1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                });

                await _model.listViewController2?.animateTo(
                  _model.listViewController2!.position.maxScrollExtent,
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.ease,
                );
                FFAppState().helptext = 'Help Text';
                setState(() {});
              },
              backgroundColor: FlutterFlowTheme.of(context).primary,
              elevation: 8.0,
              child: Icon(
                Icons.add,
                color: FlutterFlowTheme.of(context).info,
                size: 24.0,
              ),
            )
                .addWalkthrough(
                  floatingActionButton0cefzjx6,
                  _model.thirdController,
                )
                .animateOnPageLoad(
                    animationsMap['floatingActionButtonOnPageLoadAnimation']!),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 7.0, 0.0),
            child: SingleChildScrollView(
              primary: false,
              controller: _model.columnController,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 8.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await FoodItemsRecord.collection
                                  .doc()
                                  .set(createFoodItemsRecordData(
                                    name: '',
                                  ));
                            },
                            child: GradientText(
                              FFLocalizations.of(context).getText(
                                'om6l2w34' /* Add New Item */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto Condensed',
                                    fontSize: 48.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                              colors: [
                                FlutterFlowTheme.of(context).primary,
                                FlutterFlowTheme.of(context).accent3
                              ],
                              gradientDirection: GradientDirection.ltr,
                              gradientType: GradientType.linear,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.asset(
                            'assets/images/img_placeholder.png',
                            width: 300.0,
                            height: 250.0,
                            fit: BoxFit.cover,
                            alignment: const Alignment(0.0, 0.0),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.memory(
                              _model.uploadedLocalFile1.bytes ??
                                  Uint8List.fromList([]),
                              width: 300.0,
                              height: 250.0,
                              fit: BoxFit.cover,
                              alignment: const Alignment(0.0, 0.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 1.35,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x320E151B),
                            offset: Offset(
                              0.0,
                              -2.0,
                            ),
                          )
                        ],
                        gradient: LinearGradient(
                          colors: [
                            FlutterFlowTheme.of(context).customColor1,
                            FlutterFlowTheme.of(context).secondary,
                            FlutterFlowTheme.of(context).accent3
                          ],
                          stops: const [0.0, 1.0, 1.0],
                          begin: const AlignmentDirectional(0.0, -1.0),
                          end: const AlignmentDirectional(0, 1.0),
                        ),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0),
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: wrapWithModel(
                                model: _model.helpfulTipModel,
                                updateCallback: () => setState(() {}),
                                child: const HelpfulTipWidget(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text(
                                          FFAppState().helptext,
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto Mono',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  FaIcon(
                                    FontAwesomeIcons.modx,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'iconOnActionTriggerAnimation']!,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.textController1,
                                      focusNode: _model.textFieldFocusNode1,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'e92pnt5z' /* Name */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.name,
                                      validator: _model.textController1Validator
                                          .asValidator(context),
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'textFieldOnActionTriggerAnimation1']!,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.textController2,
                                      focusNode: _model.textFieldFocusNode2,
                                      autofocus: true,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'shmfx7lt' /* Cost */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                        alignLabelWithHint: false,
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.center,
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              decimal: true),
                                      validator: _model.textController2Validator
                                          .asValidator(context),
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                            RegExp('[0-9]'))
                                      ],
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 5,
                                  child: FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController ??=
                                            FormFieldController<String>(null),
                                    options: FFAppState().categories,
                                    onChanged: (val) => setState(
                                        () => _model.dropDownValue = val),
                                    width: 300.0,
                                    height: 56.0,
                                    searchHintTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                    searchTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      '92bg8d3z' /* Category* */,
                                    ),
                                    searchHintText:
                                        FFLocalizations.of(context).getText(
                                      'b7pnoexn' /* Search for categories */,
                                    ),
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .customColor1,
                                    elevation: 2.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderWidth: 2.0,
                                    borderRadius: 8.0,
                                    margin: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 4.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: true,
                                    isMultiSelect: false,
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'dropDownOnActionTriggerAnimation']!,
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor: const Color(0xFF0B0101),
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  fillColor: const Color(0x5DABA1A1),
                                  icon: FaIcon(
                                    FontAwesomeIcons.barcode,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    var shouldSetState = false;
                                    _model.bar =
                                        await FlutterBarcodeScanner.scanBarcode(
                                      '#C62828', // scanning line color
                                      FFLocalizations.of(context).getText(
                                        'm6yh3acj' /* Cancel */,
                                      ), // cancel button text
                                      true, // whether to show the flash icon
                                      ScanMode.QR,
                                    );

                                    shouldSetState = true;
                                    if (_model.bar == 'KindBIte') {
                                      FFAppState().addToFoodItem(FoodItemStruct(
                                        img:
                                            'https://www.foodandwine.com/thmb/IuZPWAXBp4YaT9hn1YLHhuijT3k=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/FAW-recipes-big-italian-salad-hero-83e6ea846722478f8feb1eea33158b00.jpg',
                                        name: 'Salad bowl',
                                        category: 'Vegetable',
                                        description:
                                            'Salad with extra cabbage, Expires: in 3 days',
                                        expiry:
                                            DateTime.fromMicrosecondsSinceEpoch(
                                                1717444800000000),
                                        quantity: 1.0,
                                        donated: false,
                                        price: 40.0,
                                      ));
                                      setState(() {});
                                    } else {
                                      if (_model.bar == 'IEEEDAY') {
                                        FFAppState()
                                            .addToFoodItem(FoodItemStruct(
                                          img:
                                              'https://cdn.sprinklebakes.com/media/2023/08/Death-By-Chocolate-Cake-2-500x500.jpg',
                                          name: 'Chocolate Cake',
                                          category: 'Dairy',
                                          description:
                                              'Chocolate Cake, Eggless, Bought from LuLu, Expiry: 10 days after unpacking',
                                          expiry: DateTime
                                              .fromMicrosecondsSinceEpoch(
                                                  1717963200000000),
                                          quantity: 1.0,
                                          donated: false,
                                          price: 200.0,
                                        ));
                                        setState(() {});
                                      } else {
                                        if (_model.bar == 'IEEEDAY') {
                                          FFAppState()
                                              .addToFoodItem(FoodItemStruct(
                                            img:
                                                'https://cdn.sprinklebakes.com/media/2023/08/Death-By-Chocolate-Cake-2-500x500.jpg',
                                            name: 'Chocolate Cake',
                                            category: 'Dairy',
                                            description:
                                                'Chocolate Cake, Eggless, Bought from LuLu, Expiry: 10 days after unpacking',
                                            expiry: DateTime
                                                .fromMicrosecondsSinceEpoch(
                                                    1717963200000000),
                                            quantity: 1.0,
                                            donated: false,
                                            price: 200.0,
                                          ));
                                          setState(() {});
                                        } else {
                                          FFAppState()
                                              .addToFoodItem(FoodItemStruct(
                                            img:
                                                'https://cdn.sprinklebakes.com/media/2023/08/Death-By-Chocolate-Cake-2-500x500.jpg',
                                            name: 'Chocolate Cake',
                                            category: 'Dairy',
                                            description:
                                                'Chocolate Cake, Eggless, Bought from LuLu, Expiry: 10 days after unpacking',
                                            expiry: DateTime
                                                .fromMicrosecondsSinceEpoch(
                                                    1717963200000000),
                                            quantity: 1.0,
                                            donated: false,
                                            price: 200.0,
                                          ));
                                          setState(() {});
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () => _model.unfocusNode
                                                        .canRequestFocus
                                                    ? FocusScope.of(context)
                                                        .requestFocus(
                                                            _model.unfocusNode)
                                                    : FocusScope.of(context)
                                                        .unfocus(),
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: BlockedWidget(
                                                    display: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'foltrgyr' /* Item Code Invalid */,
                                                    ),
                                                    subtext: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      '6hntmh35' /* Try Scanning Again. */,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));

                                          if (shouldSetState) setState(() {});
                                          return;
                                        }
                                      }
                                    }

                                    FFAppState().helptext =
                                        'Adding food item please wait';
                                    setState(() {});
                                    setState(() {
                                      _model.tabBarController!.animateTo(
                                        _model.tabBarController!.length - 1,
                                        duration: const Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                    });

                                    await _model.listViewController2?.animateTo(
                                      _model.listViewController2!.position
                                          .maxScrollExtent,
                                      duration: const Duration(milliseconds: 250),
                                      curve: Curves.ease,
                                    );
                                    FFAppState().helptext = 'Help Text';
                                    setState(() {});
                                    if (shouldSetState) setState(() {});
                                  },
                                ).addWalkthrough(
                                  iconButton41s4acvl,
                                  _model.thirdController,
                                ),
                                FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).accent3,
                                  icon: Icon(
                                    Icons.image_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    if (animationsMap[
                                            'iconOnActionTriggerAnimation'] !=
                                        null) {
                                      animationsMap[
                                              'iconOnActionTriggerAnimation']!
                                          .controller
                                        ..reset()
                                        ..repeat();
                                    }
                                    final selectedMedia =
                                        await selectMediaWithSourceBottomSheet(
                                      context: context,
                                      imageQuality: 60,
                                      allowPhoto: true,
                                    );
                                    if (selectedMedia != null &&
                                        selectedMedia.every((m) =>
                                            validateFileFormat(
                                                m.storagePath, context))) {
                                      setState(
                                          () => _model.isDataUploading1 = true);
                                      var selectedUploadedFiles =
                                          <FFUploadedFile>[];

                                      try {
                                        showUploadMessage(
                                          context,
                                          'Uploading file...',
                                          showLoading: true,
                                        );
                                        selectedUploadedFiles = selectedMedia
                                            .map((m) => FFUploadedFile(
                                                  name: m.storagePath
                                                      .split('/')
                                                      .last,
                                                  bytes: m.bytes,
                                                  height: m.dimensions?.height,
                                                  width: m.dimensions?.width,
                                                  blurHash: m.blurHash,
                                                ))
                                            .toList();
                                      } finally {
                                        ScaffoldMessenger.of(context)
                                            .hideCurrentSnackBar();
                                        _model.isDataUploading1 = false;
                                      }
                                      if (selectedUploadedFiles.length ==
                                          selectedMedia.length) {
                                        setState(() {
                                          _model.uploadedLocalFile1 =
                                              selectedUploadedFiles.first;
                                        });
                                        showUploadMessage(context, 'Success!');
                                      } else {
                                        setState(() {});
                                        showUploadMessage(
                                            context, 'Failed to upload data');
                                        return;
                                      }
                                    }

                                    await geminiTextFromImage(
                                      context,
                                      'Look at the image and give a description accordingly eg: New Item, Has been stored, In original packing, looks like its about to expire, might have expired, in okay condition etc. dont make the description long.',
                                      uploadImageBytes:
                                          _model.uploadedLocalFile1,
                                    ).then((generatedText) {
                                      safeSetState(
                                          () => _model.gemdesc = generatedText);
                                    });

                                    FFAppState().helptext =
                                        'Analyzing Image Please Wait';
                                    setState(() {});
                                    await geminiTextFromImage(
                                      context,
                                      'Classify the image into one of these given categories and return only the category and nothing else as response  (return exact category string, dont change capitalization) if no category matches return that Detected Category with quotes eg: \" ... \" in 1-2 words. ${functions.combineall(FFAppState().categories.toList())}',
                                      uploadImageBytes:
                                          _model.uploadedLocalFile1,
                                    ).then((generatedText) {
                                      safeSetState(
                                          () => _model.image = generatedText);
                                    });

                                    if (_model.image == null ||
                                        _model.image == '') {
                                      FFAppState().helptext =
                                          'Try Image Uploading Again';
                                      setState(() {});
                                    } else {
                                      if (!functions.checkIfPresent(
                                          _model.image!,
                                          FFAppState().categories.toList())) {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          isDismissible: false,
                                          context: context,
                                          builder: (context) {
                                            return GestureDetector(
                                              onTap: () => _model.unfocusNode
                                                      .canRequestFocus
                                                  ? FocusScope.of(context)
                                                      .requestFocus(
                                                          _model.unfocusNode)
                                                  : FocusScope.of(context)
                                                      .unfocus(),
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: AddNewCategoryWidget(
                                                  newcat:
                                                      valueOrDefault<String>(
                                                    functions
                                                        .noquote(_model.image!),
                                                    'Other',
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(
                                            () => _model.addNew = value));

                                        if (_model.addNew!) {
                                          setState(() {
                                            _model.dropDownValueController
                                                    ?.value =
                                                valueOrDefault<String>(
                                              FFAppState().categories.last,
                                              'Other',
                                            );
                                          });
                                          FFAppState().helptext =
                                              'Help will appear here';
                                          setState(() {});
                                          setState(() {
                                            _model.textController7?.text =
                                                _model.gemdesc!;
                                          });
                                          setState(() {
                                            _model.textController1?.text =
                                                _model.dropDownValue!;
                                          });
                                        } else {
                                          FFAppState().helptext =
                                              'Your Item doesn\'t match any Category. Create a new Category or upload a new Image.';
                                          setState(() {});
                                        }

                                        if (animationsMap[
                                                'textFieldOnActionTriggerAnimation1'] !=
                                            null) {
                                          await animationsMap[
                                                  'textFieldOnActionTriggerAnimation1']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        if (animationsMap[
                                                'dropDownOnActionTriggerAnimation'] !=
                                            null) {
                                          await animationsMap[
                                                  'dropDownOnActionTriggerAnimation']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        if (animationsMap[
                                                'iconOnActionTriggerAnimation'] !=
                                            null) {
                                          await animationsMap[
                                                  'iconOnActionTriggerAnimation']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                      } else {
                                        setState(() {
                                          _model.dropDownValueController
                                                  ?.value =
                                              functions.getitem(
                                                  FFAppState()
                                                      .categories
                                                      .toList(),
                                                  '${_model.image}');
                                        });
                                        FFAppState().helptext =
                                            'Help will appear here';
                                        setState(() {});
                                        if (_model.gemdesc != null &&
                                            _model.gemdesc != '') {
                                          setState(() {
                                            _model.textController7?.text =
                                                _model.gemdesc!;
                                          });
                                          setState(() {
                                            _model.textController1?.text =
                                                _model.dropDownValue!;
                                          });
                                        }
                                        if (animationsMap[
                                                'textFieldOnActionTriggerAnimation1'] !=
                                            null) {
                                          await animationsMap[
                                                  'textFieldOnActionTriggerAnimation1']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        if (animationsMap[
                                                'dropDownOnActionTriggerAnimation'] !=
                                            null) {
                                          await animationsMap[
                                                  'dropDownOnActionTriggerAnimation']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        if (animationsMap[
                                                'iconOnActionTriggerAnimation'] !=
                                            null) {
                                          await animationsMap[
                                                  'iconOnActionTriggerAnimation']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                      }
                                    }

                                    if (animationsMap[
                                            'iconOnActionTriggerAnimation'] !=
                                        null) {
                                      animationsMap[
                                              'iconOnActionTriggerAnimation']!
                                          .controller
                                          .stop();
                                    }
                                    if (animationsMap[
                                            'iconOnActionTriggerAnimation'] !=
                                        null) {
                                      animationsMap[
                                              'iconOnActionTriggerAnimation']!
                                          .controller
                                          .reset();
                                    }
                                    if (animationsMap[
                                            'textFieldOnActionTriggerAnimation1'] !=
                                        null) {
                                      animationsMap[
                                              'textFieldOnActionTriggerAnimation1']!
                                          .controller
                                          .reset();
                                    }
                                    if (animationsMap[
                                            'dropDownOnActionTriggerAnimation'] !=
                                        null) {
                                      animationsMap[
                                              'dropDownOnActionTriggerAnimation']!
                                          .controller
                                          .reset();
                                    }
                                    if (animationsMap[
                                            'iconOnActionTriggerAnimation'] !=
                                        null) {
                                      animationsMap[
                                              'iconOnActionTriggerAnimation']!
                                          .controller
                                          .reset();
                                    }

                                    setState(() {});
                                  },
                                ),
                                FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).primary,
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).accent1,
                                  icon: Icon(
                                    Icons.delete_forever_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    setState(() {
                                      _model.textController1?.clear();
                                      _model.textController2?.clear();
                                      _model.textController3?.clear();
                                      _model.textController4?.clear();
                                      _model.textController5?.clear();
                                      _model.textController6?.clear();
                                    });
                                    setState(() {
                                      _model.dropDownValueController?.reset();
                                    });
                                    setState(() {
                                      _model.isDataUploading1 = false;
                                      _model.uploadedLocalFile1 =
                                          FFUploadedFile(
                                              bytes: Uint8List.fromList([]));
                                    });
                                  },
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    flex: 6,
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'vds7t1kb' /* Expiry Date* */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.textController3,
                                        focusNode: _model.textFieldFocusNode3,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            '51u58u79' /* DD */,
                                          ),
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    letterSpacing: 0.0,
                                                  ),
                                          alignLabelWithHint: false,
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        validator: _model
                                            .textController3Validator
                                            .asValidator(context),
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(
                                              RegExp('[0-9]'))
                                        ],
                                      ).animateOnActionTrigger(
                                        animationsMap[
                                            'textFieldOnActionTriggerAnimation2']!,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.textController4,
                                        focusNode: _model.textFieldFocusNode4,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'r4830i3x' /* MM */,
                                          ),
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    letterSpacing: 0.0,
                                                  ),
                                          alignLabelWithHint: false,
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        validator: _model
                                            .textController4Validator
                                            .asValidator(context),
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(
                                              RegExp('[0-9]'))
                                        ],
                                      ).animateOnActionTrigger(
                                        animationsMap[
                                            'textFieldOnActionTriggerAnimation3']!,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.textController5,
                                        focusNode: _model.textFieldFocusNode5,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            '3g85pv2w' /* YYYY */,
                                          ),
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    letterSpacing: 0.0,
                                                  ),
                                          alignLabelWithHint: false,
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        validator: _model
                                            .textController5Validator
                                            .asValidator(context),
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(
                                              RegExp('[0-9]'))
                                        ],
                                      ).animateOnActionTrigger(
                                        animationsMap[
                                            'textFieldOnActionTriggerAnimation4']!,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: FlutterFlowIconButton(
                                      borderColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                      borderRadius: 20.0,
                                      borderWidth: 1.0,
                                      buttonSize: 40.0,
                                      fillColor:
                                          FlutterFlowTheme.of(context).accent3,
                                      icon: Icon(
                                        Icons.camera_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24.0,
                                      ),
                                      onPressed: () async {
                                        if (animationsMap[
                                                'iconOnActionTriggerAnimation'] !=
                                            null) {
                                          animationsMap[
                                                  'iconOnActionTriggerAnimation']!
                                              .controller
                                            ..reset()
                                            ..repeat();
                                        }
                                        final selectedMedia =
                                            await selectMediaWithSourceBottomSheet(
                                          context: context,
                                          imageQuality: 100,
                                          allowPhoto: true,
                                        );
                                        if (selectedMedia != null &&
                                            selectedMedia.every((m) =>
                                                validateFileFormat(
                                                    m.storagePath, context))) {
                                          setState(() =>
                                              _model.isDataUploading2 = true);
                                          var selectedUploadedFiles =
                                              <FFUploadedFile>[];

                                          try {
                                            selectedUploadedFiles =
                                                selectedMedia
                                                    .map((m) => FFUploadedFile(
                                                          name: m.storagePath
                                                              .split('/')
                                                              .last,
                                                          bytes: m.bytes,
                                                          height: m.dimensions
                                                              ?.height,
                                                          width: m.dimensions
                                                              ?.width,
                                                          blurHash: m.blurHash,
                                                        ))
                                                    .toList();
                                          } finally {
                                            _model.isDataUploading2 = false;
                                          }
                                          if (selectedUploadedFiles.length ==
                                              selectedMedia.length) {
                                            setState(() {
                                              _model.uploadedLocalFile2 =
                                                  selectedUploadedFiles.first;
                                            });
                                          } else {
                                            setState(() {});
                                            return;
                                          }
                                        }

                                        await geminiTextFromImage(
                                          context,
                                          'Analyse the Image, Try to read the text and find the expiry ir the best before date, If you find the expiry date, answer in the format \"dd/MM/yyyy\" only and nothing else as output. If you are unable to find the date return \"0\" and nothing else. Remember do not return the production or manufacture date, if you see only month and year then return 01/MM/yyyy if only year is seen 01/01/yyyy.',
                                          uploadImageBytes:
                                              _model.uploadedLocalFile2,
                                        ).then((generatedText) {
                                          safeSetState(() => _model.expirydate =
                                              generatedText);
                                        });

                                        if (_model.expirydate == '0') {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title:
                                                    const Text('Invalid Expiry date'),
                                                content: const Text(
                                                    'Can\'t find expiry date, either scan a clear image or enter the date manually '),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: const Text('Got it'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                          if (animationsMap[
                                                  'iconOnActionTriggerAnimation'] !=
                                              null) {
                                            animationsMap[
                                                    'iconOnActionTriggerAnimation']!
                                                .controller
                                                .stop();
                                          }
                                        } else {
                                          setState(() {
                                            _model.textController3?.text =
                                                ((String fullexpiry) {
                                              return fullexpiry[1] +
                                                  fullexpiry[2];
                                            }(_model.expirydate!));
                                          });
                                          setState(() {
                                            _model.textController4?.text =
                                                ((String fullexpiry) {
                                              return fullexpiry[4] +
                                                  fullexpiry[5];
                                            }(_model.expirydate!));
                                          });
                                          setState(() {
                                            _model.textController5?.text =
                                                ((String fullexpiry) {
                                              return fullexpiry[7] +
                                                  fullexpiry[8] +
                                                  fullexpiry[9] +
                                                  fullexpiry[10];
                                            }(_model.expirydate!));
                                          });
                                          if (animationsMap[
                                                  'textFieldOnActionTriggerAnimation2'] !=
                                              null) {
                                            await animationsMap[
                                                    'textFieldOnActionTriggerAnimation2']!
                                                .controller
                                                .forward(from: 0.0);
                                          }
                                          if (animationsMap[
                                                  'textFieldOnActionTriggerAnimation3'] !=
                                              null) {
                                            await animationsMap[
                                                    'textFieldOnActionTriggerAnimation3']!
                                                .controller
                                                .forward(from: 0.0);
                                          }
                                          if (animationsMap[
                                                  'textFieldOnActionTriggerAnimation4'] !=
                                              null) {
                                            await animationsMap[
                                                    'textFieldOnActionTriggerAnimation4']!
                                                .controller
                                                .forward(from: 0.0);
                                          }
                                        }

                                        if (animationsMap[
                                                'iconOnActionTriggerAnimation'] !=
                                            null) {
                                          animationsMap[
                                                  'iconOnActionTriggerAnimation']!
                                              .controller
                                              .stop();
                                        }

                                        setState(() {});
                                      },
                                    ).addWalkthrough(
                                      iconButtonQaox8skd,
                                      _model.thirdController,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: FlutterFlowIconButton(
                                      borderColor:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: 20.0,
                                      borderWidth: 1.0,
                                      buttonSize: 40.0,
                                      fillColor:
                                          FlutterFlowTheme.of(context).accent1,
                                      icon: Icon(
                                        Icons.edit_calendar,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24.0,
                                      ),
                                      onPressed: () async {
                                        if (FFAppState().datepick == 1.0) {
                                          FFAppState().datepick = 0.0;
                                          setState(() {});
                                          return;
                                        } else {
                                          FFAppState().datepick = 1.0;
                                          setState(() {});
                                          return;
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (FFAppState().datepick == 1.0)
                              FlutterFlowCalendar(
                                color: FlutterFlowTheme.of(context).primary,
                                iconColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                weekFormat: false,
                                weekStartsMonday: false,
                                initialDate: dateTimeFromSecondsSinceEpoch(
                                    getCurrentTimestamp.secondsSinceEpoch),
                                rowHeight: 40.0,
                                onChange:
                                    (DateTimeRange? newSelectedDate) async {
                                  if (_model.calendarSelectedDay ==
                                      newSelectedDate) {
                                    return;
                                  }
                                  _model.calendarSelectedDay = newSelectedDate;
                                  setState(() {
                                    _model.textController3?.text =
                                        dateTimeFormat(
                                      'd',
                                      _model.calendarSelectedDay!.start,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    );
                                  });
                                  setState(() {
                                    _model.textController4?.text =
                                        dateTimeFormat(
                                      'M',
                                      _model.calendarSelectedDay!.start,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    );
                                  });
                                  setState(() {
                                    _model.textController5?.text =
                                        dateTimeFormat(
                                      'y',
                                      _model.calendarSelectedDay!.start,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    );
                                  });
                                  FFAppState().datepick = 0.0;
                                  setState(() {});
                                  setState(() {});
                                },
                                titleStyle: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Sora',
                                      letterSpacing: 0.0,
                                    ),
                                dayOfWeekStyle: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                                dateStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                                selectedDateStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                                inactiveDateStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.textController6,
                                      focusNode: _model.textFieldFocusNode6,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          '7pdff22v' /* Quantity(pc/kg) */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                        alignLabelWithHint: false,
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              decimal: true),
                                      validator: _model.textController6Validator
                                          .asValidator(context),
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                            RegExp('[0-9]'))
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: Autocomplete<String>(
                                      initialValue: const TextEditingValue(),
                                      optionsBuilder: (textEditingValue) {
                                        if (textEditingValue.text == '') {
                                          return const Iterable<String>.empty();
                                        }
                                        return [
                                          FFLocalizations.of(context).getText(
                                            'l4znbr2w' /* New */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'p3nykppu' /* Old */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'aj2cg8xc' /* About to Expire */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'ri9i55ny' /* Expired */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            '99nk8gkb' /* Preserved */,
                                          ),
                                          FFLocalizations.of(context).getText(
                                            'n25zp9pa' /* Original Packing */,
                                          )
                                        ].where((option) {
                                          final lowercaseOption =
                                              option.toLowerCase();
                                          return lowercaseOption.contains(
                                              textEditingValue.text
                                                  .toLowerCase());
                                        });
                                      },
                                      optionsViewBuilder:
                                          (context, onSelected, options) {
                                        return AutocompleteOptionsList(
                                          textFieldKey: _model.textFieldKey7,
                                          textController:
                                              _model.textController7!,
                                          options: options.toList(),
                                          onSelected: onSelected,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    letterSpacing: 0.0,
                                                  ),
                                          textHighlightStyle: const TextStyle(),
                                          elevation: 4.0,
                                          optionBackgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          optionHighlightColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          maxHeight: 200.0,
                                        );
                                      },
                                      onSelected: (String selection) {
                                        setState(() =>
                                            _model.textFieldSelectedOption7 =
                                                selection);
                                        FocusScope.of(context).unfocus();
                                      },
                                      fieldViewBuilder: (
                                        context,
                                        textEditingController,
                                        focusNode,
                                        onEditingComplete,
                                      ) {
                                        _model.textFieldFocusNode7 = focusNode;

                                        _model.textController7 =
                                            textEditingController;
                                        return TextFormField(
                                          key: _model.textFieldKey7,
                                          controller: textEditingController,
                                          focusNode: focusNode,
                                          onEditingComplete: onEditingComplete,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'ybzwgi0n' /* Description/Condition* */,
                                            ),
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                          keyboardType: TextInputType.multiline,
                                          validator: _model
                                              .textController7Validator
                                              .asValidator(context),
                                        );
                                      },
                                    ).animateOnActionTrigger(
                                      animationsMap[
                                          'textFieldOnActionTriggerAnimation5']!,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 0.0),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: const Alignment(0.0, 0),
                                      child: TabBar(
                                        labelColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        unselectedLabelColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                        unselectedLabelStyle: const TextStyle(),
                                        indicatorColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        tabs: [
                                          Tab(
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'b36vn7a0' /* Categories */,
                                            ),
                                          ),
                                          Tab(
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              '0bs9303u' /* Added Items */,
                                            ),
                                          ),
                                        ],
                                        controller: _model.tabBarController,
                                        onTap: (i) async {
                                          [() async {}, () async {}][i]();
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        controller: _model.tabBarController,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    flex: 10,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  0.0,
                                                                  8.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .textController8,
                                                        focusNode: _model
                                                            .textFieldFocusNode8,
                                                        autofocus: true,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                            'ux2v4026' /* Enter Custom Category Here... */,
                                                          ),
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              UnderlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        validator: _model
                                                            .textController8Validator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    borderRadius: 20.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent1,
                                                    icon: Icon(
                                                      Icons.add,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      if (_model.textController8
                                                                  .text !=
                                                              '') {
                                                        FFAppState()
                                                            .addToCategories(_model
                                                                .textController8
                                                                .text);
                                                        setState(() {});
                                                        setState(() {
                                                          _model.textController8
                                                              ?.clear();
                                                        });
                                                        setState(() {
                                                          _model
                                                              .tabBarController!
                                                              .animateTo(
                                                            0,
                                                            duration: const Duration(
                                                                milliseconds:
                                                                    300),
                                                            curve: Curves.ease,
                                                          );
                                                        });

                                                        await _model
                                                            .listViewController1
                                                            ?.animateTo(
                                                          _model
                                                              .listViewController1!
                                                              .position
                                                              .maxScrollExtent,
                                                          duration: const Duration(
                                                              milliseconds:
                                                                  500),
                                                          curve: Curves.ease,
                                                        );
                                                      } else {
                                                        return;
                                                      }
                                                    },
                                                  ),
                                                ],
                                              ).addWalkthrough(
                                                rowI9oaqab4,
                                                _model.thirdController,
                                              ),
                                              Expanded(
                                                child: Builder(
                                                  builder: (context) {
                                                    final categoryimg =
                                                        FFAppState()
                                                            .categories
                                                            .toList();
                                                    if (categoryimg.isEmpty) {
                                                      return const EmptyWidget();
                                                    }
                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          categoryimg.length,
                                                      itemBuilder: (context,
                                                          categoryimgIndex) {
                                                        final categoryimgItem =
                                                            categoryimg[
                                                                categoryimgIndex];
                                                        return Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      12.0,
                                                                      16.0,
                                                                      8.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onLongPress:
                                                                () async {
                                                              FFAppState()
                                                                  .removeAtIndexFromCategories(
                                                                      categoryimgIndex);
                                                              setState(() {});
                                                            },
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Expanded(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'o0quzewv' /* User Added Category */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .override(
                                                                              fontFamily: 'Inter',
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            8.0),
                                                                        child:
                                                                            Text(
                                                                          categoryimgItem,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .headlineSmall
                                                                              .override(
                                                                                fontFamily: 'Sora',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Stack(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          8.0,
                                                                          0.0,
                                                                          8.0),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(24.0),
                                                                        child: Image
                                                                            .asset(
                                                                          'assets/images/new_category.png',
                                                                          width:
                                                                              100.0,
                                                                          height:
                                                                              100.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                          alignment: const Alignment(
                                                                              0.0,
                                                                              0.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              24.0),
                                                                      child: Image
                                                                          .network(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          functions
                                                                              .getDefaultImage(categoryimgItem),
                                                                          '.',
                                                                        ),
                                                                        width:
                                                                            109.0,
                                                                        height:
                                                                            109.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      controller: _model
                                                          .listViewController1,
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                          Builder(
                                            builder: (context) {
                                              final addedItems = FFAppState()
                                                  .foodItem
                                                  .sortedList((e) => e.expiry!)
                                                  .toList();
                                              if (addedItems.isEmpty) {
                                                return const EmptyWidget();
                                              }
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: addedItems.length,
                                                itemBuilder:
                                                    (context, addedItemsIndex) {
                                                  final addedItemsItem =
                                                      addedItems[
                                                          addedItemsIndex];
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 8.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        var foodItemsRecordReference =
                                                            FoodItemsRecord
                                                                .collection
                                                                .doc();
                                                        await foodItemsRecordReference
                                                            .set(
                                                                createFoodItemsRecordData(
                                                          name: addedItemsItem
                                                              .name,
                                                          description:
                                                              valueOrDefault<
                                                                  String>(
                                                            addedItemsItem
                                                                .description,
                                                            'Empty Description',
                                                          ),
                                                          price: valueOrDefault<
                                                              double>(
                                                            addedItemsItem
                                                                .price,
                                                            0.0,
                                                          ),
                                                          category:
                                                              addedItemsItem
                                                                  .category,
                                                          expiry: addedItemsItem
                                                              .expiry,
                                                          donated:
                                                              addedItemsItem
                                                                  .donated,
                                                          quantity:
                                                              valueOrDefault<
                                                                  double>(
                                                            addedItemsItem
                                                                .quantity,
                                                            1.0,
                                                          ),
                                                          image: addedItemsItem
                                                              .img,
                                                        ));
                                                        _model.uploadedentry =
                                                            FoodItemsRecord
                                                                .getDocumentFromData(
                                                                    createFoodItemsRecordData(
                                                                      name: addedItemsItem
                                                                          .name,
                                                                      description:
                                                                          valueOrDefault<
                                                                              String>(
                                                                        addedItemsItem
                                                                            .description,
                                                                        'Empty Description',
                                                                      ),
                                                                      price: valueOrDefault<
                                                                          double>(
                                                                        addedItemsItem
                                                                            .price,
                                                                        0.0,
                                                                      ),
                                                                      category:
                                                                          addedItemsItem
                                                                              .category,
                                                                      expiry: addedItemsItem
                                                                          .expiry,
                                                                      donated:
                                                                          addedItemsItem
                                                                              .donated,
                                                                      quantity:
                                                                          valueOrDefault<
                                                                              double>(
                                                                        addedItemsItem
                                                                            .quantity,
                                                                        1.0,
                                                                      ),
                                                                      image: addedItemsItem
                                                                          .img,
                                                                    ),
                                                                    foodItemsRecordReference);

                                                        context.pushNamed(
                                                          'ItemDetail',
                                                          queryParameters: {
                                                            'currentItem':
                                                                serializeParam(
                                                              _model
                                                                  .uploadedentry,
                                                              ParamType
                                                                  .Document,
                                                            ),
                                                            'index':
                                                                serializeParam(
                                                              addedItemsIndex,
                                                              ParamType.int,
                                                            ),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            'currentItem': _model
                                                                .uploadedentry,
                                                            kTransitionInfoKey:
                                                                const TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .scale,
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                            ),
                                                          },
                                                        );

                                                        setState(() {});
                                                      },
                                                      onLongPress: () async {
                                                        FFAppState()
                                                            .removeFromFoodItem(
                                                                addedItemsItem);
                                                        setState(() {});
                                                      },
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    dateTimeFormat(
                                                                      'relative',
                                                                      addedItemsItem
                                                                          .expiry,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ),
                                                                    'expiry',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          8.0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      addedItemsItem
                                                                          .name,
                                                                      'name',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Sora',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    'AED${addedItemsItem.price.toString()} | ${addedItemsItem.category} | ${addedItemsItem.quantity.toString()}pc/kg',
                                                                    'price | category | quantity',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Sora',
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    addedItemsItem
                                                                        .description,
                                                                    'description',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle:
                                                                            FontStyle.italic,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        8.0,
                                                                        0.0,
                                                                        8.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                              child:
                                                                  Image.network(
                                                                addedItemsItem
                                                                    .img,
                                                                width: 100.0,
                                                                height: 100.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                },
                                                controller:
                                                    _model.listViewController2,
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ).addWalkthrough(
                                  tabBarU6p110go,
                                  _model.thirdController,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TutorialCoachMark createPageWalkthrough(BuildContext context) =>
      TutorialCoachMark(
        targets: createWalkthroughTargets(context),
        onFinish: () async {
          safeSetState(() => _model.thirdController = null);
        },
        onSkip: () {
          return true;
        },
      );
}
