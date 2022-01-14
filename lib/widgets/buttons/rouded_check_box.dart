import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';
import 'package:lux_ui/widgets/buttons/buttons.dart';

import '../../theme_data.dart';

class XRoundedCheckBox extends XCheckBox {
  XRoundedCheckBox(
      {Key? key,
      double? width,
      double? heigth,
      Color? color,
      double borderRadius = 5,
      bool? isTap,
      void Function(bool value)? onTap})
      : super(
            key: key,
            width: width,
            heigth: heigth,
            color: color,
            isTap: isTap,
            onTap: onTap,
            borderRadius: borderRadius);

  Widget border(XThemeData xTheme, bool isTouch) {
    return Container(
      height: 18,
      width: 18,
      decoration: BoxDecoration(
        color: null,
        border: Border.all(color: color ?? xTheme.primaryColor),
        borderRadius: BorderRadius.circular(25),
      ),
      child: isTouch ? null : childInside(isTouch, xTheme),
    );
  }

  Widget childInside(bool isTouch, XThemeData xTheme) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isTouch ? null : xTheme.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(25))),
      child: Center(
          child: Icon(
        Icons.check,
        color: xTheme.backgroundColor,
        size: 10,
      )),
    );
  }
}
