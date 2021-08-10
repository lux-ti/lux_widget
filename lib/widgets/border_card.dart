import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';

class XBorderCard extends StatelessWidget {
  final double? width;
  final double? heigth;
  final bool? isBorder;

  const XBorderCard({Key? key, this.width = 380, this.heigth = 192, this.isBorder = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var aux = isBorder;
    var xTheme = XTheme.of(context);
    return Stack(
      
      children: [
        Container(
          width: width,
          height: heigth,
          decoration: BoxDecoration(
            color: xTheme.warningColor,
            borderRadius: BorderRadius.circular(7)
            
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: (aux == true) ? 5 : 0),
          child: Container(
            width: 380,
            height: heigth,
            decoration: BoxDecoration(
              color: xTheme.backgroundColor,
              borderRadius: BorderRadius.circular(7)
            ),
          ),
        ),
      ],
    );
  }
}