import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  final double? width;
  final double? height;
  final double? iconSize;
  final Color? backgroundColor;
  final Color? iconColor;
  final IconData? icon;
  final void Function()? onPressed;

  const RoundedIconButton(
      {Key? key,
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
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: Center(
        child: IconButton(
          icon: Icon(
            icon,
            size: iconSize,
            color: iconColor,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
