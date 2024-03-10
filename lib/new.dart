import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class InputText extends StatelessWidget {
  const InputText({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: InputTextPainter());
  }
}

class InputTextPainter extends CustomPainter {
  InputTextPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -23.0000000000);

// 144:623 : Input/Text (COMPONENT)
    draw_144_623(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          23.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:23,r:0,b:0,w:343,h:50) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 144:620 : BG (VECTOR)
      draw_144_620(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(0.0, 0.0, 343.0000000000,
            50.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:343,h:50) */;
        canvas.save();
        canvas.scale((container.width) / 343.0000000000,
            (container.height) / 50.0000000000);
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 343.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 50.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var fillGeometry = [_PathCatalog.instance.path_0.transform(transform)];
        for (var path in fillGeometry) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_0);
        }
        var strokes = [_PaintCatalog.instance.paint_1];
        var strokeGeometry = [
          _PathCatalog.instance.path_1.transform(transform)
        ];
        for (var paint in strokes) {
          for (var path in strokeGeometry) {
            canvas.drawPath(path, paint);
          }
        }
        canvas.restore();
      }
      draw_144_620(canvas, frame);

// 144:621 : Name (TEXT)
      draw_144_621(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            16.0000000000,
            ((container.height / 2.0) - 9.0000000000),
            45.0000000000,
            19.0000000000) /* H:LEFT V:CENTER F:(l:16,t:16,r:282,b:282,w:45,h:19) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.left,
          fontSize: 16.0000000000,
          fontWeight: FontWeight.w500,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("Name");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_144_621(canvas, frame);

// 144:728 : Show (TEXT)
      draw_144_728(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            (container.width - (59.0000000000)),
            ((container.height / 2.0) - 9.0000000000),
            43.0000000000,
            19.0000000000) /* H:RIGHT V:CENTER F:(l:284,t:16,r:16,b:16,w:43,h:19) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_1;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.right,
          fontSize: 16.0000000000,
          fontWeight: FontWeight.w500,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("Show");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_144_728(canvas, frame);
      canvas.restore();
    }
    draw_144_623(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(InputTextPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(InputTextPainter oldDelegate) {
    return false;
  }
}

class IconCheckmark extends StatelessWidget {
  const IconCheckmark({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: IconCheckmarkPainter());
  }
}

class IconCheckmarkPainter extends CustomPainter {
  IconCheckmarkPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -23.0000000000);

// 144:2153 : Icon/Checkmark (COMPONENT)
    draw_144_2153(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          23.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:23,r:0,b:0,w:7,h:6) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 144:2152 : Icon/Checkmark (VECTOR)
      draw_144_2152(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(0.0, 0.7500000000, 6.2999997139,
            5.2500000000) /* H:SCALE V:SCALE F:(l:0,t:0.75,r:0.7000002861022949,b:0.7000002861022949,w:6.299999713897705,h:5.25) */;
        canvas.save();
        canvas.scale((container.width) / 7.0000000000,
            (container.height) / 6.0000000000);
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 6.2999997139),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 5.2500000000),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var strokes = [_PaintCatalog.instance.paint_2];
        var strokeGeometry = [
          _PathCatalog.instance.path_2.transform(transform)
        ];
        for (var paint in strokes) {
          for (var path in strokeGeometry) {
            canvas.drawPath(path, paint);
          }
        }
        canvas.restore();
      }
      draw_144_2152(canvas, frame);
      canvas.restore();
    }
    draw_144_2153(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(IconCheckmarkPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(IconCheckmarkPainter oldDelegate) {
    return false;
  }
}

class CheckboxEmpty extends StatelessWidget {
  const CheckboxEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: CheckboxEmptyPainter());
  }
}

class CheckboxEmptyPainter extends CustomPainter {
  CheckboxEmptyPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -23.0000000000);

// 144:2151 : Checkbox/Empty (COMPONENT)
    draw_144_2151(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          23.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:23,r:0,b:0,w:16,h:16) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 144:2146 : BG (RECTANGLE)
      draw_144_2146(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(0.0, 0.0, 16.0000000000,
            16.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:16,h:16) */;
        canvas.save();
        canvas.scale((container.width) / 16.0000000000,
            (container.height) / 16.0000000000);
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 16.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 16.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var fillGeometry = [
          Path()
            ..addRRect(RRect.fromRectAndRadius(
                Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                const Radius.circular(4)))
        ];
        for (var path in fillGeometry) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_0);
        }
        var strokes = [_PaintCatalog.instance.paint_1];
        var strokeGeometry = [
          _PathCatalog.instance.path_3.transform(transform)
        ];
        for (var paint in strokes) {
          for (var path in strokeGeometry) {
            canvas.drawPath(path, paint);
          }
        }
        canvas.restore();
      }
      draw_144_2146(canvas, frame);

// 144:2166 : Icon/Checkmark (INSTANCE)
      draw_144_2166(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(4.0000000000, 4.0000000000, 8.0000000000,
            7.0000000000) /* H:LEFT V:TOP F:(l:4,t:4,r:4,b:4,w:8,h:7) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        canvas.drawRect(Offset.zero & frame.size,
            (Paint()..color = _ColorCatalog.instance.color_0));

// I144:2166;144:2152 : Icon/Checkmark (VECTOR)
        draw_I144_2166__144_2152(Canvas canvas, Rect container) {
          var frame = const Rect.fromLTWH(0.0, 0.8750000000, 7.1999998093,
              6.1250000000) /* H:SCALE V:SCALE F:(l:0,t:0.875,r:0.8000001907348633,b:0.8000001907348633,w:7.199999809265137,h:6.125) */;
          canvas.save();
          canvas.scale((container.width) / 8.0000000000,
              (container.height) / 7.0000000000);
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 7.1999998093),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 6.1250000000),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var strokes = [_PaintCatalog.instance.paint_3];
          var strokeGeometry = [
            _PathCatalog.instance.path_4.transform(transform)
          ];
          for (var paint in strokes) {
            for (var path in strokeGeometry) {
              canvas.drawPath(path, paint);
            }
          }
          canvas.restore();
        }
        draw_I144_2166__144_2152(canvas, frame);
        canvas.restore();
      }
      draw_144_2166(canvas, frame);
      canvas.restore();
    }
    draw_144_2151(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(CheckboxEmptyPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(CheckboxEmptyPainter oldDelegate) {
    return false;
  }
}

class CheckboxOptionEmpty extends StatelessWidget {
  const CheckboxOptionEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: CheckboxOptionEmptyPainter());
  }
}

class CheckboxOptionEmptyPainter extends CustomPainter {
  CheckboxOptionEmptyPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -23.0000000000);

// 144:2291 : Checkbox Option/Empty (COMPONENT)
    draw_144_2291(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          23.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:23,r:0,b:0,w:177,h:17) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 144:2285 : Checkbox/Empty (INSTANCE)
      draw_144_2285(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(0.0, 0.5000000000, 16.0000000000,
            16.0000000000) /* H:LEFT V:TOP F:(l:0,t:0.5,r:161,b:161,w:16,h:16) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        canvas.drawRect(Offset.zero & frame.size,
            (Paint()..color = _ColorCatalog.instance.color_0));

// I144:2285;144:2146 : BG (RECTANGLE)
        draw_I144_2285__144_2146(Canvas canvas, Rect container) {
          var frame = const Rect.fromLTWH(0.0, 0.0, 16.0000000000,
              16.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:16,h:16) */;
          canvas.save();
          canvas.scale((container.width) / 16.0000000000,
              (container.height) / 16.0000000000);
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 16.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 16.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            Path()
              ..addRRect(RRect.fromRectAndRadius(
                  Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                  const Radius.circular(4)))
          ];
          for (var path in fillGeometry) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_0);
          }
          var strokes = [_PaintCatalog.instance.paint_1];
          var strokeGeometry = [
            _PathCatalog.instance.path_5.transform(transform)
          ];
          for (var paint in strokes) {
            for (var path in strokeGeometry) {
              canvas.drawPath(path, paint);
            }
          }
          canvas.restore();
        }
        draw_I144_2285__144_2146(canvas, frame);

// I144:2285;144:2166 : Icon/Checkmark (INSTANCE)
        draw_I144_2285__144_2166(Canvas canvas, Rect container) {
          var frame = const Rect.fromLTWH(4.0000000000, 4.0000000000, 8.0000000000,
              7.0000000000) /* H:LEFT V:TOP F:(l:4,t:4,r:4,b:4,w:8,h:7) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          canvas.drawRect(Offset.zero & frame.size,
              (Paint()..color = _ColorCatalog.instance.color_0));

// I144:2285;144:2166;144:2152 : Icon/Checkmark (VECTOR)
          draw_I144_2285__144_2166__144_2152(Canvas canvas, Rect container) {
            var frame = const Rect.fromLTWH(0.0, 0.8750000000, 7.1999998093,
                6.1250000000) /* H:SCALE V:SCALE F:(l:0,t:0.875,r:0.8000001907348633,b:0.8000001907348633,w:7.199999809265137,h:6.125) */;
            canvas.save();
            canvas.scale((container.width) / 8.0000000000,
                (container.height) / 7.0000000000);
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var transform = Float64List.fromList([
              (frame.width / 7.1999998093),
              0.0,
              0.0,
              0.0,
              0.0,
              (frame.height / 6.1250000000),
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0
            ]);
            var strokes = [_PaintCatalog.instance.paint_3];
            var strokeGeometry = [
              _PathCatalog.instance.path_6.transform(transform)
            ];
            for (var paint in strokes) {
              for (var path in strokeGeometry) {
                canvas.drawPath(path, paint);
              }
            }
            canvas.restore();
          }
          draw_I144_2285__144_2166__144_2152(canvas, frame);
          canvas.restore();
        }
        draw_I144_2285__144_2166(canvas, frame);
        canvas.restore();
      }
      draw_144_2285(canvas, frame);

// 144:2287 : Text here (TEXT)
      draw_144_2287(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            24.0000000000,
            0.0,
            (container.width - (23.0000000000)),
            17.0000000000) /* H:LEFT_RIGHT V:TOP F:(l:24,t:0,r:-1,b:-1,w:154,h:17) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_2;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.left,
          fontSize: 14.0000000000,
          fontWeight: FontWeight.w400,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("Text here");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_144_2287(canvas, frame);
      canvas.restore();
    }
    draw_144_2291(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(CheckboxOptionEmptyPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(CheckboxOptionEmptyPainter oldDelegate) {
    return false;
  }
}

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: ButtonPrimaryPainter());
  }
}

class ButtonPrimaryPainter extends CustomPainter {
  ButtonPrimaryPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -23.0000000000);

// 144:2129 : Button/Primary (COMPONENT)
    draw_144_2129(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          23.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:23,r:0,b:0,w:131,h:51) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_4));

// 144:2127 : Click Me (TEXT)
      draw_144_2127(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(32.0000000000, 16.0000000000, 67.0000000000,
            19.0000000000) /* H:SCALE V:SCALE F:(l:32,t:16,r:32,b:32,w:67,h:19) */;
        canvas.save();
        canvas.scale((container.width) / 131.0000000000,
            (container.height) / 51.0000000000);
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_3;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.center,
          fontSize: 16.0000000000,
          fontWeight: FontWeight.w600,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("Click Me");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_144_2127(canvas, frame);
      canvas.restore();
    }
    draw_144_2129(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(ButtonPrimaryPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(ButtonPrimaryPainter oldDelegate) {
    return false;
  }
}

class InputSearch extends StatelessWidget {
  const InputSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: InputSearchPainter());
  }
}

class InputSearchPainter extends CustomPainter {
  InputSearchPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -23.0000000000);

// 144:2662 : Input/Search (COMPONENT)
    draw_144_2662(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          23.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:23,r:0,b:0,w:343,h:50) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 144:2659 : BG (VECTOR)
      draw_144_2659(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(0.0, 0.0, 343.0000000000,
            50.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:343,h:50) */;
        canvas.save();
        canvas.scale((container.width) / 343.0000000000,
            (container.height) / 50.0000000000);
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 343.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 50.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var fillGeometry = [_PathCatalog.instance.path_7.transform(transform)];
        for (var path in fillGeometry) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_0);
        }
        var strokes = [_PaintCatalog.instance.paint_1];
        var strokeGeometry = [
          _PathCatalog.instance.path_8.transform(transform)
        ];
        for (var paint in strokes) {
          for (var path in strokeGeometry) {
            canvas.drawPath(path, paint);
          }
        }
        canvas.restore();
      }
      draw_144_2659(canvas, frame);

// 144:2660 : Search (TEXT)
      draw_144_2660(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            16.0000000000,
            ((container.height / 2.0) - 9.0000000000),
            54.0000000000,
            19.0000000000) /* H:LEFT V:CENTER F:(l:16,t:16,r:273,b:273,w:54,h:19) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.left,
          fontSize: 16.0000000000,
          fontWeight: FontWeight.w500,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("Search");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_144_2660(canvas, frame);

// 152:168 : Icon/Send (GROUP)
      draw_152_168(Canvas canvas, Rect container) {
// 152:135 : Ellipse 4 (ELLIPSE)
        draw_152_135(Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              (container.width - (42.0000000000)),
              ((container.height / 2.0) - 17.0000000000),
              34.0000000000,
              34.0000000000) /* H:RIGHT V:CENTER F:(l:301,t:8,r:8,b:8,w:34,h:34) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 34.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 34.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            _PathCatalog.instance.path_9.transform(transform)
          ];
          for (var path in fillGeometry) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_2);
          }
          canvas.restore();
        }
        draw_152_135(canvas, frame);

// 152:122 : Vector (VECTOR)
        draw_152_122(Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              (container.width - (30.0000000000)),
              ((container.height / 2.0) - 7.0000000000),
              10.0000000000,
              14.0000000000) /* H:RIGHT V:CENTER F:(l:313,t:18,r:20,b:20,w:10,h:14) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 10.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 14.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var strokes = [_PaintCatalog.instance.paint_3];
          var strokeGeometry = [
            _PathCatalog.instance.path_10.transform(transform)
          ];
          for (var paint in strokes) {
            for (var path in strokeGeometry) {
              canvas.drawPath(path, paint);
            }
          }
          canvas.restore();
        }
        draw_152_122(canvas, frame);
      }
      draw_152_168(canvas, frame);
      canvas.restore();
    }
    draw_144_2662(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(InputSearchPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(InputSearchPainter oldDelegate) {
    return false;
  }
}

class ContentContentBlockSmall extends StatelessWidget {
  const ContentContentBlockSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: ContentContentBlockSmallPainter());
  }
}

class ContentContentBlockSmallPainter extends CustomPainter {
  ContentContentBlockSmallPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -23.0000000000);

// 147:495 : Content/Content Block/Small (COMPONENT)
    draw_147_495(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          23.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:23,r:0,b:0,w:328,h:77.0000228881836) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 147:490 : Content Block (RECTANGLE)
      draw_147_490(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(0.0, 0.0, 50.0000000000,
            50.0000000000) /* H:LEFT V:TOP F:(l:0,t:0,r:278,b:278,w:50,h:50) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 50.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 50.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var fillGeometry = [
          Path()
            ..addRRect(RRect.fromRectAndRadius(
                Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                const Radius.circular(8)))
        ];
        for (var path in fillGeometry) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_0);
        }
        canvas.restore();
      }
      draw_147_490(canvas, frame);

// 147:491 : Header (TEXT)
      draw_147_491(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(66.0000000000, 0.0, 57.0000000000,
            19.0000000000) /* H:LEFT V:TOP F:(l:66,t:0,r:205,b:205,w:57,h:19) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_4;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.left,
          fontSize: 16.0000000000,
          fontWeight: FontWeight.w600,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("Header");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_147_491(canvas, frame);

// 147:493 : 8m ago (TEXT)
      draw_147_493(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            (container.width - (50.0000000000)),
            2.0000000000,
            50.0000000000,
            17.0000000000) /* H:RIGHT V:TOP F:(l:278,t:2,r:0,b:0,w:50,h:17) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_5;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.right,
          fontSize: 14.0000000000,
          fontWeight: FontWeight.w400,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("8m ago");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_147_493(canvas, frame);

// 147:492 : He'll want to use your yacht, and I don't want this thing smelling like fish. (TEXT)
      draw_147_492(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            66.0000000000,
            27.0000000000,
            (container.width - (74.0000000000)),
            34.0000000000) /* H:LEFT_RIGHT V:TOP F:(l:66,t:27,r:8,b:8,w:254,h:34) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_6;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.left,
          fontSize: 14.0000000000,
          fontWeight: FontWeight.w400,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText(
            "He'll want to use your yacht, and I don't want this thing smelling like fish.");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_147_492(canvas, frame);

// 147:494 : Divider Line (LINE)
      draw_147_494(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            66.0000000000,
            (container.height - (0.0)),
            (container.width - (66.0000000000)),
            0.0) /* H:LEFT_RIGHT V:BOTTOM F:(l:66,t:77.0000228881836,r:0,b:0,w:262,h:0) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          -0.0000000874,
          0.0,
          0.0,
          0.0000000874,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        canvas.restore();
      }
      draw_147_494(canvas, frame);
      canvas.restore();
    }
    draw_147_495(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(ContentContentBlockSmallPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(ContentContentBlockSmallPainter oldDelegate) {
    return false;
  }
}

class DataBarChartBackground extends StatelessWidget {
  const DataBarChartBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: DataBarChartBackgroundPainter());
  }
}

class DataBarChartBackgroundPainter extends CustomPainter {
  DataBarChartBackgroundPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -23.0000000000);

// 179:65 : Data/Bar Chart/Background (COMPONENT)
    draw_179_65(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          23.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:23,r:0,b:0,w:30,h:243) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 179:63 : Background (VECTOR)
      draw_179_63(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            ((container.width / 2.0) - (1.0000000000)),
            0.0,
            16.0000000000,
            (container.height -
                (43.0000000000))) /* H:CENTER V:TOP_BOTTOM F:(l:14,t:0,r:0,b:0,w:16,h:200) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 16.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 200.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var fillGeometry = [_PathCatalog.instance.path_11.transform(transform)];
        for (var path in fillGeometry) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_4);
        }
        canvas.restore();
      }
      draw_179_63(canvas, frame);

// 179:348 : Group 1 (TEXT)
      draw_179_348(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            ((container.width / 2.0) - (19.1005859375)),
            (container.height - (8.8370361328)),
            37.0000000000,
            12.0000000000) /* H:CENTER V:BOTTOM F:(l:-4.1005859375,t:234.1629638671875,r:-2.8994140625,b:-2.8994140625,w:37,h:12) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          0.7071067691,
          -0.7071067691,
          0.0,
          0.0,
          0.7071067691,
          0.7071067691,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_7;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.right,
          fontSize: 10.0000000000,
          fontWeight: FontWeight.w400,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("Group 1");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_179_348(canvas, frame);
      canvas.restore();
    }
    draw_179_65(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(DataBarChartBackgroundPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(DataBarChartBackgroundPainter oldDelegate) {
    return false;
  }
}

class DataBarChartFill extends StatelessWidget {
  const DataBarChartFill({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: DataBarChartFillPainter());
  }
}

class DataBarChartFillPainter extends CustomPainter {
  DataBarChartFillPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -23.0000000000);

// 179:66 : Data/Bar Chart/Fill (COMPONENT)
    draw_179_66(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          23.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:23,r:0,b:0,w:16,h:32) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 179:58 : Background (RECTANGLE)
      draw_179_58(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            0.0,
            0.0,
            16.0000000000,
            (container.height -
                (0.0))) /* H:SCALE V:TOP_BOTTOM F:(l:0,t:0,r:0,b:0,w:16,h:32) */;
        canvas.save();
        canvas.scale((container.width) / 16.0000000000, 1.0);
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 16.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 32.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var fillGeometry = [
          Path()
            ..addRRect(RRect.fromRectAndRadius(
                Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                const Radius.circular(100)))
        ];
        for (var path in fillGeometry) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_2);
        }
        canvas.restore();
      }
      draw_179_58(canvas, frame);
      canvas.restore();
    }
    draw_179_66(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(DataBarChartFillPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(DataBarChartFillPainter oldDelegate) {
    return false;
  }
}

class DataMobileGraph extends StatelessWidget {
  const DataMobileGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: DataMobileGraphPainter());
  }
}

class DataMobileGraphPainter extends CustomPainter {
  DataMobileGraphPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -23.0000000000);

// 179:59 : Data/Mobile Graph (COMPONENT)
    draw_179_59(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          23.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:23,r:0,b:0,w:343,h:231) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 179:54 : Background (VECTOR)
      draw_179_54(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(0.0, 0.0, 343.0000000000,
            232.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:343,h:232) */;
        canvas.save();
        canvas.scale((container.width) / 343.0000000000,
            (container.height) / 231.0000000000);
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 343.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 232.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var fillGeometry = [_PathCatalog.instance.path_12.transform(transform)];
        for (var path in fillGeometry) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_3);
        }
        var strokes = [_PaintCatalog.instance.paint_1];
        var strokeGeometry = [
          _PathCatalog.instance.path_13.transform(transform)
        ];
        for (var paint in strokes) {
          for (var path in strokeGeometry) {
            canvas.drawPath(path, paint);
          }
        }
        canvas.restore();
      }
      draw_179_54(canvas, frame);

// 179:496 : Bars (GROUP)
      draw_179_496(Canvas canvas, Rect container) {
// 179:397 : Bar Line (GROUP)
        draw_179_397(Canvas canvas, Rect container) {
// 179:307 : Data/Bar Chart/Background (INSTANCE)
          draw_179_307(Canvas canvas, Rect container) {
            var frame = const Rect.fromLTWH(
                10.0000000000,
                16.0000000000,
                30.0000000000,
                202.0000000000) /* H:LEFT V:TOP F:(l:10,t:16,r:303,b:303,w:30,h:202) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_0));

// I179:307;179:63 : Background (VECTOR)
            draw_I179_307__179_63(Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  ((container.width / 2.0) - (1.0000000000)),
                  0.0,
                  16.0000000000,
                  (container.height -
                      (43.0000000000))) /* H:CENTER V:TOP_BOTTOM F:(l:14,t:0,r:0,b:0,w:16,h:159) */;
              canvas.save();
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 16.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 159.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                _PathCatalog.instance.path_14.transform(transform)
              ];
              for (var path in fillGeometry) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_4);
              }
              canvas.restore();
            }
            draw_I179_307__179_63(canvas, frame);

