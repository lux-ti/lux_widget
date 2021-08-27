import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';

class XBorderCard extends StatelessWidget {
  final double? width;
  final double? heigth;
  final double? widthOut;
  final double? heigthOut;
  final bool? isBorder;
  final Widget? child;
  final Color? colorBorder;

  const XBorderCard({Key? key, this.width = 380, this.heigth = 192, this.isBorder = false, this.child, this.widthOut, this.heigthOut, this.colorBorder})
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
            borderRadius: BorderRadius.circular(7),
            
            
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: (aux == true) ? 3 : 0),
          child: Container(
            child: child,
            width: widthOut,
            height: heigthOut,
            decoration: BoxDecoration(
              color: colorBorder,
              borderRadius: BorderRadius.circular(7)
            ),
          ),
        ),
      ],
    );
  }
}
