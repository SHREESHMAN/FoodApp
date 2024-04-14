import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/complete/components/wt1/wt1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';

// Focus widget keys for this walkthrough
final tabBarU6p110go = GlobalKey();
final rowI9oaqab4 = GlobalKey();
final iconButton41s4acvl = GlobalKey();
final iconButtonQaox8skd = GlobalKey();
final floatingActionButton0cefzjx6 = GlobalKey();

/// third
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: tabBarU6p110go,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const Wt1Widget(
              display:
                  'This is your list of food categories that your items need to be classified into.',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: rowI9oaqab4,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const Wt1Widget(
              display:
                  'This is what you can use to add your own categories, some default ones have been added for you.',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: iconButton41s4acvl,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: FlutterFlowTheme.of(context).tertiary,
        contents: [
          TargetContent(
            align: ContentAlign.left,
            builder: (context, __) => const Wt1Widget(
              display:
                  'This is the Image upload button that uses AI to fill in information about your item, you can manually adjust this info too. ',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: iconButtonQaox8skd,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: FlutterFlowTheme.of(context).tertiary,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const Wt1Widget(
              display:
                  'This is another AI feature that lets you scan the expiry date of your items in any format.',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: floatingActionButton0cefzjx6,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: FlutterFlowTheme.of(context).primary,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const Wt1Widget(
              display:
                  'Finally this is the Add button, once the required fields are filled the item will be added to your cart.',
            ),
          ),
        ],
      ),
    ];
