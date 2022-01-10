import 'package:flutter/material.dart';
import 'package:lux_ui/widgets/buttons/buttons.dart';

class XStatusBox extends StatelessWidget {
  final String name;
  final double? size;
  final double? width;
  final double? height;
  final Color color;
  final bool boll;
  final bool inBox;
  XStatusBox({
    Key? key,
    this.size,
    required this.name,
    required this.color,
    this.boll = false,
    this.inBox = false, this.width, this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (boll && inBox != true) {
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
              color: color == Colors.white ? null : color,
              fontSize: 12,
              fontWeight: FontWeight.w800,
              letterSpacing: 1,
            ),
          ),
        ],
      );
    }
    if (inBox && boll != true) {
      return Container(
        width: width ?? 140,
        height: height ?? 30,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        child: Center(
            child: Text(
          name,
          style: TextStyle(
            color: color == Colors.white ? null : Colors.white,
            fontSize: size ?? 10,
            fontWeight: FontWeight.w800,
            letterSpacing: 1,
          ),
        )),
      );
    }
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
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
              letterSpacing: 1,
            ),
          ),
        ),
      ),
    );
  }
}