// I179:307;179:348 : Item (TEXT)
            draw_I179_307__179_348(Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  ((container.width / 2.0) - (7.7868757248)),
                  (container.height - (20.1507415771)),
                  21.0000000000,
                  12.0000000000) /* H:CENTER V:BOTTOM F:(l:7.2131242752075195,t:181.84925842285156,r:1.7868757247924805,b:1.7868757247924805,w:21,h:12) */;
              canvas.save();
              canvas.transform(Float64List.fromList([
                0.7071068883,
                -0.7071067095,
                0.0,
                0.0,
                0.7071068883,
                0.7071067095,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var style_0 = _TextStyleCatalog.instance.ui_TextStyle_7;
              var paragraphStyle = ui.ParagraphStyle(
                fontFamily: 'Inter',
                textAlign: TextAlign.right,
                fontSize: 10.0000000000,
                fontWeight: FontWeight.w400,
              );
              var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
                ..pushStyle(style_0);
              paragraphBuilder.addText("Item");
              var paragraph = paragraphBuilder.build();
              paragraph.layout(ui.ParagraphConstraints(width: frame.width));
              canvas.drawParagraph(paragraph, Offset.zero);
              canvas.restore();
            }
            draw_I179_307__179_348(canvas, frame);
            canvas.restore();
          }
          draw_179_307(canvas, frame);

// 179:393 : Data/Bar Chart/Fill (INSTANCE)
          draw_179_393(Canvas canvas, Rect container) {
            var frame = const Rect.fromLTWH(
                24.0000000000,
                65.0000000000,
                16.0000000000,
                117.0000000000) /* H:LEFT V:TOP F:(l:24,t:65,r:303,b:303,w:16,h:117) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_0));

// I179:393;179:58 : Background (RECTANGLE)
            draw_I179_393__179_58(Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  0.0,
                  0.0,
                  16.0000000000,
                  (container.height -
                      (0.0))) /* H:SCALE V:TOP_BOTTOM F:(l:0,t:0,r:0,b:0,w:16,h:117) */;
              canvas.save();
              canvas.scale((container.width) / 16.0000000000, 1.0);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 16.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 117.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                Path()
                  ..addRRect(RRect.fromRectAndRadius(
                      Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                      const Radius.circular(8)))
              ];
              for (var path in fillGeometry) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_2);
              }
              canvas.restore();
            }
            draw_I179_393__179_58(canvas, frame);
            canvas.restore();
          }
          draw_179_393(canvas, frame);
        }
        draw_179_397(canvas, frame);

// 179:398 : Bar Line (GROUP)
        draw_179_398(Canvas canvas, Rect container) {
// 179:399 : Data/Bar Chart/Background (INSTANCE)
          draw_179_399(Canvas canvas, Rect container) {
            var frame = const Rect.fromLTWH(
                50.0000000000,
                16.0000000000,
                30.0000000000,
                202.0000000000) /* H:LEFT V:TOP F:(l:50,t:16,r:263,b:263,w:30,h:202) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_0));

// I179:399;179:63 : Background (VECTOR)
            draw_I179_399__179_63(Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  ((container.width / 2.0) - (1.0000000000)),
                  0.0,
                  16.0000000000,
                  (container.height -
                      (43.0000000000))) /* H:CENTER V:TOP_BOTTOM F:(l:14,t:0,r:0,b:0,w:16,h:159) */;
              canvas.save();
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 16.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 159.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                _PathCatalog.instance.path_15.transform(transform)
              ];
              for (var path in fillGeometry) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_4);
              }
              canvas.restore();
            }
            draw_I179_399__179_63(canvas, frame);

// I179:399;179:348 : Item (TEXT)
            draw_I179_399__179_348(Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  ((container.width / 2.0) - (7.7868757248)),
                  (container.height - (20.1507415771)),
                  21.0000000000,
                  12.0000000000) /* H:CENTER V:BOTTOM F:(l:7.2131242752075195,t:181.84925842285156,r:1.7868757247924805,b:1.7868757247924805,w:21,h:12) */;
              canvas.save();
              canvas.transform(Float64List.fromList([
                0.7071068883,
                -0.7071067095,
                0.0,
                0.0,
                0.7071068883,
                0.7071067095,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var style_0 = _TextStyleCatalog.instance.ui_TextStyle_7;
              var paragraphStyle = ui.ParagraphStyle(
                fontFamily: 'Inter',
                textAlign: TextAlign.right,
                fontSize: 10.0000000000,
                fontWeight: FontWeight.w400,
              );
              var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
                ..pushStyle(style_0);
              paragraphBuilder.addText("Item");
              var paragraph = paragraphBuilder.build();
              paragraph.layout(ui.ParagraphConstraints(width: frame.width));
              canvas.drawParagraph(paragraph, Offset.zero);
              canvas.restore();
            }
            draw_I179_399__179_348(canvas, frame);
            canvas.restore();
          }
          draw_179_399(canvas, frame);

// 179:400 : Data/Bar Chart/Fill (INSTANCE)
          draw_179_400(Canvas canvas, Rect container) {
            var frame = const Rect.fromLTWH(
                64.0000000000,
                105.0000000000,
                16.0000000000,
                77.0000000000) /* H:LEFT V:TOP F:(l:64,t:105,r:263,b:263,w:16,h:77) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_0));

// I179:400;179:58 : Background (RECTANGLE)
            draw_I179_400__179_58(Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  0.0,
                  0.0,
                  16.0000000000,
                  (container.height -
                      (0.0))) /* H:SCALE V:TOP_BOTTOM F:(l:0,t:0,r:0,b:0,w:16,h:77) */;
              canvas.save();
              canvas.scale((container.width) / 16.0000000000, 1.0);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 16.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 77.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                Path()
                  ..addRRect(RRect.fromRectAndRadius(
                      Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                      const Radius.circular(8)))
              ];
              for (var path in fillGeometry) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_5);
              }
              canvas.restore();
            }
            draw_I179_400__179_58(canvas, frame);
            canvas.restore();
          }
          draw_179_400(canvas, frame);
        }
        draw_179_398(canvas, frame);

// 179:404 : Bar Line (GROUP)
        draw_179_404(Canvas canvas, Rect container) {
// 179:405 : Data/Bar Chart/Background (INSTANCE)
          draw_179_405(Canvas canvas, Rect container) {
            var frame = const Rect.fromLTWH(
                90.0000000000,
                16.0000000000,
                30.0000000000,
                202.0000000000) /* H:LEFT V:TOP F:(l:90,t:16,r:223,b:223,w:30,h:202) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_0));

// I179:405;179:63 : Background (VECTOR)
            draw_I179_405__179_63(Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  ((container.width / 2.0) - (1.0000000000)),
                  0.0,
                  16.0000000000,
                  (container.height -
                      (43.0000000000))) /* H:CENTER V:TOP_BOTTOM F:(l:14,t:0,r:0,b:0,w:16,h:159) */;
              canvas.save();
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 16.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 159.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                _PathCatalog.instance.path_16.transform(transform)
              ];
              for (var path in fillGeometry) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_4);
              }
              canvas.restore();
            }
            draw_I179_405__179_63(canvas, frame);

// I179:405;179:348 : Item (TEXT)
            draw_I179_405__179_348(Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  ((container.width / 2.0) - (7.7868757248)),
                  (container.height - (20.1507415771)),
                  21.0000000000,
                  12.0000000000) /* H:CENTER V:BOTTOM F:(l:7.2131242752075195,t:181.84925842285156,r:1.7868757247924805,b:1.7868757247924805,w:21,h:12) */;
              canvas.save();
              canvas.transform(Float64List.fromList([
                0.7071068883,
                -0.7071067095,
                0.0,
                0.0,
                0.7071068883,
                0.7071067095,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var style_0 = _TextStyleCatalog.instance.ui_TextStyle_7;
              var paragraphStyle = ui.ParagraphStyle(
                fontFamily: 'Inter',
                textAlign: TextAlign.right,
                fontSize: 10.0000000000,
                fontWeight: FontWeight.w400,
              );
              var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
                ..pushStyle(style_0);
              paragraphBuilder.addText("Item");
              var paragraph = paragraphBuilder.build();
              paragraph.layout(ui.ParagraphConstraints(width: frame.width));
              canvas.drawParagraph(paragraph, Offset.zero);
              canvas.restore();
            }
            draw_I179_405__179_348(canvas, frame);
            canvas.restore();
          }
          draw_179_405(canvas, frame);

// 179:406 : Data/Bar Chart/Fill (INSTANCE)
          draw_179_406(Canvas canvas, Rect container) {
            var frame = const Rect.fromLTWH(
                104.0000000000,
                65.0000000000,
                16.0000000000,
                117.0000000000) /* H:LEFT V:TOP F:(l:104,t:65,r:223,b:223,w:16,h:117) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_0));

// I179:406;179:58 : Background (RECTANGLE)
            draw_I179_406__179_58(Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  0.0,
                  0.0,
                  16.0000000000,
                  (container.height -
                      (0.0))) /* H:SCALE V:TOP_BOTTOM F:(l:0,t:0,r:0,b:0,w:16,h:117) */;
              canvas.save();
              canvas.scale((container.width) / 16.0000000000, 1.0);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 16.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 117.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                Path()
                  ..addRRect(RRect.fromRectAndRadius(
                      Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                      const Radius.circular(8)))
              ];
              for (var path in fillGeometry) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_2);
              }
              canvas.restore();
            }
            draw_I179_406__179_58(canvas, frame);
            canvas.restore();
          }
          draw_179_406(canvas, frame);
        }
        draw_179_404(canvas, frame);

// 179:410 : Bar Line (GROUP)
        draw_179_410(Canvas canvas, Rect container) {
// 179:411 : Data/Bar Chart/Background (INSTANCE)
          draw_179_411(Canvas canvas, Rect container) {
            var frame = const Rect.fromLTWH(
                130.0000000000,
                16.0000000000,
                30.0000000000,
                202.0000000000) /* H:LEFT V:TOP F:(l:130,t:16,r:183,b:183,w:30,h:202) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_0));

// I179:411;179:63 : Background (VECTOR)
            draw_I179_411__179_63(Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  ((container.width / 2.0) - (1.0000000000)),
                  0.0,
                  16.0000000000,
                  (container.height -
                      (43.0000000000))) /* H:CENTER V:TOP_BOTTOM F:(l:14,t:0,r:0,b:0,w:16,h:159) */;
              canvas.save();
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 16.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 159.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                _PathCatalog.instance.path_17.transform(transform)
              ];
              for (var path in fillGeometry) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_4);
              }
              canvas.restore();
            }
            draw_I179_411__179_63(canvas, frame);

// I179:411;179:348 : Item (TEXT)
            draw_I179_411__179_348(Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  ((container.width / 2.0) - (7.7868757248)),
                  (container.height - (20.1507415771)),
                  21.0000000000,
                  12.0000000000) /* H:CENTER V:BOTTOM F:(l:7.2131242752075195,t:181.84925842285156,r:1.7868757247924805,b:1.7868757247924805,w:21,h:12) */;
              canvas.save();
              canvas.transform(Float64List.fromList([
                0.7071068883,
                -0.7071067095,
                0.0,
                0.0,
                0.7071068883,
                0.7071067095,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var style_0 = _TextStyleCatalog.instance.ui_TextStyle_7;
              var paragraphStyle = ui.ParagraphStyle(
                fontFamily: 'Inter',
                textAlign: TextAlign.right,
                fontSize: 10.0000000000,
                fontWeight: FontWeight.w400,
              );
              var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
                ..pushStyle(style_0);
              paragraphBuilder.addText("Item");
              var paragraph = paragraphBuilder.build();
              paragraph.layout(ui.ParagraphConstraints(width: frame.width));
              canvas.drawParagraph(paragraph, Offset.zero);
              canvas.restore();
            }
            draw_I179_411__179_348(canvas, frame);
            canvas.restore();
          }
          draw_179_411(canvas, frame);

// 179:412 : Data/Bar Chart/Fill (INSTANCE)
          draw_179_412(Canvas canvas, Rect container) {
            var frame = const Rect.fromLTWH(
                144.0000000000,
                105.0000000000,
                16.0000000000,
                77.0000000000) /* H:LEFT V:TOP F:(l:144,t:105,r:183,b:183,w:16,h:77) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_0));

// I179:412;179:58 : Background (RECTANGLE)
            draw_I179_412__179_58(Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  0.0,
                  0.0,
                  16.0000000000,
                  (container.height -
                      (0.0))) /* H:SCALE V:TOP_BOTTOM F:(l:0,t:0,r:0,b:0,w:16,h:77) */;
              canvas.save();
              canvas.scale((container.width) / 16.0000000000, 1.0);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 16.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 77.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                Path()
                  ..addRRect(RRect.fromRectAndRadius(
                      Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                      const Radius.circular(8)))
              ];
              for (var path in fillGeometry) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_5);
              }
              canvas.restore();
            }
            draw_I179_412__179_58(canvas, frame);
            canvas.restore();
          }
          draw_179_412(canvas, frame);
        }
        draw_179_410(canvas, frame);

// 179:416 : Bar Line (GROUP)
        draw_179_416(Canvas canvas, Rect container) {
// 179:417 : Data/Bar Chart/Background (INSTANCE)
          draw_179_417(Canvas canvas, Rect container) {
            var frame = const Rect.fromLTWH(
                170.0000000000,
                16.0000000000,
                30.0000000000,
                202.0000000000) /* H:LEFT V:TOP F:(l:170,t:16,r:143,b:143,w:30,h:202) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_0));

// I179:417;179:63 : Background (VECTOR)
            draw_I179_417__179_63(Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  ((container.width / 2.0) - (1.0000000000)),
                  0.0,
                  16.0000000000,
                  (container.height -
                      (43.0000000000))) /* H:CENTER V:TOP_BOTTOM F:(l:14,t:0,r:0,b:0,w:16,h:159) */;
              canvas.save();
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 16.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 159.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                _PathCatalog.instance.path_18.transform(transform)
              ];
              for (var path in fillGeometry) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_4);
              }
              canvas.restore();
            }
            draw_I179_417__179_63(canvas, frame);

// I179:417;179:348 : Item (TEXT)
            draw_I179_417__179_348(Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  ((container.width / 2.0) - (7.7868757248)),
                  (container.height - (20.1507415771)),
                  21.0000000000,
                  12.0000000000) /* H:CENTER V:BOTTOM F:(l:7.2131242752075195,t:181.84925842285156,r:1.7868757247924805,b:1.7868757247924805,w:21,h:12) */;
              canvas.save();
              canvas.transform(Float64List.fromList([
                0.7071068883,
                -0.7071067095,
                0.0,
                0.0,
                0.7071068883,
                0.7071067095,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var style_0 = _TextStyleCatalog.instance.ui_TextStyle_7;
              var paragraphStyle = ui.ParagraphStyle(
                fontFamily: 'Inter',
                textAlign: TextAlign.right,
                fontSize: 10.0000000000,
                fontWeight: FontWeight.w400,
              );
              var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
                ..pushStyle(style_0);
              paragraphBuilder.addText("Item");
              var paragraph = paragraphBuilder.build();
              paragraph.layout(ui.ParagraphConstraints(width: frame.width));
              canvas.drawParagraph(paragraph, Offset.zero);
              canvas.restore();
            }
            draw_I179_417__179_348(canvas, frame);
            canvas.restore();
          }
          draw_179_417(canvas, frame);

// 179:418 : Data/Bar Chart/Fill (INSTANCE)
          draw_179_418(Canvas canvas, Rect container) {
            var frame = const Rect.fromLTWH(
                184.0000000000,
                65.0000000000,
                16.0000000000,
                117.0000000000) /* H:LEFT V:TOP F:(l:184,t:65,r:143,b:143,w:16,h:117) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_0));

// I179:418;179:58 : Background (RECTANGLE)
            draw_I179_418__179_58(Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  0.0,
                  0.0,
                  16.0000000000,
                  (container.height -
                      (0.0))) /* H:SCALE V:TOP_BOTTOM F:(l:0,t:0,r:0,b:0,w:16,h:117) */;
              canvas.save();
              canvas.scale((container.width) / 16.0000000000, 1.0);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 16.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 117.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                Path()
                  ..addRRect(RRect.fromRectAndRadius(
                      Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                      const Radius.circular(8)))
              ];
              for (var path in fillGeometry) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_2);
              }
              canvas.restore();
            }
            draw_I179_418__179_58(canvas, frame);
            canvas.restore();
          }
          draw_179_418(canvas, frame);
        }
        draw_179_416(canvas, frame);

// 179:422 : Bar Line (GROUP)
        draw_179_422(Canvas canvas, Rect container) {
// 179:423 : Data/Bar Chart/Background (INSTANCE)
          draw_179_423(Canvas canvas, Rect container) {
            var frame = const Rect.fromLTWH(
                210.0000000000,
                16.0000000000,
                30.0000000000,
                202.0000000000) /* H:LEFT V:TOP F:(l:210,t:16,r:103,b:103,w:30,h:202) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_0));

// I179:423;179:63 : Background (VECTOR)
            draw_I179_423__179_63(Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  ((container.width / 2.0) - (1.0000000000)),
                  0.0,
                  16.0000000000,
                  (container.height -
                      (43.0000000000))) /* H:CENTER V:TOP_BOTTOM F:(l:14,t:0,r:0,b:0,w:16,h:159) */;
              canvas.save();
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 16.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 159.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                _PathCatalog.instance.path_19.transform(transform)
              ];
              for (var path in fillGeometry) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_4);
              }
              canvas.restore();
            }
            draw_I179_423__179_63(canvas, frame);

// I179:423;179:348 : Item (TEXT)
            draw_I179_423__179_348(Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  ((container.width / 2.0) - (7.7868757248)),
                  (container.height - (20.1507415771)),
                  21.0000000000,
                  12.0000000000) /* H:CENTER V:BOTTOM F:(l:7.2131242752075195,t:181.84925842285156,r:1.7868757247924805,b:1.7868757247924805,w:21,h:12) */;
              canvas.save();
              canvas.transform(Float64List.fromList([
                0.7071068883,
                -0.7071067095,
                0.0,
                0.0,
                0.7071068883,
                0.7071067095,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var style_0 = _TextStyleCatalog.instance.ui_TextStyle_7;
              var paragraphStyle = ui.ParagraphStyle(
                fontFamily: 'Inter',
                textAlign: TextAlign.right,
                fontSize: 10.0000000000,
                fontWeight: FontWeight.w400,
              );
              var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
                ..pushStyle(style_0);
              paragraphBuilder.addText("Item");
              var paragraph = paragraphBuilder.build();
              paragraph.layout(ui.ParagraphConstraints(width: frame.width));
              canvas.drawParagraph(paragraph, Offset.zero);
              canvas.restore();
            }
            draw_I179_423__179_348(canvas, frame);
            canvas.restore();
          }
          draw_179_423(canvas, frame);

// 179:424 : Data/Bar Chart/Fill (INSTANCE)
          draw_179_424(Canvas canvas, Rect container) {
            var frame = const Rect.fromLTWH(
                224.0000000000,
                105.0000000000,
                16.0000000000,
                77.0000000000) /* H:LEFT V:TOP F:(l:224,t:105,r:103,b:103,w:16,h:77) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_0));

// I179:424;179:58 : Background (RECTANGLE)
            draw_I179_424__179_58(Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  0.0,
                  0.0,
                  16.0000000000,
                  (container.height -
                      (0.0))) /* H:SCALE V:TOP_BOTTOM F:(l:0,t:0,r:0,b:0,w:16,h:77) */;
              canvas.save();
              canvas.scale((container.width) / 16.0000000000, 1.0);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 16.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 77.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                Path()
                  ..addRRect(RRect.fromRectAndRadius(
                      Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                      const Radius.circular(8)))
              ];
              for (var path in fillGeometry) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_5);
              }
              canvas.restore();
            }
            draw_I179_424__179_58(canvas, frame);
            canvas.restore();
          }
          draw_179_424(canvas, frame);
        }
        draw_179_422(canvas, frame);

// 179:428 : Bar Line (GROUP)
        draw_179_428(Canvas canvas, Rect container) {
// 179:429 : Data/Bar Chart/Background (INSTANCE)
          draw_179_429(Canvas canvas, Rect container) {
            var frame = const Rect.fromLTWH(
                250.0000000000,
                16.0000000000,
                30.0000000000,
                202.0000000000) /* H:LEFT V:TOP F:(l:250,t:16,r:63,b:63,w:30,h:202) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_0));

// I179:429;179:63 : Background (VECTOR)
            draw_I179_429__179_63(Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  ((container.width / 2.0) - (1.0000000000)),
                  0.0,
                  16.0000000000,
                  (container.height -
                      (43.0000000000))) /* H:CENTER V:TOP_BOTTOM F:(l:14,t:0,r:0,b:0,w:16,h:159) */;
              canvas.save();
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 16.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 159.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                _PathCatalog.instance.path_20.transform(transform)
              ];
              for (var path in fillGeometry) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_4);
              }
              canvas.restore();
            }
            draw_I179_429__179_63(canvas, frame);

// I179:429;179:348 : Item (TEXT)
            draw_I179_429__179_348(Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  ((container.width / 2.0) - (7.7868757248)),
                  (container.height - (20.1507415771)),
                  21.0000000000,
                  12.0000000000) /* H:CENTER V:BOTTOM F:(l:7.2131242752075195,t:181.84925842285156,r:1.7868757247924805,b:1.7868757247924805,w:21,h:12) */;
              canvas.save();
              canvas.transform(Float64List.fromList([
                0.7071068883,
                -0.7071067095,
                0.0,
                0.0,
                0.7071068883,
                0.7071067095,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var style_0 = _TextStyleCatalog.instance.ui_TextStyle_7;
              var paragraphStyle = ui.ParagraphStyle(
                fontFamily: 'Inter',
                textAlign: TextAlign.right,
                fontSize: 10.0000000000,
                fontWeight: FontWeight.w400,
              );
              var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
                ..pushStyle(style_0);
              paragraphBuilder.addText("Item");
              var paragraph = paragraphBuilder.build();
              paragraph.layout(ui.ParagraphConstraints(width: frame.width));
              canvas.drawParagraph(paragraph, Offset.zero);
              canvas.restore();
            }
            draw_I179_429__179_348(canvas, frame);
            canvas.restore();
          }
          draw_179_429(canvas, frame);

// 179:430 : Data/Bar Chart/Fill (INSTANCE)
          draw_179_430(Canvas canvas, Rect container) {
            var frame = const Rect.fromLTWH(
                264.0000000000,
                65.0000000000,
                16.0000000000,
                117.0000000000) /* H:LEFT V:TOP F:(l:264,t:65,r:63,b:63,w:16,h:117) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_0));

// I179:430;179:58 : Background (RECTANGLE)
            draw_I179_430__179_58(Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  0.0,
                  0.0,
                  16.0000000000,
                  (container.height -
                      (0.0))) /* H:SCALE V:TOP_BOTTOM F:(l:0,t:0,r:0,b:0,w:16,h:117) */;
              canvas.save();
              canvas.scale((container.width) / 16.0000000000, 1.0);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 16.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 117.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                Path()
                  ..addRRect(RRect.fromRectAndRadius(
                      Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                      const Radius.circular(8)))
              ];
              for (var path in fillGeometry) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_2);
              }
              canvas.restore();
            }
            draw_I179_430__179_58(canvas, frame);
            canvas.restore();
          }
          draw_179_430(canvas, frame);
        }
        draw_179_428(canvas, frame);

