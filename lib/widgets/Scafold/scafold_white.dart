import 'package:flutter/material.dart';
import 'package:lux_ui/lux_ui.dart';
import 'package:lux_ui/util/lxi.dart';
import 'package:lux_ui/widgets/Scafold/rounded_icon_button.dart';

class XScafold extends StatelessWidget {
  final String? title;
  final double? fontSize;
  final double? fontSizeNumber;
  final Widget? child;
  final String? number;
  final bool buttonSpaceBetween;
  final Widget? widget;
  final void Function()? onPressedButton;
  // late final XThemeData theme;
  final void Function()? onBack;
  XScafold({
    Key? key,
    required this.title,
    this.child,
    this.onBack,
    this.onPressedButton,
    this.number,
    this.buttonSpaceBetween = false,
    this.fontSize,
    this.fontSizeNumber,
    this.widget,
  }) : super(key: key);

  Widget buildTop(context) {
    var theme = XTheme.of(context);
    final parentRoute = ModalRoute.of(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          if (onBack != null || parentRoute?.canPop == true) ...[
            buildBackButton(context),
          ],
          SizedBox(
            width: 8,
          ),
          Container(
            width: onBack != null || parentRoute?.canPop == true
                ? MediaQuery.of(context).size.width - 50
                : MediaQuery.of(context).size.width - 30,
            child: Row(
              mainAxisAlignment: number != null || buttonSpaceBetween
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.start,
              children: [
                Text(
                  title ?? '',
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w300,
                    color: theme.borderColor,
                    fontSize: fontSize ?? 34,
                  ),
                ),
                SizedBox(width: 8),
                (number == null && onPressedButton == null)
                    ? Container()
                    : (number != null && onPressedButton == null)
                        ? Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Text(
                              number ?? '',
                              style: TextStyle(
                                fontSize: fontSizeNumber ?? 52,
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Manrope',
                                color: theme.foregroundColor,
                              ),
                            ),
                          )
                        : (onPressedButton != null && number == null)
                            ? RoundedIconButton(
                                onPressed: onPressedButton,
                                width: 21,
                                height: 21,
                                backgroundColor: theme.primaryColor,
                                iconColor: theme.backgroundColor,
                                iconSize: 19,
                                icon: Icons.add,
                              )
                            : Container(),
                Spacer(),
                widget ?? SizedBox()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBackButton(context) {
    var theme = XTheme.of(context);
    return GestureDetector(
      onTap: onBack ?? () => Navigator.of(context).pop(),
      child: Icon(
        Lxi.circleChevronLeft,
        color: theme.primaryColor,
        //size: 35,
      ),
    );
  }

  Widget buildChild(BuildContext context) => child ?? Container();

  @override
  Widget build(BuildContext context) {
    var theme = XTheme.of(context);
    return Scaffold(
        backgroundColor: theme.foregroundColor,
        body: SafeArea(
          bottom: false,
          child: Container(
            padding: EdgeInsets.only(left: 8, right: 8, top: 18),
            color: theme.backgroundColor,
            child: Column(
              children: [
                buildTop(context),
                SizedBox(
                  height: 10,
                ),
                Expanded(child: buildChild(context))
              ],
            ),
          ),
        ));
  }
}
