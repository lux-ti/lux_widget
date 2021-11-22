import 'package:flutter/material.dart';
import 'package:lux_ui/lux_ui.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';

class XScafoldGrey extends XScafold {
  final Widget? topChild;
  final double? textSize;
  final TextStyle? textStyle;
  final bool? isCode;
  final String? codeNumber;

  XScafoldGrey({
    this.codeNumber,
    this.isCode = false,
    this.textStyle,
    this.textSize,
    Key? key,
    this.topChild,
    String? title,
    Widget? child,
    void Function()? onBack,
  }) : super(title: title, child: child, onBack: onBack);

  Widget buildTop(context) {
    final parentRoute = ModalRoute.of(context);
    return Row(
      children: [
        if (onBack != null || parentRoute?.canPop == true) ...[
          buildBackButton(context),
        ],
        SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (isCode == true) ? codeNumberText() : Container(),
            buildTitle(),
          ],
        ),
      ],
    );
  }

  Widget buildTitle() {
    return Text(
      title ?? "",
      style: textStyle ??
          TextStyle(
              fontFamily: 'Rubik',
              fontWeight: FontWeight.w300,
              color: theme.backgroundColor,
              fontSize: textSize ?? 38),
    );
  }

  Widget codeNumberText() {
    return Text(codeNumber ?? '',
        style: TextStyle(
            color: theme.backgroundColor,
            fontSize: 12,
            fontWeight: FontWeight.w700,
            letterSpacing: 1));
  }

  @override
  Widget build(BuildContext context) {
    theme = XTheme.of(context);
    return Scaffold(
        backgroundColor: theme.foregroundColor,
        body: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.only(left: 8, right: 8, top: 18),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTop(context),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(child: buildChild(context))
                ],
              ),
            ),
          ),
        ));
  }
}