// 179:440 : Bar Line (GROUP)
        draw_179_440(Canvas canvas, Rect container) {
// 179:441 : Data/Bar Chart/Background (INSTANCE)
          draw_179_441(Canvas canvas, Rect container) {
            var frame = const Rect.fromLTWH(
                290.0000000000,
                16.0000000000,
                30.0000000000,
                202.0000000000) /* H:LEFT V:TOP F:(l:290,t:16,r:23,b:23,w:30,h:202) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_0));

// I179:441;179:63 : Background (VECTOR)
            draw_I179_441__179_63(Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  ((container.width / 2.0) - (1.0000000000)),
                  0.0,
                  16.0000000000,
                  (container.height -
                      (43.0000000000))) /* H:CENTER V:TOP_BOTTOM F:(l:14,t:0,r:0,b:0,w:16,h:159) */;
              canvas.save();
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 16.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 159.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                _PathCatalog.instance.path_21.transform(transform)
              ];
              for (var path in fillGeometry) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_4);
              }
              canvas.restore();
            }
            draw_I179_441__179_63(canvas, frame);

// I179:441;179:348 : Item (TEXT)
            draw_I179_441__179_348(Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  ((container.width / 2.0) - (7.7868757248)),
                  (container.height - (20.1507415771)),
                  21.0000000000,
                  12.0000000000) /* H:CENTER V:BOTTOM F:(l:7.2131242752075195,t:181.84925842285156,r:1.7868757247924805,b:1.7868757247924805,w:21,h:12) */;
              canvas.save();
              canvas.transform(Float64List.fromList([
                0.7071068883,
                -0.7071067095,
                0.0,
                0.0,
                0.7071068883,
                0.7071067095,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var style_0 = _TextStyleCatalog.instance.ui_TextStyle_7;
              var paragraphStyle = ui.ParagraphStyle(
                fontFamily: 'Inter',
                textAlign: TextAlign.right,
                fontSize: 10.0000000000,
                fontWeight: FontWeight.w400,
              );
              var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
                ..pushStyle(style_0);
              paragraphBuilder.addText("Item");
              var paragraph = paragraphBuilder.build();
              paragraph.layout(ui.ParagraphConstraints(width: frame.width));
              canvas.drawParagraph(paragraph, Offset.zero);
              canvas.restore();
            }
            draw_I179_441__179_348(canvas, frame);
            canvas.restore();
          }
          draw_179_441(canvas, frame);

// 179:442 : Data/Bar Chart/Fill (INSTANCE)
          draw_179_442(Canvas canvas, Rect container) {
            var frame = const Rect.fromLTWH(
                304.0000000000,
                105.0000000000,
                16.0000000000,
                77.0000000000) /* H:LEFT V:TOP F:(l:304,t:105,r:23,b:23,w:16,h:77) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            canvas.drawRect(Offset.zero & frame.size,
                (Paint()..color = _ColorCatalog.instance.color_0));

// I179:442;179:58 : Background (RECTANGLE)
            draw_I179_442__179_58(Canvas canvas, Rect container) {
              var frame = Rect.fromLTWH(
                  0.0,
                  0.0,
                  16.0000000000,
                  (container.height -
                      (0.0))) /* H:SCALE V:TOP_BOTTOM F:(l:0,t:0,r:0,b:0,w:16,h:77) */;
              canvas.save();
              canvas.scale((container.width) / 16.0000000000, 1.0);
              canvas.transform(Float64List.fromList([
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0000000000,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                frame.left,
                frame.top,
                0.0,
                1.0
              ]));
              var transform = Float64List.fromList([
                (frame.width / 16.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                (frame.height / 77.0000000000),
                0.0,
                0.0,
                0.0,
                0.0,
                1.0,
                0.0,
                0.0,
                0.0,
                0.0,
                1.0
              ]);
              var fillGeometry = [
                Path()
                  ..addRRect(RRect.fromRectAndRadius(
                      Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                      const Radius.circular(8)))
              ];
              for (var path in fillGeometry) {
                canvas.drawPath(path, _PaintCatalog.instance.paint_5);
              }
              canvas.restore();
            }
            draw_I179_442__179_58(canvas, frame);
            canvas.restore();
          }
          draw_179_442(canvas, frame);
        }
        draw_179_440(canvas, frame);
      }
      draw_179_496(canvas, frame);
      canvas.restore();
    }
    draw_179_59(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(DataMobileGraphPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(DataMobileGraphPainter oldDelegate) {
    return false;
  }
}

class DataGraphResult extends StatelessWidget {
  const DataGraphResult({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: DataGraphResultPainter());
  }
}

class DataGraphResultPainter extends CustomPainter {
  DataGraphResultPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -23.0000000000);

// 179:607 : Data/Graph Result (COMPONENT)
    draw_179_607(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          23.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:23,r:0,b:0,w:343,h:35) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 179:605 : Item (TEXT)
      draw_179_605(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(32.0000000000, 0.0, 34.0000000000,
            19.0000000000) /* H:LEFT V:TOP F:(l:32,t:0,r:277,b:277,w:34,h:19) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_8;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.left,
          fontSize: 16.0000000000,
          fontWeight: FontWeight.w500,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("Item");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_179_605(canvas, frame);

// 179:617 : Statistic (TEXT)
      draw_179_617(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            (container.width - (54.0000000000)),
            0.0,
            54.0000000000,
            17.0000000000) /* H:RIGHT V:TOP F:(l:289,t:0,r:0,b:0,w:54,h:17) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_6;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.right,
          fontSize: 14.0000000000,
          fontWeight: FontWeight.w400,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("Statistic");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_179_617(canvas, frame);

// 179:606 : Divider (LINE)
      draw_179_606(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(0.0, 35.0000000000, (container.width - (0.0)),
            0.0) /* H:LEFT_RIGHT V:TOP F:(l:0,t:35,r:0,b:0,w:343,h:0) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        canvas.restore();
      }
      draw_179_606(canvas, frame);

// 179:608 : Icon (ELLIPSE)
      draw_179_608(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(0.0, 2.0000000000, 16.0000000000,
            16.0000000000) /* H:LEFT V:TOP F:(l:0,t:2,r:327,b:327,w:16,h:16) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 16.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 16.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var fillGeometry = [_PathCatalog.instance.path_22.transform(transform)];
        for (var path in fillGeometry) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_2);
        }
        canvas.restore();
      }
      draw_179_608(canvas, frame);
      canvas.restore();
    }
    draw_179_607(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(DataGraphResultPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(DataGraphResultPainter oldDelegate) {
    return false;
  }
}

class SegmentedControlStructure extends StatelessWidget {
  const SegmentedControlStructure({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: SegmentedControlStructurePainter());
  }
}

class SegmentedControlStructurePainter extends CustomPainter {
  SegmentedControlStructurePainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -23.0000000000);

// 151:698 : Segmented Control/Structure (COMPONENT)
    draw_151_698(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          23.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:23,r:0,b:0,w:343,h:50) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 151:696 : BG (VECTOR)
      draw_151_696(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(0.0, 0.0, 343.0000000000,
            50.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:343,h:50) */;
        canvas.save();
        canvas.scale((container.width) / 343.0000000000,
            (container.height) / 50.0000000000);
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 343.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 50.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var fillGeometry = [_PathCatalog.instance.path_23.transform(transform)];
        for (var path in fillGeometry) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_0);
        }
        var strokes = [_PaintCatalog.instance.paint_1];
        var strokeGeometry = [
          _PathCatalog.instance.path_24.transform(transform)
        ];
        for (var paint in strokes) {
          for (var path in strokeGeometry) {
            canvas.drawPath(path, paint);
          }
        }
        canvas.restore();
      }
      draw_151_696(canvas, frame);

// 151:700 : Search (TEXT)
      draw_151_700(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            ((container.width / 2.0) - (-56.5000000000)),
            ((container.height / 2.0) - 9.0000000000),
            54.0000000000,
            19.0000000000) /* H:CENTER V:CENTER F:(l:228,t:16,r:61,b:61,w:54,h:19) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.center,
          fontSize: 16.0000000000,
          fontWeight: FontWeight.w500,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("Search");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_151_700(canvas, frame);

// 151:768 : Search (TEXT)
      draw_151_768(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            ((container.width / 2.0) - (110.5000000000)),
            ((container.height / 2.0) - 9.0000000000),
            54.0000000000,
            19.0000000000) /* H:CENTER V:CENTER F:(l:61,t:16,r:228,b:228,w:54,h:19) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.center,
          fontSize: 16.0000000000,
          fontWeight: FontWeight.w500,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("Search");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_151_768(canvas, frame);

// 151:701 : Left Selected (GROUP)
      draw_151_701(Canvas canvas, Rect container) {
// 151:699 : BG (VECTOR)
        draw_151_699(Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              2.0000000000,
              2.0000000000,
              (container.width - (171.5000000000)),
              46.0000000000) /* H:LEFT_RIGHT V:SCALE F:(l:2,t:2,r:169.5,b:169.5,w:171.5,h:46) */;
          canvas.save();
          canvas.scale(1.0, (container.height) / 50.0000000000);
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 171.5000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 46.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            _PathCatalog.instance.path_25.transform(transform)
          ];
          for (var path in fillGeometry) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_3);
          }
          canvas.restore();
        }
        draw_151_699(canvas, frame);

// 151:697 : Search (TEXT)
        draw_151_697(Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              ((container.width / 2.0) - (110.5000000000)),
              ((container.height / 2.0) - 9.0000000000),
              55.0000000000,
              19.0000000000) /* H:CENTER V:CENTER F:(l:61,t:16,r:227,b:227,w:55,h:19) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var style_0 = _TextStyleCatalog.instance.ui_TextStyle_9;
          var paragraphStyle = ui.ParagraphStyle(
            fontFamily: 'Inter',
            textAlign: TextAlign.center,
            fontSize: 16.0000000000,
            fontWeight: FontWeight.w600,
          );
          var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
            ..pushStyle(style_0);
          paragraphBuilder.addText("Search");
          var paragraph = paragraphBuilder.build();
          paragraph.layout(ui.ParagraphConstraints(width: frame.width));
          canvas.drawParagraph(paragraph, Offset.zero);
          canvas.restore();
        }
        draw_151_697(canvas, frame);
      }
      draw_151_701(canvas, frame);

// 151:727 : Right Selected (GROUP)
      draw_151_727(Canvas canvas, Rect container) {
// 151:728 : BG (VECTOR)
        draw_151_728(Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              169.0000000000,
              2.0000000000,
              (container.width - (171.5000000000)),
              46.0000000000) /* H:LEFT_RIGHT V:SCALE F:(l:169,t:2,r:2.5,b:2.5,w:171.5,h:46) */;
          canvas.save();
          canvas.scale(1.0, (container.height) / 50.0000000000);
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 171.5000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 46.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            _PathCatalog.instance.path_26.transform(transform)
          ];
          for (var path in fillGeometry) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_3);
          }
          canvas.restore();
        }
        draw_151_728(canvas, frame);

// 151:729 : Search (TEXT)
        draw_151_729(Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              ((container.width / 2.0) - (-56.5000000000)),
              ((container.height / 2.0) - 9.0000000000),
              55.0000000000,
              19.0000000000) /* H:CENTER V:CENTER F:(l:228,t:16,r:60,b:60,w:55,h:19) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var style_0 = _TextStyleCatalog.instance.ui_TextStyle_9;
          var paragraphStyle = ui.ParagraphStyle(
            fontFamily: 'Inter',
            textAlign: TextAlign.center,
            fontSize: 16.0000000000,
            fontWeight: FontWeight.w600,
          );
          var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
            ..pushStyle(style_0);
          paragraphBuilder.addText("Search");
          var paragraph = paragraphBuilder.build();
          paragraph.layout(ui.ParagraphConstraints(width: frame.width));
          canvas.drawParagraph(paragraph, Offset.zero);
          canvas.restore();
        }
        draw_151_729(canvas, frame);
      }
      draw_151_727(canvas, frame);
      canvas.restore();
    }
    draw_151_698(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(SegmentedControlStructurePainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(SegmentedControlStructurePainter oldDelegate) {
    return false;
  }
}

class SegmentedControlLeft extends StatelessWidget {
  const SegmentedControlLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: SegmentedControlLeftPainter());
  }
}

class SegmentedControlLeftPainter extends CustomPainter {
  SegmentedControlLeftPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -23.0000000000);

// 151:717 : Segmented Control/Left (COMPONENT)
    draw_151_717(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          23.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:23,r:0,b:0,w:343,h:50) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 151:711 : Segmented Control/Structure (INSTANCE)
      draw_151_711(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(0.0, 0.0, 343.0000000000,
            50.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:343,h:50) */;
        canvas.save();
        canvas.scale((container.width) / 343.0000000000,
            (container.height) / 50.0000000000);
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        canvas.drawRect(Offset.zero & frame.size,
            (Paint()..color = _ColorCatalog.instance.color_0));

// I151:711;151:696 : BG (VECTOR)
        draw_I151_711__151_696(Canvas canvas, Rect container) {
          var frame = const Rect.fromLTWH(0.0, 0.0, 343.0000000000,
              50.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:343,h:50) */;
          canvas.save();
          canvas.scale((container.width) / 343.0000000000,
              (container.height) / 50.0000000000);
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 343.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 50.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            _PathCatalog.instance.path_27.transform(transform)
          ];
          for (var path in fillGeometry) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_0);
          }
          var strokes = [_PaintCatalog.instance.paint_1];
          var strokeGeometry = [
            _PathCatalog.instance.path_28.transform(transform)
          ];
          for (var paint in strokes) {
            for (var path in strokeGeometry) {
              canvas.drawPath(path, paint);
            }
          }
          canvas.restore();
        }
        draw_I151_711__151_696(canvas, frame);

// I151:711;151:700 : Search (TEXT)
        draw_I151_711__151_700(Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              ((container.width / 2.0) - (-56.5000000000)),
              ((container.height / 2.0) - 9.0000000000),
              54.0000000000,
              19.0000000000) /* H:CENTER V:CENTER F:(l:228,t:16,r:61,b:61,w:54,h:19) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
          var paragraphStyle = ui.ParagraphStyle(
            fontFamily: 'Inter',
            textAlign: TextAlign.center,
            fontSize: 16.0000000000,
            fontWeight: FontWeight.w500,
          );
          var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
            ..pushStyle(style_0);
          paragraphBuilder.addText("Search");
          var paragraph = paragraphBuilder.build();
          paragraph.layout(ui.ParagraphConstraints(width: frame.width));
          canvas.drawParagraph(paragraph, Offset.zero);
          canvas.restore();
        }
        draw_I151_711__151_700(canvas, frame);

// I151:711;151:768 : Search (TEXT)
        draw_I151_711__151_768(Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              ((container.width / 2.0) - (110.5000000000)),
              ((container.height / 2.0) - 9.0000000000),
              54.0000000000,
              19.0000000000) /* H:CENTER V:CENTER F:(l:61,t:16,r:228,b:228,w:54,h:19) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
          var paragraphStyle = ui.ParagraphStyle(
            fontFamily: 'Inter',
            textAlign: TextAlign.center,
            fontSize: 16.0000000000,
            fontWeight: FontWeight.w500,
          );
          var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
            ..pushStyle(style_0);
          paragraphBuilder.addText("Search");
          var paragraph = paragraphBuilder.build();
          paragraph.layout(ui.ParagraphConstraints(width: frame.width));
          canvas.drawParagraph(paragraph, Offset.zero);
          canvas.restore();
        }
        draw_I151_711__151_768(canvas, frame);

// I151:711;151:701 : Left Selected (GROUP)
        draw_I151_711__151_701(Canvas canvas, Rect container) {
// I151:711;151:699 : BG (VECTOR)
          draw_I151_711__151_699(Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                2.0000000000,
                2.0000000000,
                (container.width - (171.5000000000)),
                46.0000000000) /* H:LEFT_RIGHT V:SCALE F:(l:2,t:2,r:169.5,b:169.5,w:171.5,h:46) */;
            canvas.save();
            canvas.scale(1.0, (container.height) / 50.0000000000);
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var transform = Float64List.fromList([
              (frame.width / 171.5000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              (frame.height / 46.0000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0
            ]);
            var fillGeometry = [
              _PathCatalog.instance.path_29.transform(transform)
            ];
            for (var path in fillGeometry) {
              canvas.drawPath(path, _PaintCatalog.instance.paint_3);
            }
            canvas.restore();
          }
          draw_I151_711__151_699(canvas, frame);

// I151:711;151:697 : Search (TEXT)
          draw_I151_711__151_697(Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                ((container.width / 2.0) - (110.5000000000)),
                ((container.height / 2.0) - 9.0000000000),
                55.0000000000,
                19.0000000000) /* H:CENTER V:CENTER F:(l:61,t:16,r:227,b:227,w:55,h:19) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var style_0 = _TextStyleCatalog.instance.ui_TextStyle_10;
            var paragraphStyle = ui.ParagraphStyle(
              fontFamily: 'Inter',
              textAlign: TextAlign.center,
              fontSize: 16.0000000000,
              fontWeight: FontWeight.w600,
            );
            var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
              ..pushStyle(style_0);
            paragraphBuilder.addText("Search");
            var paragraph = paragraphBuilder.build();
            paragraph.layout(ui.ParagraphConstraints(width: frame.width));
            canvas.drawParagraph(paragraph, Offset.zero);
            canvas.restore();
          }
          draw_I151_711__151_697(canvas, frame);
        }
        draw_I151_711__151_701(canvas, frame);

// I151:711;151:727 : Right Selected (GROUP)
        draw_I151_711__151_727(Canvas canvas, Rect container) {
// I151:711;151:728 : BG (VECTOR)
          draw_I151_711__151_728(Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                169.0000000000,
                2.0000000000,
                (container.width - (171.5000000000)),
                46.0000000000) /* H:LEFT_RIGHT V:SCALE F:(l:169,t:2,r:2.5,b:2.5,w:171.5,h:46) */;
            canvas.save();
            canvas.scale(1.0, (container.height) / 50.0000000000);
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var transform = Float64List.fromList([
              (frame.width / 171.5000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              (frame.height / 46.0000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0
            ]);
            var fillGeometry = [
              _PathCatalog.instance.path_30.transform(transform)
            ];
            for (var path in fillGeometry) {
              canvas.drawPath(path, _PaintCatalog.instance.paint_3);
            }
            canvas.restore();
          }
          draw_I151_711__151_728(canvas, frame);

// I151:711;151:729 : Search (TEXT)
          draw_I151_711__151_729(Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                ((container.width / 2.0) - (-56.5000000000)),
                ((container.height / 2.0) - 9.0000000000),
                55.0000000000,
                19.0000000000) /* H:CENTER V:CENTER F:(l:228,t:16,r:60,b:60,w:55,h:19) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var style_0 = _TextStyleCatalog.instance.ui_TextStyle_10;
            var paragraphStyle = ui.ParagraphStyle(
              fontFamily: 'Inter',
              textAlign: TextAlign.center,
              fontSize: 16.0000000000,
              fontWeight: FontWeight.w600,
            );
            var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
              ..pushStyle(style_0);
            paragraphBuilder.addText("Search");
            var paragraph = paragraphBuilder.build();
            paragraph.layout(ui.ParagraphConstraints(width: frame.width));
            canvas.drawParagraph(paragraph, Offset.zero);
            canvas.restore();
          }
          draw_I151_711__151_729(canvas, frame);
        }
        draw_I151_711__151_727(canvas, frame);
        canvas.restore();
      }
      draw_151_711(canvas, frame);
      canvas.restore();
    }
    draw_151_717(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(SegmentedControlLeftPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(SegmentedControlLeftPainter oldDelegate) {
    return false;
  }
}

class MessageReceive extends StatelessWidget {
  const MessageReceive({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: MessageReceivePainter());
  }
}

class MessageReceivePainter extends CustomPainter {
  MessageReceivePainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -23.0000000000);

// 152:97 : Message/Receive (COMPONENT)
    draw_152_97(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          23.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:23,r:0,b:0,w:235,h:126) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 152:95 : BG (VECTOR)
      draw_152_95(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(0.0, 0.0, 235.0000000000,
            126.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:235,h:126) */;
        canvas.save();
        canvas.scale((container.width) / 235.0000000000,
            (container.height) / 126.0000000000);
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 235.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 126.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var fillGeometry = [_PathCatalog.instance.path_31.transform(transform)];
        for (var path in fillGeometry) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_0);
        }
        var strokes = [_PaintCatalog.instance.paint_1];
        var strokeGeometry = [
          _PathCatalog.instance.path_32.transform(transform)
        ];
        for (var paint in strokes) {
          for (var path in strokeGeometry) {
            canvas.drawPath(path, paint);
          }
        }
        canvas.restore();
      }
      draw_152_95(canvas, frame);

// 152:96 : Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla quam eu faci lisis mollis. (TEXT)
      draw_152_96(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            16.0000000000,
            15.0000000000,
            (container.width - (32.0000000000)),
            72.0000000000) /* H:LEFT_RIGHT V:TOP F:(l:16,t:15,r:16,b:16,w:203,h:72) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_6;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.left,
          fontSize: 14.0000000000,
          fontWeight: FontWeight.w400,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla quam eu faci lisis mollis. ");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_152_96(canvas, frame);
      canvas.restore();
    }
    draw_152_97(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(MessageReceivePainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(MessageReceivePainter oldDelegate) {
    return false;
  }
}

class MessageSend extends StatelessWidget {
  const MessageSend({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: MessageSendPainter());
  }
}

class MessageSendPainter extends CustomPainter {
  MessageSendPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -23.0000000000);

// 152:103 : Message/Send (COMPONENT)
    draw_152_103(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          23.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:23,r:0,b:0,w:235,h:86) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 152:101 : Vector (VECTOR)
      draw_152_101(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(235.0000000000, 0.0, 235.0000000000,
            86.0000000000) /* H:SCALE V:SCALE F:(l:235,t:0,r:-235,b:-235,w:235,h:86) */;
        canvas.save();
        canvas.scale((container.width) / 235.0000000000,
            (container.height) / 86.0000000000);
        canvas.transform(Float64List.fromList([
          -1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 235.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 86.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var fillGeometry = [_PathCatalog.instance.path_33.transform(transform)];
        for (var path in fillGeometry) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_2);
        }
        canvas.restore();
      }
      draw_152_101(canvas, frame);

