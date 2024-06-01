import '/backend/schema/structs/index.dart';
import '/complete/components/blocked/blocked_widget.dart';
import '/complete/components/empty/empty_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExpensesModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().queryusers =
          FFAppState().foodItem.toList().cast<FoodItemStruct>();
      setState(() {});
      if (FFAppState().foodItem.isEmpty) {
        await showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          isDismissible: false,
          context: context,
          builder: (context) {
            return GestureDetector(
              onTap: () => _model.unfocusNode.canRequestFocus
                  ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                  : FocusScope.of(context).unfocus(),
              child: Padding(
                padding: MediaQuery.viewInsetsOf(context),
                child: const BlockedWidget(
                  display:
                      'You havent added any items yet, add some items to see stats here. Happy Saving!',
                ),
              ),
            );
          },
        ).then((value) => safeSetState(() {}));

        context.goNamed(
          'homescreen',
          extra: <String, dynamic>{
            kTransitionInfoKey: const TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
              duration: Duration(milliseconds: 500),
            ),
          },
        );
      }
    });

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 310.0.ms,
            duration: 310.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.5, 1.5),
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
              FFLocalizations.of(context).getText(
                '10p0k4nh' /* Statistics */,
              ),
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
                              FFLocalizations.of(context).getText(
                                'xf5iom5j' /* Spend Distribution */,
                              ),
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
                                        height: 70.0,
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
                                        borderWidth: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        indicatorSize: 15.0,
                                        indicatorBorderRadius:
                                            const BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(9.0),
                                          topLeft: Radius.circular(9.0),
                                          topRight: Radius.circular(0.0),
                                        ),
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
                              FFLocalizations.of(context).getText(
                                'bb25ybab' /* Spent Value Catogries */,
                              ),
                              textAlign: TextAlign.center,
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
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        indicatorSize: 15.0,
                                        indicatorBorderRadius:
                                            const BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(9.0),
                                          topLeft: Radius.circular(9.0),
                                          topRight: Radius.circular(0.0),
                                        ),
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
                              FFLocalizations.of(context).getText(
                                '7ni0eozg' /* Individual Costs */,
                              ),
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
                              alignment: const AlignmentDirectional(0.0, 0.0),
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
                                        height: 3.0,
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
                                        borderWidth: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        indicatorSize: 15.0,
                                        indicatorBorderRadius:
                                            const BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(9.0),
                                          topLeft: Radius.circular(9.0),
                                          topRight: Radius.circular(0.0),
                                        ),
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
                              FFLocalizations.of(context).getText(
                                'nb2wpxjm' /* Quantity Distribution */,
                              ),
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
                                        labelFormatter: LabelFormatter(
                                          numberFormat: (val) => formatNumber(
                                            val,
                                            formatType: FormatType.custom,
                                            format: '',
                                            locale: '',
                                          ),
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
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          indicatorSize: 15.0,
                                          indicatorBorderRadius:
                                              const BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(9.0),
                                            topLeft: Radius.circular(9.0),
                                            topRight: Radius.circular(0.0),
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
                        Container(
                          decoration: const BoxDecoration(),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 30.0, 0.0, 0.0),
                                child: Builder(
                                  builder: (context) {
                                    final item =
                                        FFAppState().queryusers.toList();
                                    if (item.isEmpty) {
                                      return const EmptyWidget();
                                    }
                                    return FlutterFlowDataTable<FoodItemStruct>(
                                      controller:
                                          _model.paginatedDataTableController,
                                      data: item,
                                      columnsBuilder: (onSortChanged) => [
                                        DataColumn2(
                                          label: DefaultTextStyle.merge(
                                            softWrap: true,
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '0hml7c54' /* Name */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        DataColumn2(
                                          label: DefaultTextStyle.merge(
                                            softWrap: true,
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '9jv6n4r9' /* Qty */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        DataColumn2(
                                          label: DefaultTextStyle.merge(
                                            softWrap: true,
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'mlxwhgx0' /* Price */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        DataColumn2(
                                          label: DefaultTextStyle.merge(
                                            softWrap: true,
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'hohiyepg' /* Cart */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                      dataRowBuilder: (itemItem, itemIndex,
                                              selected, onSelectChanged) =>
                                          DataRow(
                                        color: MaterialStateProperty.all(
                                          itemIndex % 2 == 0
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryBackground
                                              : FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                        ),
                                        cells: [
                                          Text(
                                            valueOrDefault<String>(
                                              itemItem.name,
                                              'Name',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              itemItem.quantity.toString(),
                                              'Qty.',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onLongPress: () async {
                                              FFAppState()
                                                  .removeFromFoodItem(itemItem);
                                              setState(() {});
                                            },
                                            child: Text(
                                              valueOrDefault<String>(
                                                formatNumber(
                                                  itemItem.price,
                                                  formatType: FormatType.custom,
                                                  format: 'AED #',
                                                  locale: '',
                                                ),
                                                'AED 0',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                          Theme(
                                            data: ThemeData(
                                              checkboxTheme: CheckboxThemeData(
                                                visualDensity:
                                                    VisualDensity.standard,
                                                materialTapTargetSize:
                                                    MaterialTapTargetSize
                                                        .padded,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                              ),
                                              unselectedWidgetColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                            child: Checkbox(
                                              value: _model.checkboxValueMap[
                                                      itemItem] ??=
                                                  !itemItem.donated,
                                              onChanged: true
                                                  ? null
                                                  : (newValue) async {
                                                      setState(() => _model
                                                              .checkboxValueMap[
                                                          itemItem] = newValue!);
                                                    },
                                              side: BorderSide(
                                                width: 2,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                              ),
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              checkColor: true
                                                  ? null
                                                  : FlutterFlowTheme.of(context)
                                                      .info,
                                            ),
                                          ),
                                        ].map((c) => DataCell(c)).toList(),
                                      ),
                                      emptyBuilder: () => const EmptyWidget(),
                                      paginated: true,
                                      selectable: false,
                                      hidePaginator: false,
                                      showFirstLastButtons: true,
                                      width: double.infinity,
                                      headingRowHeight: 56.0,
                                      dataRowHeight: 48.0,
                                      columnSpacing: 2.0,
                                      headingRowColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                      borderRadius: BorderRadius.circular(8.0),
                                      addHorizontalDivider: true,
                                      addTopAndBottomDivider: false,
                                      hideDefaultHorizontalDivider: true,
                                      horizontalDividerColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      horizontalDividerThickness: 1.0,
                                      addVerticalDivider: false,
                                    );
                                  },
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, -1.0),
                                    child: FlutterFlowIconButton(
                                      borderColor:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: 10.0,
                                      borderWidth: 1.0,
                                      buttonSize: 30.0,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondary,
                                      icon: Icon(
                                        Icons.timer,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 15.0,
                                      ),
                                      onPressed: () async {
                                        FFAppState().queryusers = FFAppState()
                                            .foodItem
                                            .where((e) =>
                                                e.expiry! <=
                                                getCurrentTimestamp)
                                            .toList()
                                            .cast<FoodItemStruct>();
                                        setState(() {});
                                      },
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, -1.0),
                                    child: FlutterFlowIconButton(
                                      borderColor:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: 10.0,
                                      borderWidth: 1.0,
                                      buttonSize: 30.0,
                                      fillColor:
                                          FlutterFlowTheme.of(context).accent1,
                                      icon: FaIcon(
                                        FontAwesomeIcons.sortAlphaDown,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 15.0,
                                      ),
                                      onPressed: () async {
                                        FFAppState().queryusers = FFAppState()
                                            .foodItem
                                            .sortedList((e) => e.name)
                                            .toList()
                                            .cast<FoodItemStruct>();
                                        setState(() {});
                                      },
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, -1.0),
                                    child: FlutterFlowIconButton(
                                      borderColor:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: 10.0,
                                      borderWidth: 1.0,
                                      buttonSize: 30.0,
                                      fillColor:
                                          FlutterFlowTheme.of(context).accent1,
                                      icon: FaIcon(
                                        FontAwesomeIcons.dollarSign,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 15.0,
                                      ),
                                      onPressed: () async {
                                        FFAppState().queryusers = FFAppState()
                                            .foodItem
                                            .sortedList((e) => e.price)
                                            .toList()
                                            .cast<FoodItemStruct>();
                                        setState(() {});
                                      },
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, -1.0),
                                    child: FlutterFlowIconButton(
                                      borderColor:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: 10.0,
                                      borderWidth: 1.0,
                                      buttonSize: 30.0,
                                      fillColor:
                                          FlutterFlowTheme.of(context).accent1,
                                      icon: Icon(
                                        Icons.numbers_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 15.0,
                                      ),
                                      onPressed: () async {
                                        FFAppState().queryusers = FFAppState()
                                            .foodItem
                                            .sortedList((e) => e.quantity)
                                            .toList()
                                            .cast<FoodItemStruct>();
                                        setState(() {});
                                      },
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, -1.0),
                                    child: FlutterFlowIconButton(
                                      borderColor:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: 10.0,
                                      borderWidth: 1.0,
                                      buttonSize: 30.0,
                                      fillColor:
                                          FlutterFlowTheme.of(context).accent1,
                                      icon: Icon(
                                        Icons.shopping_basket_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 15.0,
                                      ),
                                      onPressed: () async {
                                        FFAppState().queryusers = FFAppState()
                                            .foodItem
                                            .where((e) => !e.donated)
                                            .toList()
                                            .cast<FoodItemStruct>();
                                        setState(() {});
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
