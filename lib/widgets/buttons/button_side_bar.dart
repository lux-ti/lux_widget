import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';

class XSideBarButton extends StatelessWidget {
  final IconData icon;
  final String? text;
  final void Function()? onTap;
  final double? fontSize;
  final Color? colorIcon;
  final Color? colorText;
  final double? iconSize;
  final MainAxisAlignment mainAxisAlignment;

  const XSideBarButton(
      {Key? key,
      required this.icon,
      this.text = '',
      this.onTap,
      this.fontSize = 30,
      this.colorIcon,
      this.iconSize,
      this.colorText,
      this.mainAxisAlignment = MainAxisAlignment.start})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);

    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: mainAxisAlignment,
          children: [
            Icon(
              icon,
              size: iconSize,
              color: colorIcon ?? xTheme.backgroundColor,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text!,
              style: TextStyle(
                  color: colorText ?? xTheme.backgroundColor,
                  fontSize: fontSize,
                  fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    );
  }
}