// 152:102 : Lorem ipsum dolor sit amet, consectetur adipiscing elit. (TEXT)
      draw_152_102(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            16.0000000000,
            15.0000000000,
            (container.width - (32.0000000000)),
            34.0000000000) /* H:LEFT_RIGHT V:TOP F:(l:16,t:15,r:16,b:16,w:203,h:34) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_11;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.left,
          fontSize: 14.0000000000,
          fontWeight: FontWeight.w400,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_152_102(canvas, frame);
      canvas.restore();
    }
    draw_152_103(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(MessageSendPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(MessageSendPainter oldDelegate) {
    return false;
  }
}

class RadioSelected extends StatelessWidget {
  const RadioSelected({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: RadioSelectedPainter());
  }
}

class RadioSelectedPainter extends CustomPainter {
  RadioSelectedPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -25.0000000000);

// 155:100 : Radio/Selected (COMPONENT)
    draw_155_100(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          25.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:25,r:0,b:0,w:343,h:48) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 155:97 : Radio option here... (TEXT)
      draw_155_97(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            0.0,
            ((container.height / 2.0) - 9.0000000000),
            149.0000000000,
            19.0000000000) /* H:LEFT V:CENTER F:(l:0,t:15,r:194,b:194,w:149,h:19) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.left,
          fontSize: 16.0000000000,
          fontWeight: FontWeight.w500,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("Radio option here...");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_155_97(canvas, frame);

// 155:98 : Divider (LINE)
      draw_155_98(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            0.0,
            (container.height - (-1.0000000000)),
            (container.width - (0.0)),
            0.0) /* H:LEFT_RIGHT V:BOTTOM F:(l:0,t:49,r:0,b:0,w:343,h:0) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        canvas.restore();
      }
      draw_155_98(canvas, frame);

// 155:247 : Radio (GROUP)
      draw_155_247(Canvas canvas, Rect container) {
// 155:99 : Radio (ELLIPSE)
        draw_155_99(Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              (container.width - (16.0000000000)),
              16.0000000000,
              16.0000000000,
              16.0000000000) /* H:RIGHT V:TOP F:(l:327,t:16,r:0,b:0,w:16,h:16) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 16.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 16.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var strokes = [_PaintCatalog.instance.paint_5];
          var strokeGeometry = [
            _PathCatalog.instance.path_35.transform(transform)
          ];
          for (var paint in strokes) {
            for (var path in strokeGeometry) {
              canvas.drawPath(path, paint);
            }
          }
          canvas.restore();
        }
        draw_155_99(canvas, frame);

// 155:101 : Radio (ELLIPSE)
        draw_155_101(Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              (container.width - (14.0000000000)),
              18.0000000000,
              12.0000000000,
              12.0000000000) /* H:RIGHT V:TOP F:(l:329,t:18,r:2,b:2,w:12,h:12) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 12.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 12.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            _PathCatalog.instance.path_36.transform(transform)
          ];
          for (var path in fillGeometry) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_2);
          }
          canvas.restore();
        }
        draw_155_101(canvas, frame);
      }
      draw_155_247(canvas, frame);
      canvas.restore();
    }
    draw_155_100(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(RadioSelectedPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(RadioSelectedPainter oldDelegate) {
    return false;
  }
}

class RadioUnselected extends StatelessWidget {
  const RadioUnselected({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: RadioUnselectedPainter());
  }
}

class RadioUnselectedPainter extends CustomPainter {
  RadioUnselectedPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -25.0000000000);

// 155:10 : Radio/Unselected (COMPONENT)
    draw_155_10(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          25.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:25,r:0,b:0,w:343,h:48) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 155:8 : Radio option here... (TEXT)
      draw_155_8(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            0.0,
            ((container.height / 2.0) - 8.0000000000),
            149.0000000000,
            19.0000000000) /* H:LEFT V:CENTER F:(l:0,t:16,r:194,b:194,w:149,h:19) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.left,
          fontSize: 16.0000000000,
          fontWeight: FontWeight.w500,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("Radio option here...");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_155_8(canvas, frame);

// 155:11 : Divider (LINE)
      draw_155_11(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            0.0,
            (container.height - (-1.0000000000)),
            (container.width - (0.0)),
            0.0) /* H:LEFT_RIGHT V:BOTTOM F:(l:0,t:49,r:0,b:0,w:343,h:0) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        canvas.restore();
      }
      draw_155_11(canvas, frame);

// 155:82 : Radio (ELLIPSE)
      draw_155_82(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            (container.width - (16.0000000000)),
            16.0000000000,
            16.0000000000,
            16.0000000000) /* H:RIGHT V:TOP F:(l:327,t:16,r:0,b:0,w:16,h:16) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 16.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 16.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var strokes = [_PaintCatalog.instance.paint_6];
        var strokeGeometry = [
          _PathCatalog.instance.path_38.transform(transform)
        ];
        for (var paint in strokes) {
          for (var path in strokeGeometry) {
            canvas.drawPath(path, paint);
          }
        }
        canvas.restore();
      }
      draw_155_82(canvas, frame);
      canvas.restore();
    }
    draw_155_10(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(RadioUnselectedPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(RadioUnselectedPainter oldDelegate) {
    return false;
  }
}

class SegmentedControlRight extends StatelessWidget {
  const SegmentedControlRight({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: SegmentedControlRightPainter());
  }
}

class SegmentedControlRightPainter extends CustomPainter {
  SegmentedControlRightPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -23.0000000000);

// 151:767 : Segmented Control/Right (COMPONENT)
    draw_151_767(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          23.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:23,r:0,b:0,w:343,h:50) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 151:758 : Segmented Control/Structure (INSTANCE)
      draw_151_758(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(0.0, 0.0, 343.0000000000,
            50.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:343,h:50) */;
        canvas.save();
        canvas.scale((container.width) / 343.0000000000,
            (container.height) / 50.0000000000);
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        canvas.drawRect(Offset.zero & frame.size,
            (Paint()..color = _ColorCatalog.instance.color_0));

// I151:758;151:696 : BG (VECTOR)
        draw_I151_758__151_696(Canvas canvas, Rect container) {
          var frame = const Rect.fromLTWH(0.0, 0.0, 343.0000000000,
              50.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:343,h:50) */;
          canvas.save();
          canvas.scale((container.width) / 343.0000000000,
              (container.height) / 50.0000000000);
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 343.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 50.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            _PathCatalog.instance.path_39.transform(transform)
          ];
          for (var path in fillGeometry) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_0);
          }
          var strokes = [_PaintCatalog.instance.paint_1];
          var strokeGeometry = [
            _PathCatalog.instance.path_40.transform(transform)
          ];
          for (var paint in strokes) {
            for (var path in strokeGeometry) {
              canvas.drawPath(path, paint);
            }
          }
          canvas.restore();
        }
        draw_I151_758__151_696(canvas, frame);

// I151:758;151:700 : Search (TEXT)
        draw_I151_758__151_700(Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              ((container.width / 2.0) - (-56.5000000000)),
              ((container.height / 2.0) - 9.0000000000),
              54.0000000000,
              19.0000000000) /* H:CENTER V:CENTER F:(l:228,t:16,r:61,b:61,w:54,h:19) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
          var paragraphStyle = ui.ParagraphStyle(
            fontFamily: 'Inter',
            textAlign: TextAlign.center,
            fontSize: 16.0000000000,
            fontWeight: FontWeight.w500,
          );
          var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
            ..pushStyle(style_0);
          paragraphBuilder.addText("Search");
          var paragraph = paragraphBuilder.build();
          paragraph.layout(ui.ParagraphConstraints(width: frame.width));
          canvas.drawParagraph(paragraph, Offset.zero);
          canvas.restore();
        }
        draw_I151_758__151_700(canvas, frame);

// I151:758;151:768 : Search (TEXT)
        draw_I151_758__151_768(Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              ((container.width / 2.0) - (110.5000000000)),
              ((container.height / 2.0) - 9.0000000000),
              54.0000000000,
              19.0000000000) /* H:CENTER V:CENTER F:(l:61,t:16,r:228,b:228,w:54,h:19) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
          var paragraphStyle = ui.ParagraphStyle(
            fontFamily: 'Inter',
            textAlign: TextAlign.center,
            fontSize: 16.0000000000,
            fontWeight: FontWeight.w500,
          );
          var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
            ..pushStyle(style_0);
          paragraphBuilder.addText("Search");
          var paragraph = paragraphBuilder.build();
          paragraph.layout(ui.ParagraphConstraints(width: frame.width));
          canvas.drawParagraph(paragraph, Offset.zero);
          canvas.restore();
        }
        draw_I151_758__151_768(canvas, frame);

// I151:758;151:701 : Left Selected (GROUP)
        draw_I151_758__151_701(Canvas canvas, Rect container) {
// I151:758;151:699 : BG (VECTOR)
          draw_I151_758__151_699(Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                2.0000000000,
                2.0000000000,
                (container.width - (171.5000000000)),
                46.0000000000) /* H:LEFT_RIGHT V:SCALE F:(l:2,t:2,r:169.5,b:169.5,w:171.5,h:46) */;
            canvas.save();
            canvas.scale(1.0, (container.height) / 50.0000000000);
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var transform = Float64List.fromList([
              (frame.width / 171.5000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              (frame.height / 46.0000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0
            ]);
            var fillGeometry = [
              _PathCatalog.instance.path_41.transform(transform)
            ];
            for (var path in fillGeometry) {
              canvas.drawPath(path, _PaintCatalog.instance.paint_3);
            }
            canvas.restore();
          }
          draw_I151_758__151_699(canvas, frame);

// I151:758;151:697 : Search (TEXT)
          draw_I151_758__151_697(Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                ((container.width / 2.0) - (110.5000000000)),
                ((container.height / 2.0) - 9.0000000000),
                55.0000000000,
                19.0000000000) /* H:CENTER V:CENTER F:(l:61,t:16,r:227,b:227,w:55,h:19) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var style_0 = _TextStyleCatalog.instance.ui_TextStyle_9;
            var paragraphStyle = ui.ParagraphStyle(
              fontFamily: 'Inter',
              textAlign: TextAlign.center,
              fontSize: 16.0000000000,
              fontWeight: FontWeight.w600,
            );
            var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
              ..pushStyle(style_0);
            paragraphBuilder.addText("Search");
            var paragraph = paragraphBuilder.build();
            paragraph.layout(ui.ParagraphConstraints(width: frame.width));
            canvas.drawParagraph(paragraph, Offset.zero);
            canvas.restore();
          }
          draw_I151_758__151_697(canvas, frame);
        }
        draw_I151_758__151_701(canvas, frame);

// I151:758;151:727 : Right Selected (GROUP)
        draw_I151_758__151_727(Canvas canvas, Rect container) {
// I151:758;151:728 : BG (VECTOR)
          draw_I151_758__151_728(Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                169.0000000000,
                2.0000000000,
                (container.width - (171.5000000000)),
                46.0000000000) /* H:LEFT_RIGHT V:SCALE F:(l:169,t:2,r:2.5,b:2.5,w:171.5,h:46) */;
            canvas.save();
            canvas.scale(1.0, (container.height) / 50.0000000000);
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var transform = Float64List.fromList([
              (frame.width / 171.5000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              (frame.height / 46.0000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0
            ]);
            var fillGeometry = [
              _PathCatalog.instance.path_42.transform(transform)
            ];
            for (var path in fillGeometry) {
              canvas.drawPath(path, _PaintCatalog.instance.paint_3);
            }
            canvas.restore();
          }
          draw_I151_758__151_728(canvas, frame);

// I151:758;151:729 : Search (TEXT)
          draw_I151_758__151_729(Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                ((container.width / 2.0) - (-56.5000000000)),
                ((container.height / 2.0) - 9.0000000000),
                55.0000000000,
                19.0000000000) /* H:CENTER V:CENTER F:(l:228,t:16,r:60,b:60,w:55,h:19) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var style_0 = _TextStyleCatalog.instance.ui_TextStyle_10;
            var paragraphStyle = ui.ParagraphStyle(
              fontFamily: 'Inter',
              textAlign: TextAlign.center,
              fontSize: 16.0000000000,
              fontWeight: FontWeight.w600,
            );
            var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
              ..pushStyle(style_0);
            paragraphBuilder.addText("Search");
            var paragraph = paragraphBuilder.build();
            paragraph.layout(ui.ParagraphConstraints(width: frame.width));
            canvas.drawParagraph(paragraph, Offset.zero);
            canvas.restore();
          }
          draw_I151_758__151_729(canvas, frame);
        }
        draw_I151_758__151_727(canvas, frame);
        canvas.restore();
      }
      draw_151_758(canvas, frame);
      canvas.restore();
    }
    draw_151_767(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(SegmentedControlRightPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(SegmentedControlRightPainter oldDelegate) {
    return false;
  }
}

class ButtonSecondary extends StatelessWidget {
  const ButtonSecondary({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: ButtonSecondaryPainter());
  }
}

class ButtonSecondaryPainter extends CustomPainter {
  ButtonSecondaryPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -23.0000000000);

// 144:2137 : Button/Secondary (COMPONENT)
    draw_144_2137(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          23.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:23,r:0,b:0,w:131,h:51) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_1));

// 144:2136 : Click Me (TEXT)
      draw_144_2136(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(32.0000000000, 16.0000000000, 67.0000000000,
            19.0000000000) /* H:SCALE V:SCALE F:(l:32,t:16,r:32,b:32,w:67,h:19) */;
        canvas.save();
        canvas.scale((container.width) / 131.0000000000,
            (container.height) / 51.0000000000);
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_12;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.center,
          fontSize: 16.0000000000,
          fontWeight: FontWeight.w600,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("Click Me");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_144_2136(canvas, frame);
      canvas.restore();
    }
    draw_144_2137(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(ButtonSecondaryPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(ButtonSecondaryPainter oldDelegate) {
    return false;
  }
}

class ButtonDisabled extends StatelessWidget {
  const ButtonDisabled({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: ButtonDisabledPainter());
  }
}

class ButtonDisabledPainter extends CustomPainter {
  ButtonDisabledPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -23.0000000000);

// 144:2144 : Button/Disabled (COMPONENT)
    draw_144_2144(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          23.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:23,r:0,b:0,w:131,h:51) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_1));

// 144:2143 : Click Me (TEXT)
      draw_144_2143(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(32.0000000000, 16.0000000000, 67.0000000000,
            19.0000000000) /* H:SCALE V:SCALE F:(l:32,t:16,r:32,b:32,w:67,h:19) */;
        canvas.save();
        canvas.scale((container.width) / 131.0000000000,
            (container.height) / 51.0000000000);
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_9;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.center,
          fontSize: 16.0000000000,
          fontWeight: FontWeight.w600,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("Click Me");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_144_2143(canvas, frame);
      canvas.restore();
    }
    draw_144_2144(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(ButtonDisabledPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(ButtonDisabledPainter oldDelegate) {
    return false;
  }
}

class CheckboxFilled extends StatelessWidget {
  const CheckboxFilled({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: CheckboxFilledPainter());
  }
}

class CheckboxFilledPainter extends CustomPainter {
  CheckboxFilledPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -23.0000000000);

// 144:2164 : Checkbox/Filled (COMPONENT)
    draw_144_2164(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          23.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:23,r:0,b:0,w:16,h:16) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 144:2161 : BG (RECTANGLE)
      draw_144_2161(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(0.0, 0.0, 16.0000000000,
            16.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:16,h:16) */;
        canvas.save();
        canvas.scale((container.width) / 16.0000000000,
            (container.height) / 16.0000000000);
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 16.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 16.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var fillGeometry = [
          Path()
            ..addRRect(RRect.fromRectAndRadius(
                Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                const Radius.circular(4)))
        ];
        for (var path in fillGeometry) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_2);
        }
        var strokes = [_PaintCatalog.instance.paint_5];
        var strokeGeometry = [
          _PathCatalog.instance.path_43.transform(transform)
        ];
        for (var paint in strokes) {
          for (var path in strokeGeometry) {
            canvas.drawPath(path, paint);
          }
        }
        canvas.restore();
      }
      draw_144_2161(canvas, frame);

// 144:2162 : Icon/Checkmark (INSTANCE)
      draw_144_2162(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(4.0000000000, 4.0000000000, 8.0000000000,
            7.0000000000) /* H:LEFT V:TOP F:(l:4,t:4,r:4,b:4,w:8,h:7) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        canvas.drawRect(Offset.zero & frame.size,
            (Paint()..color = _ColorCatalog.instance.color_0));

// I144:2162;144:2152 : Icon/Checkmark (VECTOR)
        draw_I144_2162__144_2152(Canvas canvas, Rect container) {
          var frame = const Rect.fromLTWH(0.0, 0.8750000000, 7.1999998093,
              6.1250000000) /* H:SCALE V:SCALE F:(l:0,t:0.875,r:0.8000001907348633,b:0.8000001907348633,w:7.199999809265137,h:6.125) */;
          canvas.save();
          canvas.scale((container.width) / 8.0000000000,
              (container.height) / 7.0000000000);
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 7.1999998093),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 6.1250000000),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var strokes = [_PaintCatalog.instance.paint_3];
          var strokeGeometry = [
            _PathCatalog.instance.path_44.transform(transform)
          ];
          for (var paint in strokes) {
            for (var path in strokeGeometry) {
              canvas.drawPath(path, paint);
            }
          }
          canvas.restore();
        }
        draw_I144_2162__144_2152(canvas, frame);
        canvas.restore();
      }
      draw_144_2162(canvas, frame);
      canvas.restore();
    }
    draw_144_2164(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(CheckboxFilledPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(CheckboxFilledPainter oldDelegate) {
    return false;
  }
}

class CheckboxOptionFilled extends StatelessWidget {
  const CheckboxOptionFilled({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: CheckboxOptionFilledPainter());
  }
}

class CheckboxOptionFilledPainter extends CustomPainter {
  CheckboxOptionFilledPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -22.0000000000);

// 144:2250 : Checkbox Option/Filled (COMPONENT)
    draw_144_2250(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          22.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:22,r:0,b:0,w:177,h:17) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 144:2245 : Checkbox/Filled (INSTANCE)
      draw_144_2245(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(0.0, 0.5000000000, 16.0000000000,
            16.0000000000) /* H:LEFT V:TOP F:(l:0,t:0.5,r:161,b:161,w:16,h:16) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        canvas.drawRect(Offset.zero & frame.size,
            (Paint()..color = _ColorCatalog.instance.color_0));

// I144:2245;144:2161 : BG (RECTANGLE)
        draw_I144_2245__144_2161(Canvas canvas, Rect container) {
          var frame = const Rect.fromLTWH(0.0, 0.0, 16.0000000000,
              16.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:16,h:16) */;
          canvas.save();
          canvas.scale((container.width) / 16.0000000000,
              (container.height) / 16.0000000000);
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var transform = Float64List.fromList([
            (frame.width / 16.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 16.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0
          ]);
          var fillGeometry = [
            Path()
              ..addRRect(RRect.fromRectAndRadius(
                  Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                  const Radius.circular(4)))
          ];
          for (var path in fillGeometry) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_2);
          }
          var strokes = [_PaintCatalog.instance.paint_5];
          var strokeGeometry = [
            _PathCatalog.instance.path_45.transform(transform)
          ];
          for (var paint in strokes) {
            for (var path in strokeGeometry) {
              canvas.drawPath(path, paint);
            }
          }
          canvas.restore();
        }
        draw_I144_2245__144_2161(canvas, frame);

// I144:2245;144:2162 : Icon/Checkmark (INSTANCE)
        draw_I144_2245__144_2162(Canvas canvas, Rect container) {
          var frame = const Rect.fromLTWH(4.0000000000, 4.0000000000, 8.0000000000,
              7.0000000000) /* H:LEFT V:TOP F:(l:4,t:4,r:4,b:4,w:8,h:7) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          canvas.drawRect(Offset.zero & frame.size,
              (Paint()..color = _ColorCatalog.instance.color_0));

// I144:2245;144:2162;144:2152 : Icon/Checkmark (VECTOR)
          draw_I144_2245__144_2162__144_2152(Canvas canvas, Rect container) {
            var frame = const Rect.fromLTWH(0.0, 0.8750000000, 7.1999998093,
                6.1250000000) /* H:SCALE V:SCALE F:(l:0,t:0.875,r:0.8000001907348633,b:0.8000001907348633,w:7.199999809265137,h:6.125) */;
            canvas.save();
            canvas.scale((container.width) / 8.0000000000,
                (container.height) / 7.0000000000);
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var transform = Float64List.fromList([
              (frame.width / 7.1999998093),
              0.0,
              0.0,
              0.0,
              0.0,
              (frame.height / 6.1250000000),
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0
            ]);
            var strokes = [_PaintCatalog.instance.paint_3];
            var strokeGeometry = [
              _PathCatalog.instance.path_46.transform(transform)
            ];
            for (var paint in strokes) {
              for (var path in strokeGeometry) {
                canvas.drawPath(path, paint);
              }
            }
            canvas.restore();
          }
          draw_I144_2245__144_2162__144_2152(canvas, frame);
          canvas.restore();
        }
        draw_I144_2245__144_2162(canvas, frame);
        canvas.restore();
      }
      draw_144_2245(canvas, frame);

