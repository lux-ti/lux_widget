import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';

class XSelector extends StatelessWidget {
  final double? height;
  final double? width;
  final String text;
  final void Function() onTap;


  const XSelector({ Key? key,  this.height = 36,  this.width = 300,  required this.text, required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: xTheme.disabledColor),
          borderRadius: BorderRadius.all(Radius.circular(8))
        ),
        width: width,   
        height: height,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [            
              Text(text,style: TextStyle(color: xTheme.disabledColor,fontSize: 12),),            
              Icon(Lxi.chevronBottom,size: 18,)
            ],
          ),
        ),
      ),
    );
  }
}