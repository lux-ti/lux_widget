import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';

class RoundedButton extends StatelessWidget {
  final double? height;
  final double? width;
 
  final void Function() onTap;

  

  const RoundedButton({ Key? key, this.height, this.width, required this.onTap, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        
        alignment: Alignment.center,
        height: height ?? 34,
        width: width ?? 100,
        child: Text('Login',style: TextStyle(color: xTheme.backgroundColor,fontSize: 16,fontWeight: FontWeight.w700,)),
        
        decoration: BoxDecoration(
          color: xTheme.warningColor,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
    
      ),
    );
  }
}