// 144:2246 : Text here (TEXT)
      draw_144_2246(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            24.0000000000,
            0.0,
            (container.width - (23.0000000000)),
            17.0000000000) /* H:LEFT_RIGHT V:TOP F:(l:24,t:0,r:-1,b:-1,w:154,h:17) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_2;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.left,
          fontSize: 14.0000000000,
          fontWeight: FontWeight.w400,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("Text here");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_144_2246(canvas, frame);
      canvas.restore();
    }
    draw_144_2250(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(CheckboxOptionFilledPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(CheckboxOptionFilledPainter oldDelegate) {
    return false;
  }
}

class ContentComment extends StatelessWidget {
  const ContentComment({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: ContentCommentPainter());
  }
}

class ContentCommentPainter extends CustomPainter {
  ContentCommentPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -23.0000000000);

// 163:693 : Content/Comment (COMPONENT)
    draw_163_693(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          23.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:23,r:0,b:0,w:328,h:77.0000228881836) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 163:688 : Content Block (RECTANGLE)
      draw_163_688(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(0.0, 0.0, 32.0000000000,
            32.0000000000) /* H:LEFT V:TOP F:(l:0,t:0,r:296,b:296,w:32,h:32) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 32.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 32.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var fillGeometry = [
          Path()
            ..addRRect(RRect.fromRectAndRadius(
                Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                const Radius.circular(100)))
        ];
        for (var path in fillGeometry) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_0);
        }
        canvas.restore();
      }
      draw_163_688(canvas, frame);

// 163:689 : First Last (TEXT)
      draw_163_689(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(50.0000000000, 0.0, 72.0000000000,
            19.0000000000) /* H:LEFT V:TOP F:(l:50,t:0,r:206,b:206,w:72,h:19) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_4;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.left,
          fontSize: 16.0000000000,
          fontWeight: FontWeight.w600,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("First Last");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_163_689(canvas, frame);

// 163:690 : 8m ago (TEXT)
      draw_163_690(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            (container.width - (50.0000000000)),
            2.0000000000,
            50.0000000000,
            17.0000000000) /* H:RIGHT V:TOP F:(l:278,t:2,r:0,b:0,w:50,h:17) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_5;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.right,
          fontSize: 14.0000000000,
          fontWeight: FontWeight.w400,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("8m ago");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_163_690(canvas, frame);

// 163:691 : He'll want to use your yacht, and I don't want this thing smelling like fish. (TEXT)
      draw_163_691(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            50.0000000000,
            27.0000000000,
            (container.width - (74.0000000000)),
            34.0000000000) /* H:LEFT_RIGHT V:TOP F:(l:50,t:27,r:24,b:24,w:254,h:34) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_6;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.left,
          fontSize: 14.0000000000,
          fontWeight: FontWeight.w400,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText(
            "He'll want to use your yacht, and I don't want this thing smelling like fish.");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_163_691(canvas, frame);

// 163:692 : Divider Line (LINE)
      draw_163_692(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            0.0,
            (container.height - (-0.0000076294)),
            (container.width - (0.0)),
            0.0) /* H:LEFT_RIGHT V:BOTTOM F:(l:0,t:77.00003051757812,r:0,b:0,w:328,h:0) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          -0.0000000874,
          0.0,
          0.0,
          0.0000000874,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        canvas.restore();
      }
      draw_163_692(canvas, frame);
      canvas.restore();
    }
    draw_163_693(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(ContentCommentPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(ContentCommentPainter oldDelegate) {
    return false;
  }
}

class ContentSearchResult extends StatelessWidget {
  const ContentSearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: ContentSearchResultPainter());
  }
}

class ContentSearchResultPainter extends CustomPainter {
  ContentSearchResultPainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -23.0000000000);

// 163:566 : Content/Search Result (COMPONENT)
    draw_163_566(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          23.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:23,r:0,b:0,w:343,h:33) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 163:585 : Search result (TEXT)
      draw_163_585(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            0.0,
            ((container.height / 2.0) - 16.5000000000),
            101.0000000000,
            19.0000000000) /* H:LEFT V:CENTER F:(l:0,t:0,r:242,b:242,w:101,h:19) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_8;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.left,
          fontSize: 16.0000000000,
          fontWeight: FontWeight.w500,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("Search result");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_163_585(canvas, frame);

// 163:586 : Divider (LINE)
      draw_163_586(Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(
            0.0,
            (container.height - (0.0)),
            (container.width - (0.0)),
            0.0) /* H:LEFT_RIGHT V:BOTTOM F:(l:0,t:33,r:0,b:0,w:343,h:0) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        canvas.restore();
      }
      draw_163_586(canvas, frame);
      canvas.restore();
    }
    draw_163_566(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(ContentSearchResultPainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(ContentSearchResultPainter oldDelegate) {
    return false;
  }
}

class ContentContentBlockLarge extends StatelessWidget {
  const ContentContentBlockLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: ContentContentBlockLargePainter());
  }
}

class ContentContentBlockLargePainter extends CustomPainter {
  ContentContentBlockLargePainter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(0.0, -23.0000000000);

// 150:1085 : Content/Content Block/Large (COMPONENT)
    draw_150_1085(Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          0.0,
          23.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:0,t:23,r:0,b:0,w:343,h:350) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));

// 150:1080 : Content Block (RECTANGLE)
      draw_150_1080(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(0.0, 0.0, 343.0000000000,
            240.0000000000) /* H:LEFT V:TOP F:(l:0,t:0,r:0,b:0,w:343,h:240) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 343.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 240.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var fillGeometry = [
          Path()
            ..addRRect(RRect.fromRectAndRadius(
                Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                const Radius.circular(8)))
        ];
        for (var path in fillGeometry) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_0);
        }
        canvas.restore();
      }
      draw_150_1080(canvas, frame);

// 150:1081 : Header (TEXT)
      draw_150_1081(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(0.0, 248.0000000000, 57.0000000000,
            19.0000000000) /* H:LEFT V:TOP F:(l:0,t:248,r:286,b:286,w:57,h:19) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_4;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'Inter',
          textAlign: TextAlign.left,
          fontSize: 16.0000000000,
          fontWeight: FontWeight.w600,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("Header");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      }
      draw_150_1081(canvas, frame);

// 150:1086 : Text + Time (FRAME)
      draw_150_1086(Canvas canvas, Rect container) {
        var frame = const Rect.fromLTWH(0.0, 275.0000000000, 343.0000000000,
            75.0000000000) /* H:LEFT V:TOP F:(l:0,t:275,r:0,b:0,w:343,h:75) */;
        canvas.save();
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        canvas.drawRect(Offset.zero & frame.size,
            (Paint()..color = _ColorCatalog.instance.color_0));

// 150:1083 : He'll want to use your yacht, and I don't want this thing smelling like fish. (TEXT)
        draw_150_1083(Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(0.0, 0.0, (container.width - (0.0)),
              34.0000000000) /* H:LEFT_RIGHT V:TOP F:(l:0,t:0,r:0,b:0,w:343,h:34) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var style_0 = _TextStyleCatalog.instance.ui_TextStyle_6;
          var paragraphStyle = ui.ParagraphStyle(
            fontFamily: 'Inter',
            textAlign: TextAlign.left,
            fontSize: 14.0000000000,
            fontWeight: FontWeight.w400,
          );
          var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
            ..pushStyle(style_0);
          paragraphBuilder.addText(
              "He'll want to use your yacht, and I don't want this thing smelling like fish.");
          var paragraph = paragraphBuilder.build();
          paragraph.layout(ui.ParagraphConstraints(width: frame.width));
          canvas.drawParagraph(paragraph, Offset.zero);
          canvas.restore();
        }
        draw_150_1083(canvas, frame);

// 150:1082 : 8m ago (TEXT)
        draw_150_1082(Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              (container.width - (343.0000000000)),
              42.0000000000,
              50.0000000000,
              17.0000000000) /* H:RIGHT V:TOP F:(l:0,t:42,r:293,b:293,w:50,h:17) */;
          canvas.save();
          canvas.transform(Float64List.fromList([
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0000000000,
            0.0,
            0.0,
            0.0,
            0.0,
            1.0,
            0.0,
            frame.left,
            frame.top,
            0.0,
            1.0
          ]));
          var style_0 = _TextStyleCatalog.instance.ui_TextStyle_5;
          var paragraphStyle = ui.ParagraphStyle(
            fontFamily: 'Inter',
            textAlign: TextAlign.right,
            fontSize: 14.0000000000,
            fontWeight: FontWeight.w400,
          );
          var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
            ..pushStyle(style_0);
          paragraphBuilder.addText("8m ago");
          var paragraph = paragraphBuilder.build();
          paragraph.layout(ui.ParagraphConstraints(width: frame.width));
          canvas.drawParagraph(paragraph, Offset.zero);
          canvas.restore();
        }
        draw_150_1082(canvas, frame);

