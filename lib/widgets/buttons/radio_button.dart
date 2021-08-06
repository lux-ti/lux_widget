import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';
import 'package:lux_ui/widgets/buttons/buttons.dart';

class XRadiobutton extends XCheckBox {
  const XRadiobutton({Key? key, double? width,
   double? heigth,
   Color? color,
   double borderRadius = 5,
   bool? isTap,
   void Function(bool value)? onTap}) : super(key: key,width: width,heigth: heigth,color: color,isTap: isTap,onTap: onTap,borderRadius: borderRadius);

  Widget border(XThemeData xTheme, bool isTouch) {
    return Container(

      height: 16,
      width: 17,
      decoration: BoxDecoration(
        color: null,
        border: Border.all(color: color ?? xTheme.primaryColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: childInside(isTouch, xTheme),
    );
  }

  Padding childInside(bool isTouch, XThemeData xTheme) {
    return Padding(
      padding: const EdgeInsets.all(2.3),
      child: Container(
        decoration: BoxDecoration(
            color: isTouch ? null : xTheme.primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(15))),
      ),
    );
  }
}
