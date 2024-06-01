import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'wt1_model.dart';
export 'wt1_model.dart';

class Wt1Widget extends StatefulWidget {
  const Wt1Widget({
    super.key,
    String? display,
  }) : display = display ?? 'Check this out!';

  final String display;

  @override
  State<Wt1Widget> createState() => _Wt1WidgetState();
}

class _Wt1WidgetState extends State<Wt1Widget> {
  late Wt1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Wt1Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
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
            FlutterFlowTheme.of(context).tertiary,
            FlutterFlowTheme.of(context).secondary
          ],
          stops: const [0.0, 1.0],
          begin: const AlignmentDirectional(0.0, -1.0),
          end: const AlignmentDirectional(0, 1.0),
        ),
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).accent4,
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: FaIcon(
                          FontAwesomeIcons.info,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24.0,
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          '4ft5p9de' /* Suggestions */,
                        ),
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(const SizedBox(width: 8.0)),
                  ),
                  Text(
                    widget.display,
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).info,
                          letterSpacing: 0.0,
                        ),
                  ),
                ].divide(const SizedBox(height: 4.0)),
              ),
            ),
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              hoverColor: FlutterFlowTheme.of(context).primaryBackground,
              icon: Icon(
                Icons.close_rounded,
                color: FlutterFlowTheme.of(context).info,
                size: 24.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ].divide(const SizedBox(width: 8.0)),
        ),
      ),
    );
  }
}
