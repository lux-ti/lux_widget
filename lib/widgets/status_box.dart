import 'package:flutter/material.dart';

class XStatusBox extends StatelessWidget {
  final String name;
  final double? size;
  final Color color;
  final bool boll;
  XStatusBox(
      {Key? key,
      this.size,
      required this.name,
      required this.color,
      this.boll = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (boll) {
      return Row(
        children: [
          Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: color,
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            name,
            style: TextStyle(
              color: color,
              fontSize: 12,
              fontWeight: FontWeight.w800,
              letterSpacing: 1,
            ),
          ),
        ],
      );
    }
    return Container(
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text(
            name,
            style: TextStyle(
                color: Colors.white,
                fontSize: size ?? 10,
                fontWeight: FontWeight.w800,
                letterSpacing: 1),
          ),
        ),
      ),
    );
  }
}
