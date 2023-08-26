import 'package:flutter/material.dart';

class CustompainterScreen extends StatefulWidget {
  const CustompainterScreen({super.key});

  @override
  State<CustompainterScreen> createState() => _CustompainterScreenState();
}

class _CustompainterScreenState extends State<CustompainterScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimation;
  late Animation<Color?> _colorAnimation;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _sizeAnimation = Tween<double>(begin: 50, end: 100).animate(_controller);
    _colorAnimation = ColorTween(begin: Colors.red, end: Colors.blue).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );
    _controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom painter"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return CustomPaint(
              painter: CirclePainter(
                  _colorAnimation.value ?? Colors.red, _sizeAnimation.value),
              size: const Size.square(200),
            );
          },
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  final Color _color;
  final double _size;

  CirclePainter(this._color, this._size);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = _color;
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.width / 2, size.width / 2), _size, paint);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    return (_color != oldDelegate._color || _size != oldDelegate._size);
  }
}
