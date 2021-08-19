import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_ui/lib.dart';

class XCheckBox extends StatelessWidget {
  final double? width;
  final double? heigth;
  final Color? color;
  final double borderRadius;
  final bool? isTap;
  final void Function(bool value)? onTap;

  const XCheckBox({
    Key? key,
    this.width = 27,
    this.heigth = 27,
    this.color,
    this.borderRadius = 5,
    this.isTap,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);
    var isTouch = (isTap == null) ? false.obs : isTap.obs;
    return GestureDetector(
        onTap: () {
          isTouch.value = (isTouch.isTrue!) ? false : true;
          onTap!(isTouch.value!);
        },
        child: Obx(() => border(xTheme, isTouch.value!)));
  }

  Widget border(XThemeData xTheme, bool isTouch) {
    return Container(
      height: heigth,
      width: width,
      decoration: BoxDecoration(
        color: null,
        border: Border.all(color: color ?? xTheme.primaryColor),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: childInside(isTouch, xTheme),
    );
  }

  Widget childInside(bool isTouch, XThemeData xTheme) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
            color: isTouch ? null : xTheme.primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(4))),
      ),
    );
  }
}
