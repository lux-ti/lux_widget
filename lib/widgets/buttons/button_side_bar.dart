import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';


class XSideBarButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function() onTap;
  

  const XSideBarButton({ Key? key, required this.icon, required this.text, required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon,
          color: xTheme.backgroundColor,
          ),

          SizedBox(width: 10,),

          Text(text,
          style: TextStyle(
            color: xTheme.backgroundColor,
            fontSize: 30,
            
          ),)
        ],
      ),
    );
  }
}