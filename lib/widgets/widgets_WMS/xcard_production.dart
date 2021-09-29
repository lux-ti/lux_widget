import 'package:flutter/material.dart';

class XCardProduction extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? topLeftWidget;
  final Widget? bottomLeftWidget;
  final Widget? topRightWidget;
  final Widget? bottomRightWidget;
  final Color? borderColor;
  final Color? frontColor;
  final double? borderWidth;
  final double? borderRadius;


  const XCardProduction(
      {Key? key,
      this.height,
      this.width,
      this.topLeftWidget,
      this.bottomLeftWidget,
      this.topRightWidget,
      this.bottomRightWidget, this.borderColor, this.frontColor, this.borderWidth, this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 106,
      width: width ?? null,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 5),
        color: borderColor
      ),
      child: Container(
        height: height ?? 106,
        width: width ?? null,
        margin: EdgeInsets.only(left: borderWidth ?? 2),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 5),
        color: frontColor,
      ),

        child: Padding(
          padding: const EdgeInsets.fromLTRB(20,15,25,10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  topLeftWidget ?? Container(),
                  bottomLeftWidget ?? Container(),

                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  topRightWidget ?? Container(),
                  bottomRightWidget ?? Container(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
