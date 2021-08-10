import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';

class XStatus extends StatelessWidget {
  final String? name;
  final Color? color;
  final int? intDays;

  const XStatus({ Key? key, this.name, this.color = Colors.red, this.intDays }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);

    return Row(
      children: [
        Container(
          height: 5,
          width: 5,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15)
          ),
        ),

        SizedBox(width: 5,),

        Text(
          '$name' + ' $intDays' + ' DIAS',
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