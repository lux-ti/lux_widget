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

  const XSideBarButton({ Key? key, required this.icon,  this.text = '',  this.onTap, this.fontSize = 30, this.colorIcon, this.iconSize, this.colorText }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);
<<<<<<< HEAD
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,
          size: iconSize,
          color: colorIcon,
          ),

          SizedBox(width: 10,),

          Text(text!,
          style: TextStyle(
            color: colorText ?? xTheme.backgroundColor,
            fontSize: fontSize,
            
          ),)
        ],
=======
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: iconSize,
              color: color ?? xTheme.backgroundColor,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text!,
              style: TextStyle(
                  color: color ?? xTheme.backgroundColor,
                  fontSize: fontSize,
                  fontWeight: FontWeight.w300),
            )
          ],
        ),
>>>>>>> 747eaf7ed07259dad38defa96f83d8edbc7a33d5
      ),
    );
  }
}
