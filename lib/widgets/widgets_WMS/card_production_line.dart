import 'package:flutter/material.dart';

class XCardProductionLine extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? borderColor;
  final Color? frontColor;
  final double? borderWidth;
  final double? borderRadius;
  final Widget? leftWidget;
  final Widget? rightWidget;
  final String imageUrl;

  const XCardProductionLine(
      {Key? key,
      this.height,
      this.width,
      this.borderColor,
      this.frontColor,
      this.borderWidth,
      this.borderRadius,
      this.leftWidget,
      this.rightWidget,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 75,
      width: width ?? null,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 5),
        color: borderColor,
      ),
      child: Container(
        height: height ?? 75,
        width: width ?? null,
        margin: EdgeInsets.only(right: borderWidth ?? 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 5),
            color: frontColor),
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 30, 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    child: Image.network(imageUrl),
                  ),
                ],
              ),
              Spacer(),
              leftWidget ?? Container(),
              Spacer(
                flex: 4,
              ),
              rightWidget ?? Container(),
            ],
          ),
        ),
      ),
    );
  }
}
