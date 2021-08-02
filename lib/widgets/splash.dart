import 'package:flutter/material.dart';
import 'package:lux_ui/lux_ui.dart';
import 'package:lux_ui/widgets/logo.dart';

class XSplash extends StatelessWidget {
  final Color? backgroudColor;
  final Widget? logo;
  const XSplash({Key? key, this.backgroudColor, this.logo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = XTheme.of(context);
    return Container(
      color: theme.primaryColor,
      child: Center(
        child: XLogo(
          width: 200,
          primaryColor: theme.backgroundColor,
          secondaryColor: theme.backgroundColor,
        ),
      ),
    );
  }
}
