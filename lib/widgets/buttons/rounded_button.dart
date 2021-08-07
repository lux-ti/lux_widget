import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';

class XRoundedButton extends StatelessWidget {
  final double? height;
  final double? width;
  final String? name;
  final Color? color;
 
  final void Function() onTap;

  

  const XRoundedButton({ Key? key, this.height, this.width, required this.onTap, this.name, this.color  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        
        alignment: Alignment.center,
        height: height ?? 34,
        width: width ?? 100,
        child: Text(name!,style: TextStyle(color: xTheme.backgroundColor,fontSize: 16,fontWeight: FontWeight.w700,)),
        
        decoration: BoxDecoration(
          color: color ?? xTheme.warningColor,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
    
      ),
    );
  }
}