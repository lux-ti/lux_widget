import 'package:flutter/material.dart';
import 'package:lux_ui/lux_ui.dart';
import 'package:lux_ui/util/lxi.dart';
import 'package:lux_ui/widgets/Scafold/rounded_icon_button.dart';

class XScafold extends StatelessWidget {
  final String? title;
  final Widget? child;
  final void Function()? onPressedButton;
  // late final XThemeData theme;
  final void Function()? onBack;
  XScafold(
      {Key? key,
      required this.title,
      this.child,
      this.onBack,
      this.onPressedButton})
      : super(key: key);

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
          Text(
            title ?? '',
            style: TextStyle(
                fontFamily: 'Rubik',
                fontWeight: FontWeight.w300,
                color: theme.borderColor,
                fontSize: 34),
          ),
          SizedBox(
            width: 5,
          ),
          (onPressedButton != null)
              ? RoundedIconButton(
                  onPressed: onPressedButton,
                  width: 21,
                  height: 21,
                  backgroundColor: theme.primaryColor,
                  iconColor: theme.backgroundColor,
                  iconSize: 21,
                  icon: Icons.add)
              : Container()
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
