import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';

class XStatus extends StatelessWidget {
  final String? name;
  final String? days;
  final Color? color;
  final String? intDays;

  const XStatus(
      {Key? key, this.name, this.color = Colors.red, this.intDays, this.days})
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
              days!,
          style: TextStyle(
            color: color ?? xTheme.dangeColor,
            fontSize: 12,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }

  static Widget tatusBox() {
    return Text('dwa');
  }
}
