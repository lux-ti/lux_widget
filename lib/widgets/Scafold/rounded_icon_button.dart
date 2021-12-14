import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  final double? width;
  final double? height;
  final double? iconSize;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? padding;
  final IconData? icon;
  final void Function()? onPressed;

  const RoundedIconButton(
      {Key? key,
      this.padding,
      this.width,
      this.height,
      this.backgroundColor,
      this.iconColor,
      this.icon,
      this.onPressed,
      this.iconSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(padding ?? 0),
        width: width ?? 31,
        height: height ?? 31,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
        ),
        child: Center(
          child: Icon(
            icon,
            size: iconSize ?? 31,
            color: iconColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
