import 'package:flutter/material.dart';

class DrawTactics extends StatefulWidget {
  @override
  _DrawTacticsState createState() => _DrawTacticsState();
}

class _DrawTacticsState extends State<DrawTactics> {
  final _strokes = <Path>[];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        children: [
          _gestureDetector(),
        ],
      ),
    );
  }

  Widget _gestureDetector() {
    return GestureDetector(
      onPanDown: (details) => _startStroke(
        details.localPosition.dx,
        details.localPosition.dy,
      ),
      onPanUpdate: (details) => _moveStroke(
        details.localPosition.dx,
        details.localPosition.dy,
      ),
      onDoubleTap: _cleanStroke,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: CustomPaint(
          painter: DrawingPainter(_strokes),
        ),
      ),
    );
  }

  void _startStroke(double x, double y) {
    _strokes.add(Path()..moveTo(x, y));
  }

  void _moveStroke(double x, double y) {
    setState(() {
      _strokes.last.lineTo(x, y);
    });
  }

  void _cleanStroke() {
    setState(() {
      _strokes.clear();
    });
  }
}

class DrawingPainter extends CustomPainter {
  final List<Path> strokes;

  DrawingPainter(this.strokes);
  @override
  void paint(Canvas canvas, Size size) {
    for (final stroke in strokes) {
      final paint = Paint()
        ..strokeWidth = 5
        ..color = const Color.fromARGB(255, 233, 231, 236)
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
