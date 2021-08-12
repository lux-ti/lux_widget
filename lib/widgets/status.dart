import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';

class XStatus extends StatelessWidget {
  final String? name;
  final Color? color;
  final int? intDays;

  const XStatus({Key? key, this.name, this.color = Colors.red, this.intDays})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '${name.toString().toUpperCase()}' +
              ' ${intDays.toString().toUpperCase()}' +
              ' DIAS',
          style: TextStyle(
            color: color ?? xTheme.dangeColor,
            fontSize: 12,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
