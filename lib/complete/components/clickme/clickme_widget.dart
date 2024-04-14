import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'clickme_model.dart';
export 'clickme_model.dart';

class ClickmeWidget extends StatefulWidget {
  const ClickmeWidget({super.key});

  @override
  State<ClickmeWidget> createState() => _ClickmeWidgetState();
}

class _ClickmeWidgetState extends State<ClickmeWidget>
    with TickerProviderStateMixin {
  late ClickmeModel _model;

  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1030.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.25, 1.25),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClickmeModel());

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
      decoration: const BoxDecoration(),
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Text(
        'Click Here! ',
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Oswald',
              color: FlutterFlowTheme.of(context).tertiary,
              fontSize: 44.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.bold,
            ),
      ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation']!),
    );
  }
}
