import 'package:flutter/material.dart';

class XStatusBox extends StatelessWidget {
  final String name;
  final double? size;
  final Color color;
  XStatusBox({Key? key, this.size, required this.name, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          name,
          style: TextStyle(
              color: Colors.white,
              fontSize: size ?? 20,
              fontWeight: FontWeight.w700,letterSpacing: 1),
        ),
      ),
    );
  }
}
