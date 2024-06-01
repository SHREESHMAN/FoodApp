import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'tttt_model.dart';
export 'tttt_model.dart';

class TtttWidget extends StatefulWidget {
  const TtttWidget({super.key});

  @override
  State<TtttWidget> createState() => _TtttWidgetState();
}

class _TtttWidgetState extends State<TtttWidget> {
  late TtttModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TtttModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
          title: Text(
            FFLocalizations.of(context).getText(
              '43sl6tau' /* Page Title */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Sora',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              BarcodeWidget(
                data: 'Barcode',
                barcode: Barcode.code128(),
                width: 300.0,
                height: 90.0,
                color: FlutterFlowTheme.of(context).primaryText,
                backgroundColor: Colors.transparent,
                errorBuilder: (context, error) => const SizedBox(
                  width: 300.0,
                  height: 90.0,
                ),
                drawText: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
