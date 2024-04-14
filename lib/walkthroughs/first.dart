import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/complete/components/wt1/wt1_widget.dart';
import '/complete/components/clickme/clickme_widget.dart';

// Focus widget keys for this walkthrough
final listViewSk5ljdw1 = GlobalKey();
final iconButtonG5vao9p6 = GlobalKey();

/// First
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: listViewSk5ljdw1,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const Wt1Widget(
              display: 'You currently dont have any items, lets add some! ',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: iconButtonG5vao9p6,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.left,
            builder: (context, __) => const ClickmeWidget(),
          ),
        ],
      ),
    ];
