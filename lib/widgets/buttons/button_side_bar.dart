import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';


class XSideBarButton extends StatelessWidget {
  final IconData icon;
  final String? text;
  final void Function()? onTap;
  final double? fontSize;
  final Color? color;
  final double? iconSize;
  

  const XSideBarButton({ Key? key, required this.icon,  this.text = '',  this.onTap, this.fontSize = 30, this.color, this.iconSize }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,
          size: iconSize,
          color: color,
          ),

          SizedBox(width: 10,),

          Text(text!,
          style: TextStyle(
            color: color ?? xTheme.backgroundColor,
            fontSize: fontSize,
            
          ),)
        ],
      ),
    );
  }
}