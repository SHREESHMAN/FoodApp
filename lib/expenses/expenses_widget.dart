import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'expenses_model.dart';
export 'expenses_model.dart';

class ExpensesWidget extends StatefulWidget {
  const ExpensesWidget({super.key});

  @override
  State<ExpensesWidget> createState() => _ExpensesWidgetState();
}

class _ExpensesWidgetState extends State<ExpensesWidget>
    with TickerProviderStateMixin {
  late ExpensesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'columnOnPageLoadAnimation': AnimationInfo(
      reverse: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 310.ms,
          duration: 310.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.5, 1.5),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExpensesModel());

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
    final chartPieChartColorsList1 = [
      const Color(0xFF8F46E9),
      const Color(0xFF6F28CB),
      const Color(0xFF2536A4),
      const Color(0xFF4A57C1),
      const Color(0xFF4A57C1),
      const Color(0xFF3E8DD0),
      const Color(0xFF2F1F86),
      const Color(0xFF333EBA),
      const Color(0xFF5C6BF4),
      const Color(0xFF8F5CB5),
      const Color(0xFFA487ED),
      const Color(0xFF6A80C9),
      const Color(0xFF7849BD)
    ];
    final chartPieChartColorsList2 = [
      const Color(0xFF8F46E9),
      const Color(0xFF6F28CB),
      const Color(0xFF2536A4),
      const Color(0xFF4A57C1),
      const Color(0xFF4A57C1),
      const Color(0xFF3E8DD0),
      const Color(0xFF2F1F86),
      const Color(0xFF333EBA),
      const Color(0xFF5C6BF4),
      const Color(0xFF8F5CB5),
      const Color(0xFFA487ED),
      const Color(0xFF6A80C9),
      const Color(0xFF7849BD)
    ];
    final chartPieChartColorsList3 = [
      const Color(0xFF8F46E9),
      const Color(0xFF6F28CB),
      const Color(0xFF2536A4),
      const Color(0xFF4A57C1),
      const Color(0xFF4A57C1),
      const Color(0xFF3E8DD0),
      const Color(0xFF2F1F86),
      const Color(0xFF333EBA),
      const Color(0xFF5C6BF4),
      const Color(0xFF8F5CB5),
      const Color(0xFFA487ED),
      const Color(0xFF6A80C9),
      const Color(0xFF7849BD)
    ];
    final chartPieChartColorsList4 = [
      const Color(0xFF8F46E9),
      const Color(0xFF6F28CB),
      const Color(0xFF2536A4),
      const Color(0xFF4A57C1),
      const Color(0xFF4A57C1),
      const Color(0xFF3E8DD0),
      const Color(0xFF2F1F86),
      const Color(0xFF333EBA),
      const Color(0xFF5C6BF4),
      const Color(0xFF8F5CB5),
      const Color(0xFFA487ED),
      const Color(0xFF6A80C9),
      const Color(0xFF7849BD)
    ];
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Text(
              'Statistics',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Noto Serif',
                    color: Colors.white,
                    fontSize: 24.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w800,
                  ),
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
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 337.0,
                    child: CarouselSlider(
                      items: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Spend Distribution',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: SizedBox(
                                width: double.infinity,
                                height: 500.0,
                                child: Stack(
                                  children: [
                                    FlutterFlowPieChart(
                                      data: FFPieChartData(
                                        values: functions
                                            .getpiedata(
                                                FFAppState().foodItem.toList())
                                            .map((e) => e.price)
                                            .toList(),
                                        colors: chartPieChartColorsList1,
                                        radius: [120.0],
                                        borderWidth: [0.75],
                                        borderColor: [
                                          FlutterFlowTheme.of(context).accent4
                                        ],
                                      ),
                                      donutHoleRadius: 0.0,
                                      donutHoleColor: Colors.transparent,
                                      sectionLabelType:
                                          PieChartSectionLabelType.percent,
                                      sectionLabelStyle:
                                          FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Sora',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                              ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: FlutterFlowChartLegendWidget(
                                        entries: functions
                                            .getpiedata(
                                                FFAppState().foodItem.toList())
                                            .map((e) => e.category)
                                            .toList()
                                            .asMap()
                                            .entries
                                            .map(
                                              (label) => LegendEntry(
                                                chartPieChartColorsList1[
                                                    label.key %
                                                        chartPieChartColorsList1
                                                            .length],
                                                label.value,
                                              ),
                                            )
                                            .toList(),
                                        width: 100.0,
                                        height: 50.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                        textPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                5.0, 0.0, 0.0, 0.0),
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 0.0),
                                        borderWidth: 1.0,
                                        borderColor: Colors.black,
                                        indicatorSize: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Spend Values',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: SizedBox(
                                width: double.infinity,
                                height: 500.0,
                                child: Stack(
                                  children: [
                                    FlutterFlowPieChart(
                                      data: FFPieChartData(
                                        values: functions
                                            .getpiedata(
                                                FFAppState().foodItem.toList())
                                            .map((e) => e.price)
                                            .toList(),
                                        colors: chartPieChartColorsList2,
                                        radius: [120.0],
                                        borderWidth: [0.75],
                                        borderColor: [
                                          FlutterFlowTheme.of(context).accent4
                                        ],
                                      ),
                                      donutHoleRadius: 0.0,
                                      donutHoleColor: Colors.transparent,
                                      sectionLabelType:
                                          PieChartSectionLabelType.value,
                                      sectionLabelStyle:
                                          FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Sora',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                              ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: FlutterFlowChartLegendWidget(
                                        entries: functions
                                            .getpiedata(
                                                FFAppState().foodItem.toList())
                                            .map((e) => e.category)
                                            .toList()
                                            .asMap()
                                            .entries
                                            .map(
                                              (label) => LegendEntry(
                                                chartPieChartColorsList2[
                                                    label.key %
                                                        chartPieChartColorsList2
                                                            .length],
                                                label.value,
                                              ),
                                            )
                                            .toList(),
                                        width: 100.0,
                                        height: 50.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                        textPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                5.0, 0.0, 0.0, 0.0),
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 0.0),
                                        borderWidth: 1.0,
                                        borderColor: Colors.black,
                                        indicatorSize: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Individual Costs',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: SizedBox(
                                width: double.infinity,
                                height: 500.0,
                                child: Stack(
                                  children: [
                                    FlutterFlowPieChart(
                                      data: FFPieChartData(
                                        values: FFAppState()
                                            .foodItem
                                            .map((e) => e.price)
                                            .toList(),
                                        colors: chartPieChartColorsList3,
                                        radius: [120.0],
                                        borderWidth: [0.75],
                                        borderColor: [
                                          FlutterFlowTheme.of(context).accent4
                                        ],
                                      ),
                                      donutHoleRadius: 0.0,
                                      donutHoleColor: Colors.transparent,
                                      sectionLabelType:
                                          PieChartSectionLabelType.value,
                                      sectionLabelStyle:
                                          FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Sora',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                              ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: FlutterFlowChartLegendWidget(
                                        entries: FFAppState()
                                            .foodItem
                                            .map((e) => e.name)
                                            .toList()
                                            .asMap()
                                            .entries
                                            .map(
                                              (label) => LegendEntry(
                                                chartPieChartColorsList3[
                                                    label.key %
                                                        chartPieChartColorsList3
                                                            .length],
                                                label.value,
                                              ),
                                            )
                                            .toList(),
                                        width: 100.0,
                                        height: 50.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                        textPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                5.0, 0.0, 0.0, 0.0),
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 0.0),
                                        borderWidth: 1.0,
                                        borderColor: Colors.black,
                                        indicatorSize: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Quantity Distribution',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    fontSize: 23.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 500.0,
                                  child: Stack(
                                    children: [
                                      FlutterFlowPieChart(
                                        data: FFPieChartData(
                                          values: FFAppState()
                                              .foodItem
                                              .map((e) => e.quantity)
                                              .toList(),
                                          colors: chartPieChartColorsList4,
                                          radius: [120.0],
                                          borderWidth: [0.75],
                                          borderColor: [
                                            FlutterFlowTheme.of(context).accent4
                                          ],
                                        ),
                                        donutHoleRadius: 0.0,
                                        donutHoleColor: Colors.transparent,
                                        sectionLabelType:
                                            PieChartSectionLabelType.value,
                                        sectionLabelStyle: FlutterFlowTheme.of(
                                                context)
                                            .headlineSmall
                                            .override(
                                              fontFamily: 'Sora',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 1.0),
                                        child: FlutterFlowChartLegendWidget(
                                          entries: FFAppState()
                                              .foodItem
                                              .map((e) => e.name)
                                              .toList()
                                              .asMap()
                                              .entries
                                              .map(
                                                (label) => LegendEntry(
                                                  chartPieChartColorsList4[label
                                                          .key %
                                                      chartPieChartColorsList4
                                                          .length],
                                                  label.value,
                                                ),
                                              )
                                              .toList(),
                                          width: 100.0,
                                          height: 50.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                          textPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 0.0, 0.0),
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 0.0),
                                          borderWidth: 1.0,
                                          borderColor: Colors.black,
                                          indicatorSize: 15.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                      carouselController: _model.carouselController ??=
                          CarouselController(),
                      options: CarouselOptions(
                        initialPage: 2,
                        viewportFraction: 0.55,
                        disableCenter: true,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.5,
                        enableInfiniteScroll: true,
                        scrollDirection: Axis.horizontal,
                        autoPlay: true,
                        autoPlayAnimationDuration: const Duration(milliseconds: 800),
                        autoPlayInterval: const Duration(milliseconds: (800 + 4000)),
                        autoPlayCurve: Curves.linear,
                        pauseAutoPlayInFiniteScroll: true,
                        onPageChanged: (index, _) =>
                            _model.carouselCurrentIndex = index,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!),
        ),
      ),
    );
  }
}
