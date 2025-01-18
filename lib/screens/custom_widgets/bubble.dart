
import 'package:flutter/cupertino.dart';

class Bubble extends StatelessWidget {
  final double size;
  final Color color;
  final Widget? text;

  Bubble({required this.size, required this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child:text,
    );
  }
}