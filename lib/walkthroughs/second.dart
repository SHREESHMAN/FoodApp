import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/complete/components/wt1/wt1_widget.dart';
import '/complete/components/clickme/clickme_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';

// Focus widget keys for this walkthrough
final listView57kfpht5 = GlobalKey();
final iconButtonEi1qpsrb = GlobalKey();

/// second
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: listView57kfpht5,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const Wt1Widget(
              display:
                  'Your Cart Info page doesnt have data, lets add a new item',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: iconButtonEi1qpsrb,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: FlutterFlowTheme.of(context).primary,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const ClickmeWidget(),
          ),
        ],
      ),
    ];