// 150:1136 : Pagination (GROUP)
        draw_150_1136(Canvas canvas, Rect container) {
// 150:1125 : Ellipse 1 (ELLIPSE)
          draw_150_1125(Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                (container.width - (40.0000000000)),
                67.0000000000,
                8.0000000000,
                8.0000000000) /* H:RIGHT V:TOP F:(l:303,t:67,r:32,b:32,w:8,h:8) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var transform = Float64List.fromList([
              (frame.width / 8.0000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              (frame.height / 8.0000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0
            ]);
            var fillGeometry = [
              _PathCatalog.instance.path_47.transform(transform)
            ];
            for (var path in fillGeometry) {
              canvas.drawPath(path, _PaintCatalog.instance.paint_2);
            }
            canvas.restore();
          }
          draw_150_1125(canvas, frame);

// 150:1126 : Ellipse 2 (ELLIPSE)
          draw_150_1126(Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                (container.width - (24.0000000000)),
                67.0000000000,
                8.0000000000,
                8.0000000000) /* H:RIGHT V:TOP F:(l:319,t:67,r:16,b:16,w:8,h:8) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var transform = Float64List.fromList([
              (frame.width / 8.0000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              (frame.height / 8.0000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0
            ]);
            var fillGeometry = [
              _PathCatalog.instance.path_48.transform(transform)
            ];
            for (var path in fillGeometry) {
              canvas.drawPath(path, _PaintCatalog.instance.paint_1);
            }
            canvas.restore();
          }
          draw_150_1126(canvas, frame);

// 150:1127 : Ellipse 3 (ELLIPSE)
          draw_150_1127(Canvas canvas, Rect container) {
            var frame = Rect.fromLTWH(
                (container.width - (8.0000000000)),
                67.0000000000,
                8.0000000000,
                8.0000000000) /* H:RIGHT V:TOP F:(l:335,t:67,r:0,b:0,w:8,h:8) */;
            canvas.save();
            canvas.transform(Float64List.fromList([
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0000000000,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              frame.left,
              frame.top,
              0.0,
              1.0
            ]));
            var transform = Float64List.fromList([
              (frame.width / 8.0000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              (frame.height / 8.0000000000),
              0.0,
              0.0,
              0.0,
              0.0,
              1.0,
              0.0,
              0.0,
              0.0,
              0.0,
              1.0
            ]);
            var fillGeometry = [
              _PathCatalog.instance.path_49.transform(transform)
            ];
            for (var path in fillGeometry) {
              canvas.drawPath(path, _PaintCatalog.instance.paint_1);
            }
            canvas.restore();
          }
          draw_150_1127(canvas, frame);
        }
        draw_150_1136(canvas, frame);
        canvas.restore();
      }
      draw_150_1086(canvas, frame);
      canvas.restore();
    }
    draw_150_1085(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(ContentContentBlockLargePainter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(ContentContentBlockLargePainter oldDelegate) {
    return false;
  }
}

class _PathCatalog {
  _PathCatalog() {
    path_0 = _build_0();
    path_1 = _build_1();
    path_2 = _build_2();
    path_3 = _build_3();
    path_4 = _build_4();
    path_5 = _build_5();
    path_6 = _build_6();
    path_7 = _build_7();
    path_8 = _build_8();
    path_9 = _build_9();
    path_10 = _build_10();
    path_11 = _build_11();
    path_12 = _build_12();
    path_13 = _build_13();
    path_14 = _build_14();
    path_15 = _build_15();
    path_16 = _build_16();
    path_17 = _build_17();
    path_18 = _build_18();
    path_19 = _build_19();
    path_20 = _build_20();
    path_21 = _build_21();
    path_22 = _build_22();
    path_23 = _build_23();
    path_24 = _build_24();
    path_25 = _build_25();
    path_26 = _build_26();
    path_27 = _build_27();
    path_28 = _build_28();
    path_29 = _build_29();
    path_30 = _build_30();
    path_31 = _build_31();
    path_32 = _build_32();
    path_33 = _build_33();
    path_34 = _build_34();
    path_35 = _build_35();
    path_36 = _build_36();
    path_37 = _build_37();
    path_38 = _build_38();
    path_39 = _build_39();
    path_40 = _build_40();
    path_41 = _build_41();
    path_42 = _build_42();
    path_43 = _build_43();
    path_44 = _build_44();
    path_45 = _build_45();
    path_46 = _build_46();
    path_47 = _build_47();
    path_48 = _build_48();
    path_49 = _build_49();
  }
  late Path path_0;

  late Path path_1;

  late Path path_2;

  late Path path_3;

  late Path path_4;

  late Path path_5;

  late Path path_6;

  late Path path_7;

  late Path path_8;

  late Path path_9;

  late Path path_10;

  late Path path_11;

  late Path path_12;

  late Path path_13;

  late Path path_14;

  late Path path_15;

  late Path path_16;

  late Path path_17;

  late Path path_18;

  late Path path_19;

  late Path path_20;

  late Path path_21;

  late Path path_22;

  late Path path_23;

  late Path path_24;

  late Path path_25;

  late Path path_26;

  late Path path_27;

  late Path path_28;

  late Path path_29;

  late Path path_30;

  late Path path_31;

  late Path path_32;

  late Path path_33;

  late Path path_34;

  late Path path_35;

  late Path path_36;

  late Path path_37;

  late Path path_38;

  late Path path_39;

  late Path path_40;

  late Path path_41;

  late Path path_42;

  late Path path_43;

  late Path path_44;

  late Path path_45;

  late Path path_46;

  late Path path_47;

  late Path path_48;

  late Path path_49;

  static final _PathCatalog instance = _PathCatalog();

  static Path _build_0() {
    var path = Path();
    path.moveTo(0.0, 8.0000000000);
    path.cubicTo(0.0, 3.5817200000, 3.5817200000, 0.0, 8.0000000000, 0.0);
    path.lineTo(335.0000000000, 0.0);
    path.cubicTo(339.4180000000, 0.0, 343.0000000000, 3.5817200000,
        343.0000000000, 8.0000000000);
    path.lineTo(343.0000000000, 42.0000000000);
    path.cubicTo(343.0000000000, 46.4183000000, 339.4180000000, 50.0000000000,
        335.0000000000, 50.0000000000);
    path.lineTo(7.9999900000, 50.0000000000);
    path.cubicTo(
        3.5817200000, 50.0000000000, 0.0, 46.4183000000, 0.0, 42.0000000000);
    path.lineTo(0.0, 8.0000000000);
    path.close();
    return path;
  }

  static Path _build_1() {
    var path = Path();
    path.moveTo(8.0000000000, 1.0000000000);
    path.lineTo(335.0000000000, 1.0000000000);
    path.lineTo(335.0000000000, -1.0000000000);
    path.lineTo(8.0000000000, -1.0000000000);
    path.lineTo(8.0000000000, 1.0000000000);
    path.close();
    path.moveTo(342.0000000000, 8.0000000000);
    path.lineTo(342.0000000000, 42.0000000000);
    path.lineTo(344.0000000000, 42.0000000000);
    path.lineTo(344.0000000000, 8.0000000000);
    path.lineTo(342.0000000000, 8.0000000000);
    path.close();
    path.moveTo(335.0000000000, 49.0000000000);
    path.lineTo(7.9999900000, 49.0000000000);
    path.lineTo(7.9999900000, 51.0000000000);
    path.lineTo(335.0000000000, 51.0000000000);
    path.lineTo(335.0000000000, 49.0000000000);
    path.close();
    path.moveTo(1.0000000000, 42.0000000000);
    path.lineTo(1.0000000000, 8.0000000000);
    path.lineTo(-1.0000000000, 8.0000000000);
    path.lineTo(-1.0000000000, 42.0000000000);
    path.lineTo(1.0000000000, 42.0000000000);
    path.close();
    path.moveTo(7.9999900000, 49.0000000000);
    path.cubicTo(4.1340000000, 49.0000000000, 1.0000000000, 45.8660000000,
        1.0000000000, 42.0000000000);
    path.lineTo(-1.0000000000, 42.0000000000);
    path.cubicTo(-1.0000000000, 46.9706000000, 3.0294300000, 51.0000000000,
        7.9999900000, 51.0000000000);
    path.lineTo(7.9999900000, 49.0000000000);
    path.close();
    path.moveTo(342.0000000000, 42.0000000000);
    path.cubicTo(342.0000000000, 45.8660000000, 338.8660000000, 49.0000000000,
        335.0000000000, 49.0000000000);
    path.lineTo(335.0000000000, 51.0000000000);
    path.cubicTo(339.9710000000, 51.0000000000, 344.0000000000, 46.9706000000,
        344.0000000000, 42.0000000000);
    path.lineTo(342.0000000000, 42.0000000000);
    path.close();
    path.moveTo(335.0000000000, 1.0000000000);
    path.cubicTo(338.8660000000, 1.0000000000, 342.0000000000, 4.1340100000,
        342.0000000000, 8.0000000000);
    path.lineTo(344.0000000000, 8.0000000000);
    path.cubicTo(344.0000000000, 3.0294400000, 339.9710000000, -1.0000000000,
        335.0000000000, -1.0000000000);
    path.lineTo(335.0000000000, 1.0000000000);
    path.close();
    path.moveTo(8.0000000000, -1.0000000000);
    path.cubicTo(3.0294400000, -1.0000000000, -1.0000000000, 3.0294400000,
        -1.0000000000, 8.0000000000);
    path.lineTo(1.0000000000, 8.0000000000);
    path.cubicTo(1.0000000000, 4.1340100000, 4.1340100000, 1.0000000000,
        8.0000000000, 1.0000000000);
    path.lineTo(8.0000000000, -1.0000000000);
    path.close();
    return path;
  }

  static Path _build_2() {
    var path = Path();
    path.moveTo(0.3470680000, 2.6400800000);
    path.cubicTo(0.1482880000, 2.4484000000, -0.1682420000, 2.4541500000,
        -0.3599220000, 2.6529300000);
    path.cubicTo(-0.5516020000, 2.8517100000, -0.5458470000, 3.1682400000,
        -0.3470680000, 3.3599200000);
    path.lineTo(0.3470680000, 2.6400800000);
    path.close();
    path.moveTo(2.3333300000, 5.2500000000);
    path.lineTo(1.9862700000, 5.6099200000);
    path.lineTo(2.3922600000, 6.0014200000);
    path.lineTo(2.7322700000, 5.5514200000);
    path.lineTo(2.3333300000, 5.2500000000);
    path.close();
    path.moveTo(6.6989300000, 0.3014170000);
    path.cubicTo(6.8654000000, 0.0810916000, 6.8217400000, -0.2324660000,
        6.6014200000, -0.3989340000);
    path.cubicTo(6.3810900000, -0.5654010000, 6.0675300000, -0.5217420000,
        5.9010700000, -0.3014170000);
    path.lineTo(6.6989300000, 0.3014170000);
    path.close();
    path.moveTo(-0.3470680000, 3.3599200000);
    path.lineTo(1.9862700000, 5.6099200000);
    path.lineTo(2.6804000000, 4.8900800000);
    path.lineTo(0.3470680000, 2.6400800000);
    path.lineTo(-0.3470680000, 3.3599200000);
    path.close();
    path.moveTo(2.7322700000, 5.5514200000);
    path.lineTo(6.6989300000, 0.3014170000);
    path.lineTo(5.9010700000, -0.3014170000);
    path.lineTo(1.9344000000, 4.9485800000);
    path.lineTo(2.7322700000, 5.5514200000);
    path.close();
    return path;
  }

  static Path _build_3() {
    var path = Path();
    path.moveTo(4.0000000000, 1.0000000000);
    path.lineTo(12.0000000000, 1.0000000000);
    path.lineTo(12.0000000000, -1.0000000000);
    path.lineTo(4.0000000000, -1.0000000000);
    path.lineTo(4.0000000000, 1.0000000000);
    path.close();
    path.moveTo(15.0000000000, 4.0000000000);
    path.lineTo(15.0000000000, 12.0000000000);
    path.lineTo(17.0000000000, 12.0000000000);
    path.lineTo(17.0000000000, 4.0000000000);
    path.lineTo(15.0000000000, 4.0000000000);
    path.close();
    path.moveTo(12.0000000000, 15.0000000000);
    path.lineTo(4.0000000000, 15.0000000000);
    path.lineTo(4.0000000000, 17.0000000000);
    path.lineTo(12.0000000000, 17.0000000000);
    path.lineTo(12.0000000000, 15.0000000000);
    path.close();
    path.moveTo(1.0000000000, 12.0000000000);
    path.lineTo(1.0000000000, 4.0000000000);
    path.lineTo(-1.0000000000, 4.0000000000);
    path.lineTo(-1.0000000000, 12.0000000000);
    path.lineTo(1.0000000000, 12.0000000000);
    path.close();
    path.moveTo(4.0000000000, 15.0000000000);
    path.cubicTo(2.3431500000, 15.0000000000, 1.0000000000, 13.6569000000,
        1.0000000000, 12.0000000000);
    path.lineTo(-1.0000000000, 12.0000000000);
    path.cubicTo(-1.0000000000, 14.7614000000, 1.2385800000, 17.0000000000,
        4.0000000000, 17.0000000000);
    path.lineTo(4.0000000000, 15.0000000000);
    path.close();
    path.moveTo(15.0000000000, 12.0000000000);
    path.cubicTo(15.0000000000, 13.6569000000, 13.6569000000, 15.0000000000,
        12.0000000000, 15.0000000000);
    path.lineTo(12.0000000000, 17.0000000000);
    path.cubicTo(14.7614000000, 17.0000000000, 17.0000000000, 14.7614000000,
        17.0000000000, 12.0000000000);
    path.lineTo(15.0000000000, 12.0000000000);
    path.close();
    path.moveTo(12.0000000000, 1.0000000000);
    path.cubicTo(13.6569000000, 1.0000000000, 15.0000000000, 2.3431500000,
        15.0000000000, 4.0000000000);
    path.lineTo(17.0000000000, 4.0000000000);
    path.cubicTo(17.0000000000, 1.2385800000, 14.7614000000, -1.0000000000,
        12.0000000000, -1.0000000000);
    path.lineTo(12.0000000000, 1.0000000000);
    path.close();
    path.moveTo(4.0000000000, -1.0000000000);
    path.cubicTo(1.2385800000, -1.0000000000, -1.0000000000, 1.2385800000,
        -1.0000000000, 4.0000000000);
    path.lineTo(1.0000000000, 4.0000000000);
    path.cubicTo(1.0000000000, 2.3431500000, 2.3431500000, 1.0000000000,
        4.0000000000, 1.0000000000);
    path.lineTo(4.0000000000, -1.0000000000);
    path.close();
    return path;
  }

  static Path _build_4() {
    var path = Path();
    path.moveTo(0.3507590000, 3.1436700000);
    path.cubicTo(0.1539650000, 2.9499600000, -0.1626080000, 2.9524500000,
        -0.3563260000, 3.1492400000);
    path.cubicTo(-0.5500450000, 3.3460300000, -0.5475520000, 3.6626100000,
        -0.3507590000, 3.8563300000);
    path.lineTo(0.3507590000, 3.1436700000);
    path.close();
    path.moveTo(2.6666700000, 6.1250000000);
    path.lineTo(2.3159100000, 6.4813300000);
    path.lineTo(2.7261200000, 6.8851300000);
    path.lineTo(3.0685600000, 6.4224600000);
    path.lineTo(2.6666700000, 6.1250000000);
    path.close();
    path.moveTo(7.6018900000, 0.2974570000);
    path.cubicTo(7.7661800000, 0.0754965000, 7.7194200000, -0.2376140000,
        7.4974600000, -0.4018950000);
    path.cubicTo(7.2755000000, -0.5661760000, 6.9623900000, -0.5194170000,
        6.7981000000, -0.2974570000);
    path.lineTo(7.6018900000, 0.2974570000);
    path.close();
    path.moveTo(-0.3507590000, 3.8563300000);
    path.lineTo(2.3159100000, 6.4813300000);
    path.lineTo(3.0174200000, 5.7686700000);
    path.lineTo(0.3507590000, 3.1436700000);
    path.lineTo(-0.3507590000, 3.8563300000);
    path.close();
    path.moveTo(3.0685600000, 6.4224600000);
    path.lineTo(7.6018900000, 0.2974570000);
    path.lineTo(6.7981000000, -0.2974570000);
    path.lineTo(2.2647700000, 5.8275400000);
    path.lineTo(3.0685600000, 6.4224600000);
    path.close();
    return path;
  }

  static Path _build_5() {
    var path = Path();
    path.moveTo(4.0000000000, 1.0000000000);
    path.lineTo(12.0000000000, 1.0000000000);
    path.lineTo(12.0000000000, -1.0000000000);
    path.lineTo(4.0000000000, -1.0000000000);
    path.lineTo(4.0000000000, 1.0000000000);
    path.close();
    path.moveTo(15.0000000000, 4.0000000000);
    path.lineTo(15.0000000000, 12.0000000000);
    path.lineTo(17.0000000000, 12.0000000000);
    path.lineTo(17.0000000000, 4.0000000000);
    path.lineTo(15.0000000000, 4.0000000000);
    path.close();
    path.moveTo(12.0000000000, 15.0000000000);
    path.lineTo(4.0000000000, 15.0000000000);
    path.lineTo(4.0000000000, 17.0000000000);
    path.lineTo(12.0000000000, 17.0000000000);
    path.lineTo(12.0000000000, 15.0000000000);
    path.close();
    path.moveTo(1.0000000000, 12.0000000000);
    path.lineTo(1.0000000000, 4.0000000000);
    path.lineTo(-1.0000000000, 4.0000000000);
    path.lineTo(-1.0000000000, 12.0000000000);
    path.lineTo(1.0000000000, 12.0000000000);
    path.close();
    path.moveTo(4.0000000000, 15.0000000000);
    path.cubicTo(2.3431500000, 15.0000000000, 1.0000000000, 13.6569000000,
        1.0000000000, 12.0000000000);
    path.lineTo(-1.0000000000, 12.0000000000);
    path.cubicTo(-1.0000000000, 14.7614000000, 1.2385800000, 17.0000000000,
        4.0000000000, 17.0000000000);
    path.lineTo(4.0000000000, 15.0000000000);
    path.close();
    path.moveTo(15.0000000000, 12.0000000000);
    path.cubicTo(15.0000000000, 13.6569000000, 13.6569000000, 15.0000000000,
        12.0000000000, 15.0000000000);
    path.lineTo(12.0000000000, 17.0000000000);
    path.cubicTo(14.7614000000, 17.0000000000, 17.0000000000, 14.7614000000,
        17.0000000000, 12.0000000000);
    path.lineTo(15.0000000000, 12.0000000000);
    path.close();
    path.moveTo(12.0000000000, 1.0000000000);
    path.cubicTo(13.6569000000, 1.0000000000, 15.0000000000, 2.3431500000,
        15.0000000000, 4.0000000000);
    path.lineTo(17.0000000000, 4.0000000000);
    path.cubicTo(17.0000000000, 1.2385800000, 14.7614000000, -1.0000000000,
        12.0000000000, -1.0000000000);
    path.lineTo(12.0000000000, 1.0000000000);
    path.close();
    path.moveTo(4.0000000000, -1.0000000000);
    path.cubicTo(1.2385800000, -1.0000000000, -1.0000000000, 1.2385800000,
        -1.0000000000, 4.0000000000);
    path.lineTo(1.0000000000, 4.0000000000);
    path.cubicTo(1.0000000000, 2.3431500000, 2.3431500000, 1.0000000000,
        4.0000000000, 1.0000000000);
    path.lineTo(4.0000000000, -1.0000000000);
    path.close();
    return path;
  }

  static Path _build_6() {
    var path = Path();
    path.moveTo(0.3507590000, 3.1436700000);
    path.cubicTo(0.1539650000, 2.9499600000, -0.1626080000, 2.9524500000,
        -0.3563260000, 3.1492400000);
    path.cubicTo(-0.5500450000, 3.3460300000, -0.5475520000, 3.6626100000,
        -0.3507590000, 3.8563300000);
    path.lineTo(0.3507590000, 3.1436700000);
    path.close();
    path.moveTo(2.6666700000, 6.1250000000);
    path.lineTo(2.3159100000, 6.4813300000);
    path.lineTo(2.7261200000, 6.8851300000);
    path.lineTo(3.0685600000, 6.4224600000);
    path.lineTo(2.6666700000, 6.1250000000);
    path.close();
    path.moveTo(7.6018900000, 0.2974570000);
    path.cubicTo(7.7661800000, 0.0754965000, 7.7194200000, -0.2376140000,
        7.4974600000, -0.4018950000);
    path.cubicTo(7.2755000000, -0.5661760000, 6.9623900000, -0.5194170000,
        6.7981000000, -0.2974570000);
    path.lineTo(7.6018900000, 0.2974570000);
    path.close();
    path.moveTo(-0.3507590000, 3.8563300000);
    path.lineTo(2.3159100000, 6.4813300000);
    path.lineTo(3.0174200000, 5.7686700000);
    path.lineTo(0.3507590000, 3.1436700000);
    path.lineTo(-0.3507590000, 3.8563300000);
    path.close();
    path.moveTo(3.0685600000, 6.4224600000);
    path.lineTo(7.6018900000, 0.2974570000);
    path.lineTo(6.7981000000, -0.2974570000);
    path.lineTo(2.2647700000, 5.8275400000);
    path.lineTo(3.0685600000, 6.4224600000);
    path.close();
    return path;
  }

  static Path _build_7() {
    var path = Path();
    path.moveTo(0.0, 25.0000000000);
    path.cubicTo(0.0, 11.1929000000, 11.1929000000, 0.0, 25.0000000000, 0.0);
    path.lineTo(318.0000000000, 0.0);
    path.cubicTo(331.8070000000, 0.0, 343.0000000000, 11.1929000000,
        343.0000000000, 25.0000000000);
    path.lineTo(343.0000000000, 25.0000000000);
    path.cubicTo(343.0000000000, 38.8071000000, 331.8070000000, 50.0000000000,
        318.0000000000, 50.0000000000);
    path.lineTo(25.0000000000, 50.0000000000);
    path.cubicTo(
        11.1929000000, 50.0000000000, 0.0, 38.8071000000, 0.0, 25.0000000000);
    path.lineTo(0.0, 25.0000000000);
    path.close();
    return path;
  }

  static Path _build_8() {
    var path = Path();
    path.moveTo(25.0000000000, 1.0000000000);
    path.lineTo(318.0000000000, 1.0000000000);
    path.lineTo(318.0000000000, -1.0000000000);
    path.lineTo(25.0000000000, -1.0000000000);
    path.lineTo(25.0000000000, 1.0000000000);
    path.close();
    path.moveTo(318.0000000000, 49.0000000000);
    path.lineTo(25.0000000000, 49.0000000000);
    path.lineTo(25.0000000000, 51.0000000000);
    path.lineTo(318.0000000000, 51.0000000000);
    path.lineTo(318.0000000000, 49.0000000000);
    path.close();
    path.moveTo(25.0000000000, 49.0000000000);
    path.cubicTo(11.7452000000, 49.0000000000, 1.0000000000, 38.2548000000,
        1.0000000000, 25.0000000000);
    path.lineTo(-1.0000000000, 25.0000000000);
    path.cubicTo(-1.0000000000, 39.3594000000, 10.6406000000, 51.0000000000,
        25.0000000000, 51.0000000000);
    path.lineTo(25.0000000000, 49.0000000000);
    path.close();
    path.moveTo(342.0000000000, 25.0000000000);
    path.cubicTo(342.0000000000, 38.2548000000, 331.2550000000, 49.0000000000,
        318.0000000000, 49.0000000000);
    path.lineTo(318.0000000000, 51.0000000000);
    path.cubicTo(332.3590000000, 51.0000000000, 344.0000000000, 39.3594000000,
        344.0000000000, 25.0000000000);
    path.lineTo(342.0000000000, 25.0000000000);
    path.close();
    path.moveTo(318.0000000000, 1.0000000000);
    path.cubicTo(331.2550000000, 1.0000000000, 342.0000000000, 11.7452000000,
        342.0000000000, 25.0000000000);
    path.lineTo(344.0000000000, 25.0000000000);
    path.cubicTo(344.0000000000, 10.6406000000, 332.3590000000, -1.0000000000,
        318.0000000000, -1.0000000000);
    path.lineTo(318.0000000000, 1.0000000000);
    path.close();
    path.moveTo(25.0000000000, -1.0000000000);
    path.cubicTo(10.6406000000, -1.0000000000, -1.0000000000, 10.6406000000,
        -1.0000000000, 25.0000000000);
    path.lineTo(1.0000000000, 25.0000000000);
    path.cubicTo(1.0000000000, 11.7452000000, 11.7452000000, 1.0000000000,
        25.0000000000, 1.0000000000);
    path.lineTo(25.0000000000, -1.0000000000);
    path.close();
    return path;
  }

  static Path _build_9() {
    var path = Path();
    path.moveTo(34.0000000000, 17.0000000000);
    path.cubicTo(34.0000000000, 26.3888000000, 26.3888000000, 34.0000000000,
        17.0000000000, 34.0000000000);
    path.cubicTo(
        7.6111600000, 34.0000000000, 0.0, 26.3888000000, 0.0, 17.0000000000);
    path.cubicTo(0.0, 7.6111600000, 7.6111600000, 0.0, 17.0000000000, 0.0);
    path.cubicTo(26.3888000000, 0.0, 34.0000000000, 7.6111600000, 34.0000000000,
        17.0000000000);
    path.close();
    return path;
  }

  static Path _build_10() {
    var path = Path();
    path.moveTo(5.0000000000, 0.0);
    path.lineTo(5.7071100000, -0.7071070000);
    path.cubicTo(5.3165800000, -1.0976300000, 4.6834200000, -1.0976300000,
        4.2928900000, -0.7071070000);
    path.lineTo(5.0000000000, 0.0);
    path.close();
    path.moveTo(9.2928900000, 5.7071100000);
    path.cubicTo(9.6834200000, 6.0976300000, 10.3166000000, 6.0976300000,
        10.7071000000, 5.7071100000);
    path.cubicTo(11.0976000000, 5.3165800000, 11.0976000000, 4.6834200000,
        10.7071000000, 4.2928900000);
    path.lineTo(9.2928900000, 5.7071100000);
    path.close();
    path.moveTo(-0.7071070000, 4.2928900000);
    path.cubicTo(-1.0976300000, 4.6834200000, -1.0976300000, 5.3165800000,
        -0.7071070000, 5.7071100000);
    path.cubicTo(-0.3165830000, 6.0976300000, 0.3165830000, 6.0976300000,
        0.7071070000, 5.7071100000);
    path.lineTo(-0.7071070000, 4.2928900000);
    path.close();
    path.moveTo(4.0000000000, 14.0000000000);
    path.cubicTo(4.0000000000, 14.5523000000, 4.4477200000, 15.0000000000,
        5.0000000000, 15.0000000000);
    path.cubicTo(5.5522800000, 15.0000000000, 6.0000000000, 14.5523000000,
        6.0000000000, 14.0000000000);
    path.lineTo(4.0000000000, 14.0000000000);
    path.close();
    path.moveTo(4.2928900000, 0.7071070000);
    path.lineTo(9.2928900000, 5.7071100000);
    path.lineTo(10.7071000000, 4.2928900000);
    path.lineTo(5.7071100000, -0.7071070000);
    path.lineTo(4.2928900000, 0.7071070000);
    path.close();
    path.moveTo(4.2928900000, -0.7071070000);
    path.lineTo(-0.7071070000, 4.2928900000);
    path.lineTo(0.7071070000, 5.7071100000);
    path.lineTo(5.7071100000, 0.7071070000);
    path.lineTo(4.2928900000, -0.7071070000);
    path.close();
    path.moveTo(4.0000000000, 0.0);
    path.lineTo(4.0000000000, 7.0000000000);
    path.lineTo(6.0000000000, 7.0000000000);
    path.lineTo(6.0000000000, 0.0);
    path.lineTo(4.0000000000, 0.0);
    path.close();
    path.moveTo(4.0000000000, 7.0000000000);
    path.lineTo(4.0000000000, 14.0000000000);
    path.lineTo(6.0000000000, 14.0000000000);
    path.lineTo(6.0000000000, 7.0000000000);
    path.lineTo(4.0000000000, 7.0000000000);
    path.close();
    return path;
  }

  static Path _build_11() {
    var path = Path();
    path.moveTo(0.0, 8.0000000000);
    path.cubicTo(0.0, 3.5817300000, 3.5817200000, 0.0, 8.0000000000, 0.0);
    path.cubicTo(12.4183000000, 0.0, 16.0000000000, 3.5817200000, 16.0000000000,
        8.0000000000);
    path.lineTo(16.0000000000, 192.0000000000);
    path.cubicTo(16.0000000000, 196.4180000000, 12.4183000000, 200.0000000000,
        8.0000000000, 200.0000000000);
    path.cubicTo(
        3.5817200000, 200.0000000000, 0.0, 196.4180000000, 0.0, 192.0000000000);
    path.lineTo(0.0, 8.0000000000);
    path.close();
    return path;
  }

  static Path _build_12() {
    var path = Path();
    path.moveTo(0.0, 20.0000000000);
    path.cubicTo(0.0, 8.9543100000, 8.9543100000, 0.0, 20.0000000000, 0.0);
    path.lineTo(323.0000000000, 0.0);
    path.cubicTo(334.0460000000, 0.0, 343.0000000000, 8.9543100000,
        343.0000000000, 20.0000000000);
    path.lineTo(343.0000000000, 212.0000000000);
    path.cubicTo(343.0000000000, 223.0460000000, 334.0460000000, 232.0000000000,
        323.0000000000, 232.0000000000);
    path.lineTo(20.0000000000, 232.0000000000);
    path.cubicTo(
        8.9543000000, 232.0000000000, 0.0, 223.0460000000, 0.0, 212.0000000000);
    path.lineTo(0.0, 20.0000000000);
    path.close();
    return path;
  }

  static Path _build_13() {
    var path = Path();
    path.moveTo(20.0000000000, 1.0000000000);
    path.lineTo(323.0000000000, 1.0000000000);
    path.lineTo(323.0000000000, -1.0000000000);
    path.lineTo(20.0000000000, -1.0000000000);
    path.lineTo(20.0000000000, 1.0000000000);
    path.close();
    path.moveTo(342.0000000000, 20.0000000000);
    path.lineTo(342.0000000000, 212.0000000000);
    path.lineTo(344.0000000000, 212.0000000000);
    path.lineTo(344.0000000000, 20.0000000000);
    path.lineTo(342.0000000000, 20.0000000000);
    path.close();
    path.moveTo(323.0000000000, 231.0000000000);
    path.lineTo(20.0000000000, 231.0000000000);
    path.lineTo(20.0000000000, 233.0000000000);
    path.lineTo(323.0000000000, 233.0000000000);
    path.lineTo(323.0000000000, 231.0000000000);
    path.close();
    path.moveTo(1.0000000000, 212.0000000000);
    path.lineTo(1.0000000000, 20.0000000000);
    path.lineTo(-1.0000000000, 20.0000000000);
    path.lineTo(-1.0000000000, 212.0000000000);
    path.lineTo(1.0000000000, 212.0000000000);
    path.close();
    path.moveTo(20.0000000000, 231.0000000000);
    path.cubicTo(9.5065800000, 231.0000000000, 1.0000000000, 222.4930000000,
        1.0000000000, 212.0000000000);
    path.lineTo(-1.0000000000, 212.0000000000);
    path.cubicTo(-1.0000000000, 223.5980000000, 8.4020100000, 233.0000000000,
        20.0000000000, 233.0000000000);
    path.lineTo(20.0000000000, 231.0000000000);
    path.close();
    path.moveTo(342.0000000000, 212.0000000000);
    path.cubicTo(342.0000000000, 222.4930000000, 333.4930000000, 231.0000000000,
        323.0000000000, 231.0000000000);
    path.lineTo(323.0000000000, 233.0000000000);
    path.cubicTo(334.5980000000, 233.0000000000, 344.0000000000, 223.5980000000,
        344.0000000000, 212.0000000000);
    path.lineTo(342.0000000000, 212.0000000000);
    path.close();
    path.moveTo(323.0000000000, 1.0000000000);
    path.cubicTo(333.4930000000, 1.0000000000, 342.0000000000, 9.5065900000,
        342.0000000000, 20.0000000000);
    path.lineTo(344.0000000000, 20.0000000000);
    path.cubicTo(344.0000000000, 8.4020200000, 334.5980000000, -1.0000000000,
        323.0000000000, -1.0000000000);
    path.lineTo(323.0000000000, 1.0000000000);
    path.close();
    path.moveTo(20.0000000000, -1.0000000000);
    path.cubicTo(8.4020200000, -1.0000000000, -1.0000000000, 8.4020200000,
        -1.0000000000, 20.0000000000);
    path.lineTo(1.0000000000, 20.0000000000);
    path.cubicTo(1.0000000000, 9.5065900000, 9.5065900000, 1.0000000000,
        20.0000000000, 1.0000000000);
    path.lineTo(20.0000000000, -1.0000000000);
    path.close();
    return path;
  }

  static Path _build_14() {
    var path = Path();
    path.moveTo(0.0, 6.3600000000);
    path.cubicTo(0.0, 2.8474700000, 3.5817200000, 0.0, 8.0000000000, 0.0);
    path.cubicTo(12.4183000000, 0.0, 16.0000000000, 2.8474700000, 16.0000000000,
        6.3600000000);
    path.lineTo(16.0000000000, 152.6400000000);
    path.cubicTo(16.0000000000, 156.1530000000, 12.4183000000, 159.0000000000,
        8.0000000000, 159.0000000000);
    path.cubicTo(
        3.5817200000, 159.0000000000, 0.0, 156.1530000000, 0.0, 152.6400000000);
    path.lineTo(0.0, 6.3600000000);
    path.close();
    return path;
  }

  static Path _build_15() {
    var path = Path();
    path.moveTo(0.0, 6.3600000000);
    path.cubicTo(0.0, 2.8474700000, 3.5817200000, 0.0, 8.0000000000, 0.0);
    path.cubicTo(12.4183000000, 0.0, 16.0000000000, 2.8474700000, 16.0000000000,
        6.3600000000);
    path.lineTo(16.0000000000, 152.6400000000);
    path.cubicTo(16.0000000000, 156.1530000000, 12.4183000000, 159.0000000000,
        8.0000000000, 159.0000000000);
    path.cubicTo(
        3.5817200000, 159.0000000000, 0.0, 156.1530000000, 0.0, 152.6400000000);
    path.lineTo(0.0, 6.3600000000);
    path.close();
    return path;
  }

  static Path _build_16() {
    var path = Path();
    path.moveTo(0.0, 6.3600000000);
    path.cubicTo(0.0, 2.8474700000, 3.5817200000, 0.0, 8.0000000000, 0.0);
    path.cubicTo(12.4183000000, 0.0, 16.0000000000, 2.8474700000, 16.0000000000,
        6.3600000000);
    path.lineTo(16.0000000000, 152.6400000000);
    path.cubicTo(16.0000000000, 156.1530000000, 12.4183000000, 159.0000000000,
        8.0000000000, 159.0000000000);
    path.cubicTo(
        3.5817200000, 159.0000000000, 0.0, 156.1530000000, 0.0, 152.6400000000);
    path.lineTo(0.0, 6.3600000000);
    path.close();
    return path;
  }

  static Path _build_17() {
    var path = Path();
    path.moveTo(0.0, 6.3600000000);
    path.cubicTo(0.0, 2.8474700000, 3.5817200000, 0.0, 8.0000000000, 0.0);
    path.cubicTo(12.4183000000, 0.0, 16.0000000000, 2.8474700000, 16.0000000000,
        6.3600000000);
    path.lineTo(16.0000000000, 152.6400000000);
    path.cubicTo(16.0000000000, 156.1530000000, 12.4183000000, 159.0000000000,
        8.0000000000, 159.0000000000);
    path.cubicTo(
        3.5817200000, 159.0000000000, 0.0, 156.1530000000, 0.0, 152.6400000000);
    path.lineTo(0.0, 6.3600000000);
    path.close();
    return path;
  }

  static Path _build_18() {
    var path = Path();
    path.moveTo(0.0, 6.3600000000);
    path.cubicTo(0.0, 2.8474700000, 3.5817200000, 0.0, 8.0000000000, 0.0);
    path.cubicTo(12.4183000000, 0.0, 16.0000000000, 2.8474700000, 16.0000000000,
        6.3600000000);
    path.lineTo(16.0000000000, 152.6400000000);
    path.cubicTo(16.0000000000, 156.1530000000, 12.4183000000, 159.0000000000,
        8.0000000000, 159.0000000000);
    path.cubicTo(
        3.5817200000, 159.0000000000, 0.0, 156.1530000000, 0.0, 152.6400000000);
    path.lineTo(0.0, 6.3600000000);
    path.close();
    return path;
  }

  static Path _build_19() {
    var path = Path();
    path.moveTo(0.0, 6.3600000000);
    path.cubicTo(0.0, 2.8474700000, 3.5817200000, 0.0, 8.0000000000, 0.0);
    path.cubicTo(12.4183000000, 0.0, 16.0000000000, 2.8474700000, 16.0000000000,
        6.3600000000);
    path.lineTo(16.0000000000, 152.6400000000);
    path.cubicTo(16.0000000000, 156.1530000000, 12.4183000000, 159.0000000000,
        8.0000000000, 159.0000000000);
    path.cubicTo(
        3.5817200000, 159.0000000000, 0.0, 156.1530000000, 0.0, 152.6400000000);
    path.lineTo(0.0, 6.3600000000);
    path.close();
    return path;
  }

  static Path _build_20() {
    var path = Path();
    path.moveTo(0.0, 6.3600000000);
    path.cubicTo(0.0, 2.8474700000, 3.5817200000, 0.0, 8.0000000000, 0.0);
    path.cubicTo(12.4183000000, 0.0, 16.0000000000, 2.8474700000, 16.0000000000,
        6.3600000000);
    path.lineTo(16.0000000000, 152.6400000000);
    path.cubicTo(16.0000000000, 156.1530000000, 12.4183000000, 159.0000000000,
        8.0000000000, 159.0000000000);
    path.cubicTo(
        3.5817200000, 159.0000000000, 0.0, 156.1530000000, 0.0, 152.6400000000);
    path.lineTo(0.0, 6.3600000000);
    path.close();
    return path;
  }

  static Path _build_21() {
    var path = Path();
    path.moveTo(0.0, 6.3600000000);
    path.cubicTo(0.0, 2.8474700000, 3.5817200000, 0.0, 8.0000000000, 0.0);
    path.cubicTo(12.4183000000, 0.0, 16.0000000000, 2.8474700000, 16.0000000000,
        6.3600000000);
    path.lineTo(16.0000000000, 152.6400000000);
    path.cubicTo(16.0000000000, 156.1530000000, 12.4183000000, 159.0000000000,
        8.0000000000, 159.0000000000);
    path.cubicTo(
        3.5817200000, 159.0000000000, 0.0, 156.1530000000, 0.0, 152.6400000000);
    path.lineTo(0.0, 6.3600000000);
    path.close();
    return path;
  }

  static Path _build_22() {
    var path = Path();
    path.moveTo(16.0000000000, 8.0000000000);
    path.cubicTo(16.0000000000, 12.4183000000, 12.4183000000, 16.0000000000,
        8.0000000000, 16.0000000000);
    path.cubicTo(
        3.5817200000, 16.0000000000, 0.0, 12.4183000000, 0.0, 8.0000000000);
    path.cubicTo(0.0, 3.5817200000, 3.5817200000, 0.0, 8.0000000000, 0.0);
    path.cubicTo(12.4183000000, 0.0, 16.0000000000, 3.5817200000, 16.0000000000,
        8.0000000000);
    path.close();
    return path;
  }

  static Path _build_23() {
    var path = Path();
    path.moveTo(0.0, 25.0000000000);
    path.cubicTo(0.0, 11.1929000000, 11.1929000000, 0.0, 25.0000000000, 0.0);
    path.lineTo(318.0000000000, 0.0);
    path.cubicTo(331.8070000000, 0.0, 343.0000000000, 11.1929000000,
        343.0000000000, 25.0000000000);
    path.lineTo(343.0000000000, 25.0000000000);
    path.cubicTo(343.0000000000, 38.8071000000, 331.8070000000, 50.0000000000,
        318.0000000000, 50.0000000000);
    path.lineTo(25.0000000000, 50.0000000000);
    path.cubicTo(
        11.1929000000, 50.0000000000, 0.0, 38.8071000000, 0.0, 25.0000000000);
    path.lineTo(0.0, 25.0000000000);
    path.close();
    return path;
  }

  static Path _build_24() {
    var path = Path();
    path.moveTo(25.0000000000, 1.0000000000);
    path.lineTo(318.0000000000, 1.0000000000);
    path.lineTo(318.0000000000, -1.0000000000);
    path.lineTo(25.0000000000, -1.0000000000);
    path.lineTo(25.0000000000, 1.0000000000);
    path.close();
    path.moveTo(318.0000000000, 49.0000000000);
    path.lineTo(25.0000000000, 49.0000000000);
    path.lineTo(25.0000000000, 51.0000000000);
    path.lineTo(318.0000000000, 51.0000000000);
    path.lineTo(318.0000000000, 49.0000000000);
    path.close();
    path.moveTo(25.0000000000, 49.0000000000);
    path.cubicTo(11.7452000000, 49.0000000000, 1.0000000000, 38.2548000000,
        1.0000000000, 25.0000000000);
    path.lineTo(-1.0000000000, 25.0000000000);
    path.cubicTo(-1.0000000000, 39.3594000000, 10.6406000000, 51.0000000000,
        25.0000000000, 51.0000000000);
    path.lineTo(25.0000000000, 49.0000000000);
    path.close();
    path.moveTo(342.0000000000, 25.0000000000);
    path.cubicTo(342.0000000000, 38.2548000000, 331.2550000000, 49.0000000000,
        318.0000000000, 49.0000000000);
    path.lineTo(318.0000000000, 51.0000000000);
    path.cubicTo(332.3590000000, 51.0000000000, 344.0000000000, 39.3594000000,
        344.0000000000, 25.0000000000);
    path.lineTo(342.0000000000, 25.0000000000);
    path.close();
    path.moveTo(318.0000000000, 1.0000000000);
    path.cubicTo(331.2550000000, 1.0000000000, 342.0000000000, 11.7452000000,
        342.0000000000, 25.0000000000);
    path.lineTo(344.0000000000, 25.0000000000);
    path.cubicTo(344.0000000000, 10.6406000000, 332.3590000000, -1.0000000000,
        318.0000000000, -1.0000000000);
    path.lineTo(318.0000000000, 1.0000000000);
    path.close();
    path.moveTo(25.0000000000, -1.0000000000);
    path.cubicTo(10.6406000000, -1.0000000000, -1.0000000000, 10.6406000000,
        -1.0000000000, 25.0000000000);
    path.lineTo(1.0000000000, 25.0000000000);
    path.cubicTo(1.0000000000, 11.7452000000, 11.7452000000, 1.0000000000,
        25.0000000000, 1.0000000000);
    path.lineTo(25.0000000000, -1.0000000000);
    path.close();
    return path;
  }

  static Path _build_25() {
    var path = Path();
    path.moveTo(0.0, 23.0000000000);
    path.cubicTo(0.0, 10.2975000000, 10.2975000000, 0.0, 23.0000000000, 0.0);
    path.lineTo(148.5000000000, 0.0);
    path.cubicTo(161.2030000000, 0.0, 171.5000000000, 10.2975000000,
        171.5000000000, 23.0000000000);
    path.lineTo(171.5000000000, 23.0000000000);
    path.cubicTo(171.5000000000, 35.7025000000, 161.2030000000, 46.0000000000,
        148.5000000000, 46.0000000000);
    path.lineTo(23.0000000000, 46.0000000000);
    path.cubicTo(
        10.2975000000, 46.0000000000, 0.0, 35.7025000000, 0.0, 23.0000000000);
    path.lineTo(0.0, 23.0000000000);
    path.close();
    return path;
  }

  static Path _build_26() {
    var path = Path();
    path.moveTo(0.0, 23.0000000000);
    path.cubicTo(0.0, 10.2975000000, 10.2975000000, 0.0, 23.0000000000, 0.0);
    path.lineTo(148.5000000000, 0.0);
    path.cubicTo(161.2030000000, 0.0, 171.5000000000, 10.2975000000,
        171.5000000000, 23.0000000000);
    path.lineTo(171.5000000000, 23.0000000000);
    path.cubicTo(171.5000000000, 35.7025000000, 161.2030000000, 46.0000000000,
        148.5000000000, 46.0000000000);
    path.lineTo(23.0000000000, 46.0000000000);
    path.cubicTo(
        10.2975000000, 46.0000000000, 0.0, 35.7025000000, 0.0, 23.0000000000);
    path.lineTo(0.0, 23.0000000000);
    path.close();
    return path;
  }

  static Path _build_27() {
    var path = Path();
    path.moveTo(0.0, 25.0000000000);
    path.cubicTo(0.0, 11.1929000000, 11.1929000000, 0.0, 25.0000000000, 0.0);
    path.lineTo(318.0000000000, 0.0);
    path.cubicTo(331.8070000000, 0.0, 343.0000000000, 11.1929000000,
        343.0000000000, 25.0000000000);
    path.lineTo(343.0000000000, 25.0000000000);
    path.cubicTo(343.0000000000, 38.8071000000, 331.8070000000, 50.0000000000,
        318.0000000000, 50.0000000000);
    path.lineTo(25.0000000000, 50.0000000000);
    path.cubicTo(
        11.1929000000, 50.0000000000, 0.0, 38.8071000000, 0.0, 25.0000000000);
    path.lineTo(0.0, 25.0000000000);
    path.close();
    return path;
  }

  static Path _build_28() {
    var path = Path();
    path.moveTo(25.0000000000, 1.0000000000);
    path.lineTo(318.0000000000, 1.0000000000);
    path.lineTo(318.0000000000, -1.0000000000);
    path.lineTo(25.0000000000, -1.0000000000);
    path.lineTo(25.0000000000, 1.0000000000);
    path.close();
    path.moveTo(318.0000000000, 49.0000000000);
    path.lineTo(25.0000000000, 49.0000000000);
    path.lineTo(25.0000000000, 51.0000000000);
    path.lineTo(318.0000000000, 51.0000000000);
    path.lineTo(318.0000000000, 49.0000000000);
    path.close();
    path.moveTo(25.0000000000, 49.0000000000);
    path.cubicTo(11.7452000000, 49.0000000000, 1.0000000000, 38.2548000000,
        1.0000000000, 25.0000000000);
    path.lineTo(-1.0000000000, 25.0000000000);
    path.cubicTo(-1.0000000000, 39.3594000000, 10.6406000000, 51.0000000000,
        25.0000000000, 51.0000000000);
    path.lineTo(25.0000000000, 49.0000000000);
    path.close();
    path.moveTo(342.0000000000, 25.0000000000);
    path.cubicTo(342.0000000000, 38.2548000000, 331.2550000000, 49.0000000000,
        318.0000000000, 49.0000000000);
    path.lineTo(318.0000000000, 51.0000000000);
    path.cubicTo(332.3590000000, 51.0000000000, 344.0000000000, 39.3594000000,
        344.0000000000, 25.0000000000);
    path.lineTo(342.0000000000, 25.0000000000);
    path.close();
    path.moveTo(318.0000000000, 1.0000000000);
    path.cubicTo(331.2550000000, 1.0000000000, 342.0000000000, 11.7452000000,
        342.0000000000, 25.0000000000);
    path.lineTo(344.0000000000, 25.0000000000);
    path.cubicTo(344.0000000000, 10.6406000000, 332.3590000000, -1.0000000000,
        318.0000000000, -1.0000000000);
    path.lineTo(318.0000000000, 1.0000000000);
    path.close();
    path.moveTo(25.0000000000, -1.0000000000);
    path.cubicTo(10.6406000000, -1.0000000000, -1.0000000000, 10.6406000000,
        -1.0000000000, 25.0000000000);
    path.lineTo(1.0000000000, 25.0000000000);
    path.cubicTo(1.0000000000, 11.7452000000, 11.7452000000, 1.0000000000,
        25.0000000000, 1.0000000000);
    path.lineTo(25.0000000000, -1.0000000000);
    path.close();
    return path;
  }

  static Path _build_29() {
    var path = Path();
    path.moveTo(0.0, 23.0000000000);
    path.cubicTo(0.0, 10.2975000000, 10.2975000000, 0.0, 23.0000000000, 0.0);
    path.lineTo(148.5000000000, 0.0);
    path.cubicTo(161.2030000000, 0.0, 171.5000000000, 10.2975000000,
        171.5000000000, 23.0000000000);
    path.lineTo(171.5000000000, 23.0000000000);
    path.cubicTo(171.5000000000, 35.7025000000, 161.2030000000, 46.0000000000,
        148.5000000000, 46.0000000000);
    path.lineTo(23.0000000000, 46.0000000000);
    path.cubicTo(
        10.2975000000, 46.0000000000, 0.0, 35.7025000000, 0.0, 23.0000000000);
    path.lineTo(0.0, 23.0000000000);
    path.close();
    return path;
  }

  static Path _build_30() {
    var path = Path();
    path.moveTo(0.0, 23.0000000000);
    path.cubicTo(0.0, 10.2975000000, 10.2975000000, 0.0, 23.0000000000, 0.0);
    path.lineTo(148.5000000000, 0.0);
    path.cubicTo(161.2030000000, 0.0, 171.5000000000, 10.2975000000,
        171.5000000000, 23.0000000000);
    path.lineTo(171.5000000000, 23.0000000000);
    path.cubicTo(171.5000000000, 35.7025000000, 161.2030000000, 46.0000000000,
        148.5000000000, 46.0000000000);
    path.lineTo(23.0000000000, 46.0000000000);
    path.cubicTo(
        10.2975000000, 46.0000000000, 0.0, 35.7025000000, 0.0, 23.0000000000);
    path.lineTo(0.0, 23.0000000000);
    path.close();
    return path;
  }

  static Path _build_31() {
    var path = Path();
    path.moveTo(227.0000000000, 0.0);
    path.lineTo(8.0000000000, 0.0);
    path.cubicTo(3.5817200000, 0.0, 0.0, 3.5817200000, 0.0, 8.0000000000);
    path.lineTo(0.0, 90.0000000000);
    path.lineTo(0.0, 103.0000000000);
    path.lineTo(0.0, 126.0000000000);
    path.lineTo(19.0000000000, 110.4830000000);
    path.lineTo(227.0000000000, 111.0000000000);
    path.cubicTo(231.4180000000, 111.0000000000, 235.0000000000, 107.4180000000,
        235.0000000000, 103.0000000000);
    path.lineTo(235.0000000000, 8.0000000000);
    path.cubicTo(
        235.0000000000, 3.5817200000, 231.4180000000, 0.0, 227.0000000000, 0.0);
    path.close();
    return path;
  }

  static Path _build_32() {
    var path = Path();
    path.moveTo(227.0000000000, 111.0000000000);
    path.lineTo(226.9990000000, 111.5000000000);
    path.lineTo(227.0000000000, 111.5000000000);
    path.lineTo(227.0000000000, 111.0000000000);
    path.close();
    path.moveTo(19.0000000000, 110.4830000000);
    path.lineTo(19.0012000000, 109.9830000000);
    path.lineTo(18.8223000000, 109.9820000000);
    path.lineTo(18.6837000000, 110.0950000000);
    path.lineTo(19.0000000000, 110.4830000000);
    path.close();
    path.moveTo(0.0, 126.0000000000);
    path.lineTo(-0.5000000000, 126.0000000000);
    path.lineTo(-0.5000000000, 127.0540000000);
    path.lineTo(0.3162740000, 126.3870000000);
    path.lineTo(0.0, 126.0000000000);
    path.close();
    path.moveTo(8.0000000000, 0.5000000000);
    path.lineTo(227.0000000000, 0.5000000000);
    path.lineTo(227.0000000000, -0.5000000000);
    path.lineTo(8.0000000000, -0.5000000000);
    path.lineTo(8.0000000000, 0.5000000000);
    path.close();
    path.moveTo(234.5000000000, 8.0000000000);
    path.lineTo(234.5000000000, 103.0000000000);
    path.lineTo(235.5000000000, 103.0000000000);
    path.lineTo(235.5000000000, 8.0000000000);
    path.lineTo(234.5000000000, 8.0000000000);
    path.close();
    path.moveTo(0.5000000000, 103.0000000000);
    path.lineTo(0.5000000000, 90.0000000000);
    path.lineTo(-0.5000000000, 90.0000000000);
    path.lineTo(-0.5000000000, 103.0000000000);
    path.lineTo(0.5000000000, 103.0000000000);
    path.close();
    path.moveTo(0.5000000000, 90.0000000000);
    path.lineTo(0.5000000000, 8.0000000000);
    path.lineTo(-0.5000000000, 8.0000000000);
    path.lineTo(-0.5000000000, 90.0000000000);
    path.lineTo(0.5000000000, 90.0000000000);
    path.close();
    path.moveTo(234.5000000000, 103.0000000000);
    path.cubicTo(234.5000000000, 107.1420000000, 231.1420000000, 110.5000000000,
        227.0000000000, 110.5000000000);
    path.lineTo(227.0000000000, 111.5000000000);
    path.cubicTo(231.6940000000, 111.5000000000, 235.5000000000, 107.6940000000,
        235.5000000000, 103.0000000000);
    path.lineTo(234.5000000000, 103.0000000000);
    path.close();
    path.moveTo(227.0000000000, 0.5000000000);
    path.cubicTo(231.1420000000, 0.5000000000, 234.5000000000, 3.8578600000,
        234.5000000000, 8.0000000000);
    path.lineTo(235.5000000000, 8.0000000000);
    path.cubicTo(235.5000000000, 3.3055800000, 231.6940000000, -0.5000000000,
        227.0000000000, -0.5000000000);
    path.lineTo(227.0000000000, 0.5000000000);
    path.close();
    path.moveTo(8.0000000000, -0.5000000000);
    path.cubicTo(3.3055800000, -0.5000000000, -0.5000000000, 3.3055800000,
        -0.5000000000, 8.0000000000);
    path.lineTo(0.5000000000, 8.0000000000);
    path.cubicTo(0.5000000000, 3.8578700000, 3.8578600000, 0.5000000000,
        8.0000000000, 0.5000000000);
    path.lineTo(8.0000000000, -0.5000000000);
    path.close();
    path.moveTo(18.6837000000, 110.0950000000);
    path.lineTo(-0.3162740000, 125.6130000000);
    path.lineTo(0.3162740000, 126.3870000000);
    path.lineTo(19.3163000000, 110.8700000000);
    path.lineTo(18.6837000000, 110.0950000000);
    path.close();
    path.moveTo(0.5000000000, 126.0000000000);
    path.lineTo(0.5000000000, 103.0000000000);
    path.lineTo(-0.5000000000, 103.0000000000);
    path.lineTo(-0.5000000000, 126.0000000000);
    path.lineTo(0.5000000000, 126.0000000000);
    path.close();
    path.moveTo(227.0010000000, 110.5000000000);
    path.lineTo(19.0012000000, 109.9830000000);
    path.lineTo(18.9988000000, 110.9830000000);
    path.lineTo(226.9990000000, 111.5000000000);
    path.lineTo(227.0010000000, 110.5000000000);
    path.close();
    return path;
  }

  static Path _build_33() {
    var path = Path();
    path.moveTo(227.0000000000, 0.0);
    path.lineTo(8.0000000000, 0.0);
    path.cubicTo(3.5817200000, 0.0, 0.0, 3.5817200000, 0.0, 8.0000000000);
    path.lineTo(0.0, 50.0000000000);
    path.lineTo(0.0, 63.0000000000);
    path.lineTo(0.0, 86.0000000000);
    path.lineTo(19.0000000000, 70.4828000000);
    path.lineTo(227.0000000000, 71.0000000000);
    path.cubicTo(231.4180000000, 71.0000000000, 235.0000000000, 67.4183000000,
        235.0000000000, 63.0000000000);
    path.lineTo(235.0000000000, 8.0000000000);
    path.cubicTo(
        235.0000000000, 3.5817200000, 231.4180000000, 0.0, 227.0000000000, 0.0);
    path.close();
    return path;
  }

  static Path _build_34() {
    var path = Path();
    path.moveTo(16.0000000000, 8.0000000000);
    path.cubicTo(16.0000000000, 12.4183000000, 12.4183000000, 16.0000000000,
        8.0000000000, 16.0000000000);
    path.cubicTo(
        3.5817200000, 16.0000000000, 0.0, 12.4183000000, 0.0, 8.0000000000);
    path.cubicTo(0.0, 3.5817200000, 3.5817200000, 0.0, 8.0000000000, 0.0);
    path.cubicTo(12.4183000000, 0.0, 16.0000000000, 3.5817200000, 16.0000000000,
        8.0000000000);
    path.close();
    return path;
  }

  static Path _build_35() {
    var path = Path();
    path.moveTo(15.0000000000, 8.0000000000);
    path.cubicTo(15.0000000000, 11.8660000000, 11.8660000000, 15.0000000000,
        8.0000000000, 15.0000000000);
    path.lineTo(8.0000000000, 17.0000000000);
    path.cubicTo(12.9706000000, 17.0000000000, 17.0000000000, 12.9706000000,
        17.0000000000, 8.0000000000);
    path.lineTo(15.0000000000, 8.0000000000);
    path.close();
    path.moveTo(8.0000000000, 15.0000000000);
    path.cubicTo(4.1340100000, 15.0000000000, 1.0000000000, 11.8660000000,
        1.0000000000, 8.0000000000);
    path.lineTo(-1.0000000000, 8.0000000000);
    path.cubicTo(-1.0000000000, 12.9706000000, 3.0294400000, 17.0000000000,
        8.0000000000, 17.0000000000);
    path.lineTo(8.0000000000, 15.0000000000);
    path.close();
    path.moveTo(1.0000000000, 8.0000000000);
    path.cubicTo(1.0000000000, 4.1340100000, 4.1340100000, 1.0000000000,
        8.0000000000, 1.0000000000);
    path.lineTo(8.0000000000, -1.0000000000);
    path.cubicTo(3.0294400000, -1.0000000000, -1.0000000000, 3.0294400000,
        -1.0000000000, 8.0000000000);
    path.lineTo(1.0000000000, 8.0000000000);
    path.close();
    path.moveTo(8.0000000000, 1.0000000000);
    path.cubicTo(11.8660000000, 1.0000000000, 15.0000000000, 4.1340100000,
        15.0000000000, 8.0000000000);
    path.lineTo(17.0000000000, 8.0000000000);
    path.cubicTo(17.0000000000, 3.0294400000, 12.9706000000, -1.0000000000,
        8.0000000000, -1.0000000000);
    path.lineTo(8.0000000000, 1.0000000000);
    path.close();
    return path;
  }

  static Path _build_36() {
    var path = Path();
    path.moveTo(12.0000000000, 6.0000000000);
    path.cubicTo(12.0000000000, 9.3137100000, 9.3137100000, 12.0000000000,
        6.0000000000, 12.0000000000);
    path.cubicTo(
        2.6862900000, 12.0000000000, 0.0, 9.3137100000, 0.0, 6.0000000000);
    path.cubicTo(0.0, 2.6862900000, 2.6862900000, 0.0, 6.0000000000, 0.0);
    path.cubicTo(9.3137100000, 0.0, 12.0000000000, 2.6862900000, 12.0000000000,
        6.0000000000);
    path.close();
    return path;
  }

  static Path _build_37() {
    var path = Path();
    path.moveTo(16.0000000000, 8.0000000000);
    path.cubicTo(16.0000000000, 12.4183000000, 12.4183000000, 16.0000000000,
        8.0000000000, 16.0000000000);
    path.cubicTo(
        3.5817200000, 16.0000000000, 0.0, 12.4183000000, 0.0, 8.0000000000);
    path.cubicTo(0.0, 3.5817200000, 3.5817200000, 0.0, 8.0000000000, 0.0);
    path.cubicTo(12.4183000000, 0.0, 16.0000000000, 3.5817200000, 16.0000000000,
        8.0000000000);
    path.close();
    return path;
  }

  static Path _build_38() {
    var path = Path();
    path.moveTo(15.0000000000, 8.0000000000);
    path.cubicTo(15.0000000000, 11.8660000000, 11.8660000000, 15.0000000000,
        8.0000000000, 15.0000000000);
    path.lineTo(8.0000000000, 17.0000000000);
    path.cubicTo(12.9706000000, 17.0000000000, 17.0000000000, 12.9706000000,
        17.0000000000, 8.0000000000);
    path.lineTo(15.0000000000, 8.0000000000);
    path.close();
    path.moveTo(8.0000000000, 15.0000000000);
    path.cubicTo(4.1340100000, 15.0000000000, 1.0000000000, 11.8660000000,
        1.0000000000, 8.0000000000);
    path.lineTo(-1.0000000000, 8.0000000000);
    path.cubicTo(-1.0000000000, 12.9706000000, 3.0294400000, 17.0000000000,
        8.0000000000, 17.0000000000);
    path.lineTo(8.0000000000, 15.0000000000);
    path.close();
    path.moveTo(1.0000000000, 8.0000000000);
    path.cubicTo(1.0000000000, 4.1340100000, 4.1340100000, 1.0000000000,
        8.0000000000, 1.0000000000);
    path.lineTo(8.0000000000, -1.0000000000);
    path.cubicTo(3.0294400000, -1.0000000000, -1.0000000000, 3.0294400000,
        -1.0000000000, 8.0000000000);
    path.lineTo(1.0000000000, 8.0000000000);
    path.close();
    path.moveTo(8.0000000000, 1.0000000000);
    path.cubicTo(11.8660000000, 1.0000000000, 15.0000000000, 4.1340100000,
        15.0000000000, 8.0000000000);
    path.lineTo(17.0000000000, 8.0000000000);
    path.cubicTo(17.0000000000, 3.0294400000, 12.9706000000, -1.0000000000,
        8.0000000000, -1.0000000000);
    path.lineTo(8.0000000000, 1.0000000000);
    path.close();
    return path;
  }

  static Path _build_39() {
    var path = Path();
    path.moveTo(0.0, 25.0000000000);
    path.cubicTo(0.0, 11.1929000000, 11.1929000000, 0.0, 25.0000000000, 0.0);
    path.lineTo(318.0000000000, 0.0);
    path.cubicTo(331.8070000000, 0.0, 343.0000000000, 11.1929000000,
        343.0000000000, 25.0000000000);
    path.lineTo(343.0000000000, 25.0000000000);
    path.cubicTo(343.0000000000, 38.8071000000, 331.8070000000, 50.0000000000,
        318.0000000000, 50.0000000000);
    path.lineTo(25.0000000000, 50.0000000000);
    path.cubicTo(
        11.1929000000, 50.0000000000, 0.0, 38.8071000000, 0.0, 25.0000000000);
    path.lineTo(0.0, 25.0000000000);
    path.close();
    return path;
  }

  static Path _build_40() {
    var path = Path();
    path.moveTo(25.0000000000, 1.0000000000);
    path.lineTo(318.0000000000, 1.0000000000);
    path.lineTo(318.0000000000, -1.0000000000);
    path.lineTo(25.0000000000, -1.0000000000);
    path.lineTo(25.0000000000, 1.0000000000);
    path.close();
    path.moveTo(318.0000000000, 49.0000000000);
    path.lineTo(25.0000000000, 49.0000000000);
    path.lineTo(25.0000000000, 51.0000000000);
    path.lineTo(318.0000000000, 51.0000000000);
    path.lineTo(318.0000000000, 49.0000000000);
    path.close();
    path.moveTo(25.0000000000, 49.0000000000);
    path.cubicTo(11.7452000000, 49.0000000000, 1.0000000000, 38.2548000000,
        1.0000000000, 25.0000000000);
    path.lineTo(-1.0000000000, 25.0000000000);
    path.cubicTo(-1.0000000000, 39.3594000000, 10.6406000000, 51.0000000000,
        25.0000000000, 51.0000000000);
    path.lineTo(25.0000000000, 49.0000000000);
    path.close();
    path.moveTo(342.0000000000, 25.0000000000);
    path.cubicTo(342.0000000000, 38.2548000000, 331.2550000000, 49.0000000000,
        318.0000000000, 49.0000000000);
    path.lineTo(318.0000000000, 51.0000000000);
    path.cubicTo(332.3590000000, 51.0000000000, 344.0000000000, 39.3594000000,
        344.0000000000, 25.0000000000);
    path.lineTo(342.0000000000, 25.0000000000);
    path.close();
    path.moveTo(318.0000000000, 1.0000000000);
    path.cubicTo(331.2550000000, 1.0000000000, 342.0000000000, 11.7452000000,
        342.0000000000, 25.0000000000);
    path.lineTo(344.0000000000, 25.0000000000);
    path.cubicTo(344.0000000000, 10.6406000000, 332.3590000000, -1.0000000000,
        318.0000000000, -1.0000000000);
    path.lineTo(318.0000000000, 1.0000000000);
    path.close();
    path.moveTo(25.0000000000, -1.0000000000);
    path.cubicTo(10.6406000000, -1.0000000000, -1.0000000000, 10.6406000000,
        -1.0000000000, 25.0000000000);
    path.lineTo(1.0000000000, 25.0000000000);
    path.cubicTo(1.0000000000, 11.7452000000, 11.7452000000, 1.0000000000,
        25.0000000000, 1.0000000000);
    path.lineTo(25.0000000000, -1.0000000000);
    path.close();
    return path;
  }

  static Path _build_41() {
    var path = Path();
    path.moveTo(0.0, 23.0000000000);
    path.cubicTo(0.0, 10.2975000000, 10.2975000000, 0.0, 23.0000000000, 0.0);
    path.lineTo(148.5000000000, 0.0);
    path.cubicTo(161.2030000000, 0.0, 171.5000000000, 10.2975000000,
        171.5000000000, 23.0000000000);
    path.lineTo(171.5000000000, 23.0000000000);
    path.cubicTo(171.5000000000, 35.7025000000, 161.2030000000, 46.0000000000,
        148.5000000000, 46.0000000000);
    path.lineTo(23.0000000000, 46.0000000000);
    path.cubicTo(
        10.2975000000, 46.0000000000, 0.0, 35.7025000000, 0.0, 23.0000000000);
    path.lineTo(0.0, 23.0000000000);
    path.close();
    return path;
  }

  static Path _build_42() {
    var path = Path();
    path.moveTo(0.0, 23.0000000000);
    path.cubicTo(0.0, 10.2975000000, 10.2975000000, 0.0, 23.0000000000, 0.0);
    path.lineTo(148.5000000000, 0.0);
    path.cubicTo(161.2030000000, 0.0, 171.5000000000, 10.2975000000,
        171.5000000000, 23.0000000000);
    path.lineTo(171.5000000000, 23.0000000000);
    path.cubicTo(171.5000000000, 35.7025000000, 161.2030000000, 46.0000000000,
        148.5000000000, 46.0000000000);
    path.lineTo(23.0000000000, 46.0000000000);
    path.cubicTo(
        10.2975000000, 46.0000000000, 0.0, 35.7025000000, 0.0, 23.0000000000);
    path.lineTo(0.0, 23.0000000000);
    path.close();
    return path;
  }

  static Path _build_43() {
    var path = Path();
    path.moveTo(4.0000000000, 1.0000000000);
    path.lineTo(12.0000000000, 1.0000000000);
    path.lineTo(12.0000000000, -1.0000000000);
    path.lineTo(4.0000000000, -1.0000000000);
    path.lineTo(4.0000000000, 1.0000000000);
    path.close();
    path.moveTo(15.0000000000, 4.0000000000);
    path.lineTo(15.0000000000, 12.0000000000);
    path.lineTo(17.0000000000, 12.0000000000);
    path.lineTo(17.0000000000, 4.0000000000);
    path.lineTo(15.0000000000, 4.0000000000);
    path.close();
    path.moveTo(12.0000000000, 15.0000000000);
    path.lineTo(4.0000000000, 15.0000000000);
    path.lineTo(4.0000000000, 17.0000000000);
    path.lineTo(12.0000000000, 17.0000000000);
    path.lineTo(12.0000000000, 15.0000000000);
    path.close();
    path.moveTo(1.0000000000, 12.0000000000);
    path.lineTo(1.0000000000, 4.0000000000);
    path.lineTo(-1.0000000000, 4.0000000000);
    path.lineTo(-1.0000000000, 12.0000000000);
    path.lineTo(1.0000000000, 12.0000000000);
    path.close();
    path.moveTo(4.0000000000, 15.0000000000);
    path.cubicTo(2.3431500000, 15.0000000000, 1.0000000000, 13.6569000000,
        1.0000000000, 12.0000000000);
    path.lineTo(-1.0000000000, 12.0000000000);
    path.cubicTo(-1.0000000000, 14.7614000000, 1.2385800000, 17.0000000000,
        4.0000000000, 17.0000000000);
    path.lineTo(4.0000000000, 15.0000000000);
    path.close();
    path.moveTo(15.0000000000, 12.0000000000);
    path.cubicTo(15.0000000000, 13.6569000000, 13.6569000000, 15.0000000000,
        12.0000000000, 15.0000000000);
    path.lineTo(12.0000000000, 17.0000000000);
    path.cubicTo(14.7614000000, 17.0000000000, 17.0000000000, 14.7614000000,
        17.0000000000, 12.0000000000);
    path.lineTo(15.0000000000, 12.0000000000);
    path.close();
    path.moveTo(12.0000000000, 1.0000000000);
    path.cubicTo(13.6569000000, 1.0000000000, 15.0000000000, 2.3431500000,
        15.0000000000, 4.0000000000);
    path.lineTo(17.0000000000, 4.0000000000);
    path.cubicTo(17.0000000000, 1.2385800000, 14.7614000000, -1.0000000000,
        12.0000000000, -1.0000000000);
    path.lineTo(12.0000000000, 1.0000000000);
    path.close();
    path.moveTo(4.0000000000, -1.0000000000);
    path.cubicTo(1.2385800000, -1.0000000000, -1.0000000000, 1.2385800000,
        -1.0000000000, 4.0000000000);
    path.lineTo(1.0000000000, 4.0000000000);
    path.cubicTo(1.0000000000, 2.3431500000, 2.3431500000, 1.0000000000,
        4.0000000000, 1.0000000000);
    path.lineTo(4.0000000000, -1.0000000000);
    path.close();
    return path;
  }

  static Path _build_44() {
    var path = Path();
    path.moveTo(0.3507590000, 3.1436700000);
    path.cubicTo(0.1539650000, 2.9499600000, -0.1626080000, 2.9524500000,
        -0.3563260000, 3.1492400000);
    path.cubicTo(-0.5500450000, 3.3460300000, -0.5475520000, 3.6626100000,
        -0.3507590000, 3.8563300000);
    path.lineTo(0.3507590000, 3.1436700000);
    path.close();
    path.moveTo(2.6666700000, 6.1250000000);
    path.lineTo(2.3159100000, 6.4813300000);
    path.lineTo(2.7261200000, 6.8851300000);
    path.lineTo(3.0685600000, 6.4224600000);
    path.lineTo(2.6666700000, 6.1250000000);
    path.close();
    path.moveTo(7.6018900000, 0.2974570000);
    path.cubicTo(7.7661800000, 0.0754965000, 7.7194200000, -0.2376140000,
        7.4974600000, -0.4018950000);
    path.cubicTo(7.2755000000, -0.5661760000, 6.9623900000, -0.5194170000,
        6.7981000000, -0.2974570000);
    path.lineTo(7.6018900000, 0.2974570000);
    path.close();
    path.moveTo(-0.3507590000, 3.8563300000);
    path.lineTo(2.3159100000, 6.4813300000);
    path.lineTo(3.0174200000, 5.7686700000);
    path.lineTo(0.3507590000, 3.1436700000);
    path.lineTo(-0.3507590000, 3.8563300000);
    path.close();
    path.moveTo(3.0685600000, 6.4224600000);
    path.lineTo(7.6018900000, 0.2974570000);
    path.lineTo(6.7981000000, -0.2974570000);
    path.lineTo(2.2647700000, 5.8275400000);
    path.lineTo(3.0685600000, 6.4224600000);
    path.close();
    return path;
  }

  static Path _build_45() {
    var path = Path();
    path.moveTo(4.0000000000, 1.0000000000);
    path.lineTo(12.0000000000, 1.0000000000);
    path.lineTo(12.0000000000, -1.0000000000);
    path.lineTo(4.0000000000, -1.0000000000);
    path.lineTo(4.0000000000, 1.0000000000);
    path.close();
    path.moveTo(15.0000000000, 4.0000000000);
    path.lineTo(15.0000000000, 12.0000000000);
    path.lineTo(17.0000000000, 12.0000000000);
    path.lineTo(17.0000000000, 4.0000000000);
    path.lineTo(15.0000000000, 4.0000000000);
    path.close();
    path.moveTo(12.0000000000, 15.0000000000);
    path.lineTo(4.0000000000, 15.0000000000);
    path.lineTo(4.0000000000, 17.0000000000);
    path.lineTo(12.0000000000, 17.0000000000);
    path.lineTo(12.0000000000, 15.0000000000);
    path.close();
    path.moveTo(1.0000000000, 12.0000000000);
    path.lineTo(1.0000000000, 4.0000000000);
    path.lineTo(-1.0000000000, 4.0000000000);
    path.lineTo(-1.0000000000, 12.0000000000);
    path.lineTo(1.0000000000, 12.0000000000);
    path.close();
    path.moveTo(4.0000000000, 15.0000000000);
    path.cubicTo(2.3431500000, 15.0000000000, 1.0000000000, 13.6569000000,
        1.0000000000, 12.0000000000);
    path.lineTo(-1.0000000000, 12.0000000000);
    path.cubicTo(-1.0000000000, 14.7614000000, 1.2385800000, 17.0000000000,
        4.0000000000, 17.0000000000);
    path.lineTo(4.0000000000, 15.0000000000);
    path.close();
    path.moveTo(15.0000000000, 12.0000000000);
    path.cubicTo(15.0000000000, 13.6569000000, 13.6569000000, 15.0000000000,
        12.0000000000, 15.0000000000);
    path.lineTo(12.0000000000, 17.0000000000);
    path.cubicTo(14.7614000000, 17.0000000000, 17.0000000000, 14.7614000000,
        17.0000000000, 12.0000000000);
    path.lineTo(15.0000000000, 12.0000000000);
    path.close();
    path.moveTo(12.0000000000, 1.0000000000);
    path.cubicTo(13.6569000000, 1.0000000000, 15.0000000000, 2.3431500000,
        15.0000000000, 4.0000000000);
    path.lineTo(17.0000000000, 4.0000000000);
    path.cubicTo(17.0000000000, 1.2385800000, 14.7614000000, -1.0000000000,
        12.0000000000, -1.0000000000);
    path.lineTo(12.0000000000, 1.0000000000);
    path.close();
    path.moveTo(4.0000000000, -1.0000000000);
    path.cubicTo(1.2385800000, -1.0000000000, -1.0000000000, 1.2385800000,
        -1.0000000000, 4.0000000000);
    path.lineTo(1.0000000000, 4.0000000000);
    path.cubicTo(1.0000000000, 2.3431500000, 2.3431500000, 1.0000000000,
        4.0000000000, 1.0000000000);
    path.lineTo(4.0000000000, -1.0000000000);
    path.close();
    return path;
  }

  static Path _build_46() {
    var path = Path();
    path.moveTo(0.3507590000, 3.1436700000);
    path.cubicTo(0.1539650000, 2.9499600000, -0.1626080000, 2.9524500000,
        -0.3563260000, 3.1492400000);
    path.cubicTo(-0.5500450000, 3.3460300000, -0.5475520000, 3.6626100000,
        -0.3507590000, 3.8563300000);
    path.lineTo(0.3507590000, 3.1436700000);
    path.close();
    path.moveTo(2.6666700000, 6.1250000000);
    path.lineTo(2.3159100000, 6.4813300000);
    path.lineTo(2.7261200000, 6.8851300000);
    path.lineTo(3.0685600000, 6.4224600000);
    path.lineTo(2.6666700000, 6.1250000000);
    path.close();
    path.moveTo(7.6018900000, 0.2974570000);
    path.cubicTo(7.7661800000, 0.0754965000, 7.7194200000, -0.2376140000,
        7.4974600000, -0.4018950000);
    path.cubicTo(7.2755000000, -0.5661760000, 6.9623900000, -0.5194170000,
        6.7981000000, -0.2974570000);
    path.lineTo(7.6018900000, 0.2974570000);
    path.close();
    path.moveTo(-0.3507590000, 3.8563300000);
    path.lineTo(2.3159100000, 6.4813300000);
    path.lineTo(3.0174200000, 5.7686700000);
    path.lineTo(0.3507590000, 3.1436700000);
    path.lineTo(-0.3507590000, 3.8563300000);
    path.close();
    path.moveTo(3.0685600000, 6.4224600000);
    path.lineTo(7.6018900000, 0.2974570000);
    path.lineTo(6.7981000000, -0.2974570000);
    path.lineTo(2.2647700000, 5.8275400000);
    path.lineTo(3.0685600000, 6.4224600000);
    path.close();
    return path;
  }

  static Path _build_47() {
    var path = Path();
    path.moveTo(8.0000000000, 4.0000000000);
    path.cubicTo(8.0000000000, 6.2091400000, 6.2091400000, 8.0000000000,
        4.0000000000, 8.0000000000);
    path.cubicTo(
        1.7908600000, 8.0000000000, 0.0, 6.2091400000, 0.0, 4.0000000000);
    path.cubicTo(0.0, 1.7908600000, 1.7908600000, 0.0, 4.0000000000, 0.0);
    path.cubicTo(6.2091400000, 0.0, 8.0000000000, 1.7908600000, 8.0000000000,
        4.0000000000);
    path.close();
    return path;
  }

  static Path _build_48() {
    var path = Path();
    path.moveTo(8.0000000000, 4.0000000000);
    path.cubicTo(8.0000000000, 6.2091400000, 6.2091400000, 8.0000000000,
        4.0000000000, 8.0000000000);
    path.cubicTo(
        1.7908600000, 8.0000000000, 0.0, 6.2091400000, 0.0, 4.0000000000);
    path.cubicTo(0.0, 1.7908600000, 1.7908600000, 0.0, 4.0000000000, 0.0);
    path.cubicTo(6.2091400000, 0.0, 8.0000000000, 1.7908600000, 8.0000000000,
        4.0000000000);
    path.close();
    return path;
  }

  static Path _build_49() {
    var path = Path();
    path.moveTo(8.0000000000, 4.0000000000);
    path.cubicTo(8.0000000000, 6.2091400000, 6.2091400000, 8.0000000000,
        4.0000000000, 8.0000000000);
    path.cubicTo(
        1.7908600000, 8.0000000000, 0.0, 6.2091400000, 0.0, 4.0000000000);
    path.cubicTo(0.0, 1.7908600000, 1.7908600000, 0.0, 4.0000000000, 0.0);
    path.cubicTo(6.2091400000, 0.0, 8.0000000000, 1.7908600000, 8.0000000000,
        4.0000000000);
    path.close();
    return path;
  }
}

class _PaintCatalog {
  _PaintCatalog() {
    paint_0 = (Paint()..color = _ColorCatalog.instance.color_1);
    paint_1 = (Paint()..color = _ColorCatalog.instance.color_2);
    paint_2 = (Paint()..color = _ColorCatalog.instance.color_4);
    paint_3 = (Paint()..color = _ColorCatalog.instance.color_5);
    paint_4 = (Paint()..color = _ColorCatalog.instance.color_8);
    paint_5 = (Paint()..color = _ColorCatalog.instance.color_9);
    paint_6 = (Paint()..color = _ColorCatalog.instance.color_3);
  }

  late Paint paint_0;

  late Paint paint_1;

  late Paint paint_2;

  late Paint paint_3;

  late Paint paint_4;

  late Paint paint_5;

  late Paint paint_6;

  static final _PaintCatalog instance = _PaintCatalog();
}

class _EffectCatalog {
  _EffectCatalog();

  static final _EffectCatalog instance = _EffectCatalog();
}

class _ColorCatalog {
  _ColorCatalog() {
    color_0 = const Color.fromARGB(0, 0, 0, 0);
    color_1 = const Color.fromARGB(255, 246, 246, 246);
    color_2 = const Color.fromARGB(255, 231, 231, 231);
    color_3 = const Color.fromARGB(255, 189, 189, 189);
    color_4 = const Color.fromARGB(255, 245, 152, 12);
    color_5 = const Color.fromARGB(255, 255, 255, 255);
    color_6 = const Color.fromARGB(255, 102, 102, 102);
    color_7 = const Color.fromARGB(255, 0, 0, 0);
    color_8 = const Color.fromARGB(255, 240, 240, 240);
    color_9 = const Color.fromARGB(255, 161, 96, 251);
  }

  late Color color_0;

  late Color color_1;

  late Color color_2;

  late Color color_3;

  late Color color_4;

  late Color color_5;

  late Color color_6;

  late Color color_7;

  late Color color_8;

  late Color color_9;

  static final _ColorCatalog instance = _ColorCatalog();
}

class _TextStyleCatalog {
  _TextStyleCatalog() {
    ui_TextStyle_0 = ui.TextStyle(
      fontFamily: 'Inter',
      color: _ColorCatalog.instance.color_3,
      fontSize: 16.0000000000,
      fontWeight: FontWeight.w500,
    );
    ui_TextStyle_1 = ui.TextStyle(
      fontFamily: 'Inter',
      color: _ColorCatalog.instance.color_4,
      fontSize: 16.0000000000,
      fontWeight: FontWeight.w500,
    );
    ui_TextStyle_2 = ui.TextStyle(
      fontFamily: 'Inter',
      color: _ColorCatalog.instance.color_6,
      fontSize: 14.0000000000,
      fontWeight: FontWeight.w400,
    );
    ui_TextStyle_3 = ui.TextStyle(
      fontFamily: 'Inter',
      color: _ColorCatalog.instance.color_5,
      fontSize: 16.0000000000,
      fontWeight: FontWeight.w600,
    );
    ui_TextStyle_4 = ui.TextStyle(
      fontFamily: 'Inter',
      color: _ColorCatalog.instance.color_7,
      fontSize: 16.0000000000,
      fontWeight: FontWeight.w600,
    );
    ui_TextStyle_5 = ui.TextStyle(
      fontFamily: 'Inter',
      color: _ColorCatalog.instance.color_3,
      fontSize: 14.0000000000,
      fontWeight: FontWeight.w400,
    );
    ui_TextStyle_6 = ui.TextStyle(
      fontFamily: 'Inter',
      color: _ColorCatalog.instance.color_7,
      fontSize: 14.0000000000,
      fontWeight: FontWeight.w400,
    );
    ui_TextStyle_7 = ui.TextStyle(
      fontFamily: 'Inter',
      color: _ColorCatalog.instance.color_6,
      fontSize: 10.0000000000,
      fontWeight: FontWeight.w400,
    );
    ui_TextStyle_8 = ui.TextStyle(
      fontFamily: 'Inter',
      color: _ColorCatalog.instance.color_7,
      fontSize: 16.0000000000,
      fontWeight: FontWeight.w500,
    );
    ui_TextStyle_9 = ui.TextStyle(
      fontFamily: 'Inter',
      color: _ColorCatalog.instance.color_3,
      fontSize: 16.0000000000,
      fontWeight: FontWeight.w600,
    );
    ui_TextStyle_10 = ui.TextStyle(
      fontFamily: 'Inter',
      color: _ColorCatalog.instance.color_4,
      fontSize: 16.0000000000,
      fontWeight: FontWeight.w600,
    );
    ui_TextStyle_11 = ui.TextStyle(
      fontFamily: 'Inter',
      color: _ColorCatalog.instance.color_5,
      fontSize: 14.0000000000,
      fontWeight: FontWeight.w400,
    );
    ui_TextStyle_12 = ui.TextStyle(
      fontFamily: 'Inter',
      color: _ColorCatalog.instance.color_9,
      fontSize: 16.0000000000,
      fontWeight: FontWeight.w600,
    );
  }

  late ui.TextStyle ui_TextStyle_0;

  late ui.TextStyle ui_TextStyle_1;

  late ui.TextStyle ui_TextStyle_2;

  late ui.TextStyle ui_TextStyle_3;

  late ui.TextStyle ui_TextStyle_4;

  late ui.TextStyle ui_TextStyle_5;

  late ui.TextStyle ui_TextStyle_6;

  late ui.TextStyle ui_TextStyle_7;

  late ui.TextStyle ui_TextStyle_8;

  late ui.TextStyle ui_TextStyle_9;

  late ui.TextStyle ui_TextStyle_10;

  late ui.TextStyle ui_TextStyle_11;

  late ui.TextStyle ui_TextStyle_12;

  static final _TextStyleCatalog instance = _TextStyleCatalog();
}

class Data {
  Data({required this.isVisible});

  final bool isVisible;

  @override
  bool operator ==(o) => o is Data && isVisible == o.isVisible;
  @override
  int get hashcode {
    int result = 17;
    result = 37 * result + (isVisible.hashCode ?? 0);
    return result;
  }
}

class TextData extends Data {
  TextData({isVisible, required this.text}) : super(isVisible: isVisible);

  final String text;

  @override
  bool operator ==(o) =>
      o is TextData && isVisible == o.isVisible && text == o.text;
  @override
  int get hashcode {
    int result = 17;
    result = 37 * result + (isVisible.hashCode ?? 0);
    result = 37 * result + (text.hashCode ?? 0);
    return result;
  }
}

class VectorData extends Data {
  VectorData({isVisible}) : super(isVisible: isVisible);

  @override
  bool operator ==(o) => o is VectorData && isVisible == o.isVisible;
  @override
  int get hashcode {
    int result = 17;
    result = 37 * result + (isVisible.hashCode ?? 0);
    return result;
  }
}
