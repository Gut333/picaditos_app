import 'package:flutter/material.dart';


class DrawTactics extends StatefulWidget {
  @override
  _DrawTacticsState createState() => _DrawTacticsState();
}

class _DrawTacticsState extends State<DrawTactics> {
  final _strokes = <Path>[];

  void _startStroke(double x, double y) {
    _strokes.add(Path()..moveTo(x, y));
  }

  void _moveStroke(double x, double y) {
    setState(() {
      _strokes.last.lineTo(x, y);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onPanDown: (details) => _startStroke(
          details.localPosition.dx,
          details.localPosition.dy,
        ),
        onPanUpdate: (details) => _moveStroke(
          details.localPosition.dx,
          details.localPosition.dy,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: CustomPaint(
            painter: DrawingPainter(_strokes),
          ),
        ),
      );

  }
}

class DrawingPainter extends CustomPainter {
  final List<Path> strokes;

  DrawingPainter(this.strokes);
  @override
  void paint(Canvas canvas, Size size) {
    for (final stroke in strokes) {
      final paint = Paint()
        ..strokeWidth = 6
        ..color = const Color.fromARGB(255, 155, 34, 65)
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round;


      canvas.drawPath(stroke, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}