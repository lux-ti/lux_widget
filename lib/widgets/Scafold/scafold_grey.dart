import 'package:flutter/material.dart';
import 'package:lux_ui/lux_ui.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';
import 'package:lux_ui/widgets/Scafold/rounded_icon_button.dart';
import 'package:lux_ui/widgets/status_box.dart';

class XScafoldGrey extends XScafold {
  final Widget? topChild;
  final double? textSize;
  final double? heightSizedBox;
  final TextStyle? textStyle;
  final Color? colorStatus;
  final String? codeNumber;
  final String? nameStatus;
  final Color? backgroundColorIcon;
  final IconData? icon;
  final void Function()? firstOnPressed;
  final void Function()? lastOnTapIcon;

  XScafoldGrey(this.heightSizedBox, {
    this.lastOnTapIcon,
    this.backgroundColorIcon,
    this.icon,
    this.nameStatus,
    this.colorStatus,
    this.firstOnPressed,
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
                    (firstOnPressed != null)
                        ? RoundedIconButton(
                            onPressed: firstOnPressed,
                            width: 21,
                            height: 21,
                            backgroundColor: theme.primaryColor,
                            iconColor: theme.backgroundColor,
                            iconSize: 21,
                            icon: Icons.add,
                          )
                        : Container(),
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
                                    color: colorStatus ?? Colors.transparent,
                                  )
                                : Container(),
                            (icon != null)
                                ? GestureDetector(
                                    onTap: lastOnTapIcon,
                                    child: RoundedIconButton(
                                      icon: icon,
                                      backgroundColor:
                                          backgroundColorIcon != null
                                              ? backgroundColorIcon
                                              : colorStatus ?? null,
                                      iconColor: theme.backgroundColor,
                                      padding: 4,
                                      iconSize: 25,
                                    ),
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
                    height: heightSizedBox ?? MediaQuery.of(context).size.height / 7,
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
