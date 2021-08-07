import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';

class XSquaredButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget child;
  final Color? color;
  final void Function() onTap;



  const XSquaredButton({ Key? key, this.height, this.width, required this.child, this.color, required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        color:  color ?? XTheme.of(context).primaryColor,
        height: height ?? 100,
        width: width ?? 100 ,
        child: Center(
          child: child,
          
          ),
        
      ),
    );
  }
}