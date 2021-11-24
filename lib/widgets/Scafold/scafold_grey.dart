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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (onBack != null || parentRoute?.canPop == true) ...[
          buildBackButton(context),
        ],
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                (codeNumber != null)
                    ? codeNumberText(context, codeNumber)
                    : Container(),
                Row(
                  children: [
                    buildTitle(title, theme),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      height: 30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          (onPressed != null)
                              ? RoundedIconButton(
                                  onPressed: onPressed,
                                  width: 21,
                                  height: 21,
                                  backgroundColor: theme.primaryColor,
                                  iconColor: theme.backgroundColor,
                                  iconSize: 21,
                                  icon: Icons.add,
                                )
                              : Container(),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            (nameStatus != null)
                                ? XStatusBox(
                                    name: nameStatus ?? '',
                                    color: colorStatus ?? theme.primaryColor,
                                  )
                                : Container(),
                            (iconStatus != null)
                                ? RoundedIconButton(
                                    icon: iconStatus,
                                    backgroundColor:
                                        colorStatus ?? theme.primaryColor,
                                    iconColor: theme.backgroundColor,
                                    width: 31,
                                    height: 31,
                                    iconSize: 31,
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildTitle(title, theme) {
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

  Widget codeNumberText(context, codeNumber) {
    var theme = XTheme.of(context);
    return Text(codeNumber ?? '',
        style: TextStyle(
            color: theme.backgroundColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            fontFamily: 'Manrope',
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
