import 'package:flutter/material.dart';
import 'package:lux_ui/lux_ui.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';
import 'package:lux_ui/widgets/Scafold/rounded_icon_button.dart';
import 'package:lux_ui/widgets/status_box.dart';

class XScafoldGrey extends XScafold {
  final Widget? topChild;
  final double? textSize;
  final TextStyle? textStyle;
  final Color? colorStatus;
  final String? codeNumber;
  final String? nameStatus;
  final IconData? iconStatus;
  final void Function()? onPressed;

  XScafoldGrey({
    this.iconStatus,
    this.nameStatus,
    this.colorStatus,
    this.onPressed,
    this.codeNumber,
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
    var theme = XTheme.of(context);
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (codeNumber != null) ? codeNumberText(context) : Container(),
            Padding(
              padding: EdgeInsets.only(bottom: codeNumber != null ? 20 : 0),
              child: Text(
                title ?? "",
                style: textStyle ??
                    TextStyle(
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w300,
                        color: theme.backgroundColor,
                        fontSize: textSize ?? 38),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 8,
        ),
        (onPressed != null)
            ? RoundedIconButton(
                onPressed: onPressed,
                width: 25,
                height: 25,
                backgroundColor: theme.primaryColor,
                iconColor: theme.backgroundColor,
                iconSize: 10,
                icon: Icons.add,
              )
            : Container(),
        SizedBox(
          width: 20,
        ),
        (nameStatus != null)
            ? Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    XStatusBox(
                      name: nameStatus!,
                      size: 8,
                      color: colorStatus ?? Colors.transparent,
                    ),
                    (iconStatus != null)
                        ? RoundedIconButton(
                            icon: iconStatus!,
                            backgroundColor: colorStatus ?? Colors.transparent,
                            iconColor: Colors.white,
                            iconSize: 18,
                            width: 34,
                            height: 34,
                          )
                        : Container()
                  ],
                ),
              )
            : Container(),
      ],
    );
  }

  Widget codeNumberText(context) {
    var theme = XTheme.of(context);
    return Text(codeNumber ?? '',
        style: TextStyle(
            color: theme.backgroundColor,
            fontSize: 12,
            fontWeight: FontWeight.w700,
            letterSpacing: 1));
  }

  @override
  Widget build(BuildContext context) {
    var theme = XTheme.of(context);
    return Scaffold(
        backgroundColor: theme.foregroundColor,
        body: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.only(
              left: 8,
              right: 8,
            ),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 7,
                    child: buildTop(context),
                  ),
                  Expanded(child: buildChild(context))
                ],
              ),
            ),
          ),
        ));
  }
}
