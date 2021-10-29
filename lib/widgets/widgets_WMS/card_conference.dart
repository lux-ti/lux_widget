import 'package:flutter/material.dart';

class XCardConference extends StatelessWidget {

  final double? height;
  final double? width;
  final Color? borderColor;
  final Color? frontColor;
  final double? borderWidth;
  final double? borderRadius;
  final Widget? leftWidget;
  final Widget? rightWidget;
  


  const XCardConference({ Key? key, this.height, this.width, this.borderColor, this.frontColor, this.borderWidth, this.borderRadius, this.leftWidget, this.rightWidget }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 75, 
      width : width ?? null,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 5),
        color: borderColor,
      ),
      child: Container(
        height: height ?? 75,
        width: width ?? null,
        margin: EdgeInsets.only(left: borderWidth ?? 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 5),
          color: frontColor
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20,10,30,10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              
              leftWidget ?? Container(),
              Spacer(flex: 4,),
              rightWidget ?? Container(),
            ],
          ),
          ),
      ),
    );
  }
}