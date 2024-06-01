import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/complete/components/empty/empty_widget.dart';
import '/complete/helpful_tip/helpful_tip_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_media_display.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/walkthroughs/first.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flip_card/flip_card.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'homescreen_model.dart';
export 'homescreen_model.dart';

class HomescreenWidget extends StatefulWidget {
  const HomescreenWidget({
    super.key,
    int? oneH,
    int? twoH,
    double? size,
    this.fill,
    this.border,
    int? width,
    int? radius,
  })  : oneH = oneH ?? 120,
        twoH = twoH ?? 160,
        size = size ?? 40.0,
        width = width ?? 1,
        radius = radius ?? 10;

  final int oneH;
  final int twoH;
  final double size;
  final Color? fill;
  final Color? border;
  final int width;
  final int radius;

  @override
  State<HomescreenWidget> createState() => _HomescreenWidgetState();
}

class _HomescreenWidgetState extends State<HomescreenWidget>
    with TickerProviderStateMixin {
  late HomescreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomescreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().queryusers =
          FFAppState().foodItem.toList().cast<FoodItemStruct>();
      setState(() {});
      if (!functions.tutdone(FFAppState().tutorialsdone.toList(), 1)) {
        safeSetState(
            () => _model.firstController = createPageWalkthrough(context));
        _model.firstController?.show(context: context);
        FFAppState().addToTutorialsdone(1);
        setState(() {});
      }
    });

    animationsMap.addAll({
      'iconButtonOnPageLoadAnimation': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.2, 1.1),
          ),
        ],
      ),
      'helpfulTipOnPageLoadAnimation': AnimationInfo(
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(18.0, 0.0),
          ),
        ],
      ),
    });

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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.person_sharp,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed(
                'profile',
                extra: <String, dynamic>{
                  kTransitionInfoKey: const TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.topToBottom,
                    duration: Duration(milliseconds: 500),
                  ),
                },
              );
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              '5oo64cjh' /* Dashboard */,
            ),
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Sora',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 3.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => AutoSizeText(
                          'Hey $currentUserDisplayName!',
                          textAlign: TextAlign.start,
                          maxLines: 2,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Open Sans Condensed',
                                    fontSize: 44.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                          minFontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 15.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).tertiary,
                            borderRadius: 10.0,
                            borderWidth: 1.0,
                            buttonSize: 50.0,
                            fillColor:
                                FlutterFlowTheme.of(context).customColor1,
                            icon: FaIcon(
                              FontAwesomeIcons.gift,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 34.0,
                            ),
                            onPressed: () async {
                              context.pushNamed(
                                'tests',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.scale,
                                    alignment: Alignment.bottomCenter,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                },
                              );
                            },
                          ).animateOnPageLoad(
                              animationsMap['iconButtonOnPageLoadAnimation']!),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 15.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).tertiary,
                            borderRadius: 10.0,
                            borderWidth: 1.0,
                            buttonSize: 50.0,
                            fillColor: FlutterFlowTheme.of(context).accent3,
                            icon: Icon(
                              Icons.shopping_cart,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 34.0,
                            ),
                            onPressed: () async {
                              context.pushNamed(
                                'foodcart',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.scale,
                                    alignment: Alignment.bottomCenter,
                                    duration: Duration(milliseconds: 500),
                                  ),
                                },
                              );
                            },
                          ).addWalkthrough(
                            iconButtonG5vao9p6,
                            _model.firstController,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              wrapWithModel(
                model: _model.helpfulTipModel,
                updateCallback: () => setState(() {}),
                child: const HelpfulTipWidget(),
              ).animateOnPageLoad(
                  animationsMap['helpfulTipOnPageLoadAnimation']!),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          2.0,
                        ),
                        spreadRadius: 5.0,
                      )
                    ],
                    gradient: LinearGradient(
                      colors: [
                        FlutterFlowTheme.of(context).secondaryBackground,
                        FlutterFlowTheme.of(context).customColor1
                      ],
                      stops: const [0.0, 1.0],
                      begin: const AlignmentDirectional(1.0, 0.0),
                      end: const AlignmentDirectional(-1.0, 0),
                    ),
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: valueOrDefault<Color>(
                              widget.border,
                              FlutterFlowTheme.of(context).primary,
                            ),
                            borderRadius: 30.0,
                            borderWidth: widget.width.toDouble(),
                            buttonSize: widget.size,
                            fillColor: valueOrDefault<Color>(
                              widget.fill,
                              FlutterFlowTheme.of(context).secondary,
                            ),
                            icon: Icon(
                              Icons.refresh_sharp,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              FFAppState().queryusers = FFAppState()
                                  .foodItem
                                  .toList()
                                  .cast<FoodItemStruct>();
                              setState(() {});
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: valueOrDefault<Color>(
                              widget.border,
                              FlutterFlowTheme.of(context).primary,
                            ),
                            borderRadius: widget.radius.toDouble(),
                            borderWidth: widget.width.toDouble(),
                            buttonSize: widget.size,
                            fillColor: valueOrDefault<Color>(
                              widget.fill,
                              FlutterFlowTheme.of(context).secondary,
                            ),
                            icon: FaIcon(
                              FontAwesomeIcons.breadSlice,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              FFAppState().queryusers = FFAppState()
                                  .foodItem
                                  .where((e) => e.category == 'Bread')
                                  .toList()
                                  .cast<FoodItemStruct>();
                              setState(() {});
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: valueOrDefault<Color>(
                              widget.border,
                              FlutterFlowTheme.of(context).primary,
                            ),
                            borderRadius: widget.radius.toDouble(),
                            borderWidth: widget.width.toDouble(),
                            buttonSize: widget.size,
                            fillColor: valueOrDefault<Color>(
                              widget.fill,
                              FlutterFlowTheme.of(context).secondary,
                            ),
                            icon: FaIcon(
                              FontAwesomeIcons.glassWhiskey,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              FFAppState().queryusers = FFAppState()
                                  .foodItem
                                  .where((e) => e.category == 'Milk')
                                  .toList()
                                  .cast<FoodItemStruct>();
                              setState(() {});
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: valueOrDefault<Color>(
                              widget.border,
                              FlutterFlowTheme.of(context).primary,
                            ),
                            borderRadius: widget.radius.toDouble(),
                            borderWidth: widget.width.toDouble(),
                            buttonSize: widget.size,
                            fillColor: valueOrDefault<Color>(
                              widget.fill,
                              FlutterFlowTheme.of(context).secondary,
                            ),
                            icon: FaIcon(
                              FontAwesomeIcons.cheese,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              FFAppState().queryusers = FFAppState()
                                  .foodItem
                                  .where((e) => e.category == 'Cheese')
                                  .toList()
                                  .cast<FoodItemStruct>();
                              setState(() {});
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: valueOrDefault<Color>(
                              widget.border,
                              FlutterFlowTheme.of(context).primary,
                            ),
                            borderRadius: widget.radius.toDouble(),
                            borderWidth: widget.width.toDouble(),
                            buttonSize: widget.size,
                            fillColor: valueOrDefault<Color>(
                              widget.fill,
                              FlutterFlowTheme.of(context).secondary,
                            ),
                            icon: FaIcon(
                              FontAwesomeIcons.drumstickBite,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              FFAppState().queryusers = FFAppState()
                                  .foodItem
                                  .where((e) => e.category == 'Chicken')
                                  .toList()
                                  .cast<FoodItemStruct>();
                              setState(() {});
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: valueOrDefault<Color>(
                              widget.border,
                              FlutterFlowTheme.of(context).primary,
                            ),
                            borderRadius: widget.radius.toDouble(),
                            borderWidth: widget.width.toDouble(),
                            buttonSize: widget.size,
                            fillColor: valueOrDefault<Color>(
                              widget.fill,
                              FlutterFlowTheme.of(context).secondary,
                            ),
                            icon: FaIcon(
                              FontAwesomeIcons.bacon,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              FFAppState().queryusers = FFAppState()
                                  .foodItem
                                  .where((e) => e.category == 'Meat')
                                  .toList()
                                  .cast<FoodItemStruct>();
                              setState(() {});
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: valueOrDefault<Color>(
                              widget.border,
                              FlutterFlowTheme.of(context).primary,
                            ),
                            borderRadius: widget.radius.toDouble(),
                            borderWidth: widget.width.toDouble(),
                            buttonSize: widget.size,
                            fillColor: valueOrDefault<Color>(
                              widget.fill,
                              FlutterFlowTheme.of(context).secondary,
                            ),
                            icon: Icon(
                              Icons.apple_outlined,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              FFAppState().queryusers = FFAppState()
                                  .foodItem
                                  .where((e) => e.category == 'Fruit')
                                  .toList()
                                  .cast<FoodItemStruct>();
                              setState(() {});
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: valueOrDefault<Color>(
                              widget.border,
                              FlutterFlowTheme.of(context).primary,
                            ),
                            borderRadius: widget.radius.toDouble(),
                            borderWidth: widget.width.toDouble(),
                            buttonSize: widget.size,
                            fillColor: valueOrDefault<Color>(
                              widget.fill,
                              FlutterFlowTheme.of(context).secondary,
                            ),
                            icon: FaIcon(
                              FontAwesomeIcons.carrot,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              FFAppState().queryusers = FFAppState()
                                  .foodItem
                                  .where((e) => e.category == 'Vegetable')
                                  .toList()
                                  .cast<FoodItemStruct>();
                              setState(() {});
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).tertiary,
                            borderRadius: 5.0,
                            borderWidth: widget.width.toDouble(),
                            buttonSize: widget.size,
                            fillColor: FlutterFlowTheme.of(context).accent3,
                            icon: FaIcon(
                              FontAwesomeIcons.cubes,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              FFAppState().queryusers = FFAppState()
                                  .foodItem
                                  .where((e) =>
                                      functions
                                          .isdefault(valueOrDefault<String>(
                                        e.category,
                                        'xyz',
                                      )) ==
                                      0)
                                  .toList()
                                  .cast<FoodItemStruct>();
                              setState(() {});
                            },
                          ),
                        ]
                            .divide(const SizedBox(width: 25.0))
                            .addToStart(const SizedBox(width: 10.0))
                            .addToEnd(const SizedBox(width: 10.0)),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        '9d0oo084' /* Click your items to check thei... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Builder(
                  builder: (context) {
                    final pulleditem = FFAppState()
                        .queryusers
                        .sortedList((e) => e.expiry!)
                        .toList();
                    if (pulleditem.isEmpty) {
                      return Center(
                        child: SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.5,
                          child: const EmptyWidget(),
                        ),
                      );
                    }
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: pulleditem.length,
                      itemBuilder: (context, pulleditemIndex) {
                        final pulleditemItem = pulleditem[pulleditemIndex];
                        return Builder(
                          builder: (context) {
                            if ((pulleditemIndex + 1) % 3 == 0) {
                              return Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: FlipCard(
                                  fill: Fill.fillBack,
                                  direction: FlipDirection.VERTICAL,
                                  speed: 400,
                                  front: Material(
                                    color: Colors.transparent,
                                    elevation: 35.0,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(12.0),
                                        bottomRight: Radius.circular(12.0),
                                        topLeft: Radius.circular(12.0),
                                        topRight: Radius.circular(12.0),
                                      ),
                                    ),
                                    child: Container(
                                      width: 100.0,
                                      height: widget.oneH.toDouble(),
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 10.0,
                                            color: Color(0x33000000),
                                            offset: Offset(
                                              0.0,
                                              2.0,
                                            ),
                                            spreadRadius: 10.0,
                                          )
                                        ],
                                        gradient: LinearGradient(
                                          colors: [
                                            FlutterFlowTheme.of(context)
                                                .accent3,
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            FlutterFlowTheme.of(context).accent3
                                          ],
                                          stops: const [0.0, 0.5, 1.0],
                                          begin: const AlignmentDirectional(1.0, 1.0),
                                          end: const AlignmentDirectional(-1.0, -1.0),
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(12.0),
                                          bottomRight: Radius.circular(12.0),
                                          topLeft: Radius.circular(12.0),
                                          topRight: Radius.circular(12.0),
                                        ),
                                        border: Border.all(
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Flexible(
                                            child: Padding(
                                              padding: const EdgeInsets.all(5.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  pulleditemItem.img,
                                                  width: 130.0,
                                                  height: 130.0,
                                                  fit: BoxFit.cover,
                                                  errorBuilder: (context, error,
                                                          stackTrace) =>
                                                      Image.asset(
                                                    'assets/images/error_image.png',
                                                    width: 130.0,
                                                    height: 130.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text(
                                                  valueOrDefault<String>(
                                                    pulleditemItem.name,
                                                    'Name',
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    pulleditemItem.quantity
                                                        .toString(),
                                                    'Qty',
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    dateTimeFormat(
                                                      'relative',
                                                      pulleditemItem.expiry,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                    'expiry',
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            const Color(0xFFFF000F),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  back: Container(
                                    width: 100.0,
                                    height: widget.oneH.toDouble(),
                                    decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x33000000),
                                          offset: Offset(
                                            0.0,
                                            2.0,
                                          ),
                                        )
                                      ],
                                      gradient: LinearGradient(
                                        colors: [
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          const Color(0xFF673AB7),
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                        ],
                                        stops: const [0.0, 0.5, 1.0],
                                        begin: const AlignmentDirectional(1.0, -1.0),
                                        end: const AlignmentDirectional(-1.0, 1.0),
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(12.0),
                                        bottomRight: Radius.circular(12.0),
                                        topLeft: Radius.circular(12.0),
                                        topRight: Radius.circular(12.0),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              'Donation Status: ${valueOrDefault<String>(
                                                pulleditemItem.donated
                                                    ? 'Donated'
                                                    : 'In Cart',
                                                'Status',
                                              )}',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Oswald',
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(1.0, 0.0),
                                            child: FlutterFlowMediaDisplay(
                                              path:
                                                  'https://media1.giphy.com/media/vqc9PEoVvX9ZNVS3bt/giphy.gif',
                                              imageBuilder: (path) => ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  path,
                                                  width: 100.0,
                                                  height: 100.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              videoPlayerBuilder: (path) =>
                                                  FlutterFlowVideoPlayer(
                                                path: path,
                                                width: 300.0,
                                                autoPlay: true,
                                                looping: true,
                                                showControls: false,
                                                allowFullScreen: false,
                                                allowPlaybackSpeedMenu: false,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            } else if ((pulleditemIndex) % 3 == 0) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: FlipCard(
                                        fill: Fill.fillBack,
                                        direction: FlipDirection.HORIZONTAL,
                                        speed: 400,
                                        front: Container(
                                          width: 100.0,
                                          height: widget.twoH.toDouble(),
                                          decoration: const BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(12.0),
                                              bottomRight:
                                                  Radius.circular(12.0),
                                              topLeft: Radius.circular(12.0),
                                              topRight: Radius.circular(12.0),
                                            ),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 2.0, 0.0),
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 35.0,
                                                    shape:
                                                        const RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                12.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                12.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                12.0),
                                                        topRight:
                                                            Radius.circular(
                                                                12.0),
                                                      ),
                                                    ),
                                                    child: Container(
                                                      width: 100.0,
                                                      height: widget.twoH
                                                          .toDouble(),
                                                      decoration: BoxDecoration(
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            blurRadius: 4.0,
                                                            color: Color(
                                                                0x33000000),
                                                            offset: Offset(
                                                              0.0,
                                                              2.0,
                                                            ),
                                                          )
                                                        ],
                                                        gradient:
                                                            LinearGradient(
                                                          colors: [
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiary,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground
                                                          ],
                                                          stops: const [0.0, 1.0],
                                                          begin:
                                                              const AlignmentDirectional(
                                                                  1.0, -0.5),
                                                          end:
                                                              const AlignmentDirectional(
                                                                  -1.0, 0.5),
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  12.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  12.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  12.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  12.0),
                                                        ),
                                                        border: Border.all(
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.all(2.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              flex: 1,
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                  children: [
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: Image
                                                                          .network(
                                                                        pulleditemItem
                                                                            .img,
                                                                        width:
                                                                            100.0,
                                                                        height:
                                                                            100.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        '${valueOrDefault<String>(
                                                                          FFAppState()
                                                                              .foodItem[pulleditemIndex]
                                                                              .name,
                                                                          'Name',
                                                                        )} | ${valueOrDefault<String>(
                                                                          FFAppState()
                                                                              .foodItem[pulleditemIndex]
                                                                              .quantity
                                                                              .toString(),
                                                                          'Qty.',
                                                                        )}',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Inter',
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          dateTimeFormat(
                                                                            'relative',
                                                                            FFAppState().foodItem[pulleditemIndex].expiry,
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          ),
                                                                          'expiry',
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Inter',
                                                                              color: const Color(0xFFFF0000),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.bold,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        back: Container(
                                          width: 100.0,
                                          height: widget.twoH.toDouble(),
                                          decoration: BoxDecoration(
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  0.0,
                                                  2.0,
                                                ),
                                              )
                                            ],
                                            gradient: LinearGradient(
                                              colors: [
                                                const Color(0x8CF83B46),
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                                const Color(0x8CF83B46)
                                              ],
                                              stops: const [0.0, 0.5, 1.0],
                                              begin: const AlignmentDirectional(
                                                  1.0, -1.0),
                                              end: const AlignmentDirectional(
                                                  -1.0, 1.0),
                                            ),
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(12.0),
                                              bottomRight:
                                                  Radius.circular(12.0),
                                              topLeft: Radius.circular(12.0),
                                              topRight: Radius.circular(12.0),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Donation Status: ${valueOrDefault<String>(
                                                      pulleditemItem.donated
                                                          ? 'Donated'
                                                          : 'In Cart',
                                                      'Status',
                                                    )}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Oswald',
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child:
                                                      FlutterFlowMediaDisplay(
                                                    path:
                                                        'https://media1.giphy.com/media/vqc9PEoVvX9ZNVS3bt/giphy.gif',
                                                    imageBuilder: (path) =>
                                                        ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.network(
                                                        path,
                                                        width: 100.0,
                                                        height: 100.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    videoPlayerBuilder: (path) =>
                                                        FlutterFlowVideoPlayer(
                                                      path: path,
                                                      width: 300.0,
                                                      autoPlay: true,
                                                      looping: true,
                                                      showControls: false,
                                                      allowFullScreen: false,
                                                      allowPlaybackSpeedMenu:
                                                          false,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    if ((int var1, int var2) {
                                      return var1 + 1 <= var2;
                                    }(
                                        pulleditemIndex,
                                        functions.lastItem(
                                            FFAppState().foodItem.toList())))
                                      Expanded(
                                        flex: 1,
                                        child: FlipCard(
                                          fill: Fill.fillBack,
                                          direction: FlipDirection.HORIZONTAL,
                                          speed: 400,
                                          front: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    2.0, 0.0, 0.0, 0.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 35.0,
                                              shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(12.0),
                                                  bottomRight:
                                                      Radius.circular(12.0),
                                                  topLeft:
                                                      Radius.circular(12.0),
                                                  topRight:
                                                      Radius.circular(12.0),
                                                ),
                                              ),
                                              child: Container(
                                                width: 100.0,
                                                height: valueOrDefault<double>(
                                                  widget.twoH.toDouble(),
                                                  160.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.transparent,
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(12.0),
                                                    bottomRight:
                                                        Radius.circular(12.0),
                                                    topLeft:
                                                        Radius.circular(12.0),
                                                    topRight:
                                                        Radius.circular(12.0),
                                                  ),
                                                  shape: BoxShape.rectangle,
                                                  border: Border.all(
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      flex: 1,
                                                      child: Container(
                                                        width: 100.0,
                                                        height: widget.twoH
                                                            .toDouble(),
                                                        decoration:
                                                            BoxDecoration(
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 4.0,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset: Offset(
                                                                0.0,
                                                                2.0,
                                                              ),
                                                            )
                                                          ],
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .tertiary,
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryBackground
                                                            ],
                                                            stops: const [0.0, 1.0],
                                                            begin:
                                                                const AlignmentDirectional(
                                                                    -1.0, 0.5),
                                                            end:
                                                                const AlignmentDirectional(
                                                                    1.0, -0.5),
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    12.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    12.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    12.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    12.0),
                                                          ),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.network(
                                                                FFAppState()
                                                                    .foodItem[
                                                                        pulleditemIndex +
                                                                            1]
                                                                    .img,
                                                                width: 100.0,
                                                                height: 100.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            Text(
                                                              '${valueOrDefault<String>(
                                                                FFAppState()
                                                                    .foodItem[
                                                                        pulleditemIndex +
                                                                            1]
                                                                    .name,
                                                                'Name',
                                                              )} | ${valueOrDefault<String>(
                                                                FFAppState()
                                                                    .foodItem[
                                                                        pulleditemIndex +
                                                                            1]
                                                                    .quantity
                                                                    .toString(),
                                                                'Qty. ',
                                                              )}',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  dateTimeFormat(
                                                                    'relative',
                                                                    FFAppState()
                                                                        .foodItem[
                                                                            pulleditemIndex +
                                                                                1]
                                                                        .expiry,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  'expiry',
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      color: const Color(
                                                                          0xFFFF0000),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          back: Container(
                                            width: 100.0,
                                            height: widget.twoH.toDouble(),
                                            decoration: BoxDecoration(
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: Color(0x33000000),
                                                  offset: Offset(
                                                    0.0,
                                                    2.0,
                                                  ),
                                                )
                                              ],
                                              gradient: LinearGradient(
                                                colors: [
                                                  const Color(0x8CF83B46),
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                                  const Color(0x8CF83B46)
                                                ],
                                                stops: const [0.0, 0.5, 1.0],
                                                begin: const AlignmentDirectional(
                                                    1.0, -1.0),
                                                end: const AlignmentDirectional(
                                                    -1.0, 1.0),
                                              ),
                                              borderRadius: const BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(12.0),
                                                bottomRight:
                                                    Radius.circular(12.0),
                                                topLeft: Radius.circular(12.0),
                                                topRight: Radius.circular(12.0),
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Expanded(
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Donation Status: ${valueOrDefault<String>(
                                                        FFAppState()
                                                                .foodItem[
                                                                    pulleditemIndex +
                                                                        1]
                                                                .donated
                                                            ? 'Donated'
                                                            : 'In Cart',
                                                        'Status',
                                                      )}',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Oswald',
                                                            fontSize: 20.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child:
                                                        FlutterFlowMediaDisplay(
                                                      path:
                                                          'https://media1.giphy.com/media/vqc9PEoVvX9ZNVS3bt/giphy.gif',
                                                      imageBuilder: (path) =>
                                                          ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          path,
                                                          width: 100.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      videoPlayerBuilder: (path) =>
                                                          FlutterFlowVideoPlayer(
                                                        path: path,
                                                        width: 300.0,
                                                        autoPlay: true,
                                                        looping: true,
                                                        showControls: false,
                                                        allowFullScreen: false,
                                                        allowPlaybackSpeedMenu:
                                                            false,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                  ].divide(const SizedBox(width: 10.0)),
                                ),
                              );
                            } else {
                              return const Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [],
                              );
                            }
                          },
                        );
                      },
                    ).addWalkthrough(
                      listViewSk5ljdw1,
                      _model.firstController,
                    );
                  },
                ),
              ),
            ].addToStart(const SizedBox(height: 5.0)),
          ),
        ),
      ),
    );
  }

  TutorialCoachMark createPageWalkthrough(BuildContext context) =>
      TutorialCoachMark(
        targets: createWalkthroughTargets(context),
        onFinish: () async {
          safeSetState(() => _model.firstController = null);
        },
        onSkip: () {
          return true;
        },
      );
}
