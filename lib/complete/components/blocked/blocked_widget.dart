import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'blocked_model.dart';
export 'blocked_model.dart';

class BlockedWidget extends StatefulWidget {
  const BlockedWidget({
    super.key,
    String? display,
    String? subtext,
  })  : display =
            display ?? 'You need to Verify your email and try again.',
        subtext = subtext ?? ' ';

  final String display;
  final String subtext;

  @override
  State<BlockedWidget> createState() => _BlockedWidgetState();
}

class _BlockedWidgetState extends State<BlockedWidget> {
  late BlockedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlockedModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: 370.0,
        height: 311.0,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              blurRadius: 6.0,
              color: Color(0x4B1A1F24),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          gradient: const LinearGradient(
            colors: [Color(0xFFEE8B60), Color(0xFF4B39EF)],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(0.94, -1.0),
            end: AlignmentDirectional(-0.94, 1.0),
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: AutoSizeText(
                      widget.display,
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily: 'Outfit',
                            color: Colors.white,
                            fontSize: 22.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(1.0, 0.0),
                      child: Icon(
                        Icons.arrow_drop_down_sharp,
                        color: FlutterFlowTheme.of(context).info,
                        size: 44.0,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 4.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.subtext,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Roboto Mono',
                            color: Colors.white,
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
