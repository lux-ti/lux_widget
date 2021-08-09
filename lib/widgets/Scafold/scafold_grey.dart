import 'package:flutter/material.dart';
import 'package:lux_ui/lux_ui.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';

class XScafoldGrey extends XScafold {
  final Widget? topChild;
  XScafoldGrey({
    Key? key,
    this.topChild,
    String? title,
    Widget? child,
    void Function()? onBack,
  }) : super(title: title = '', child: child, onBack: onBack);

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
        topChild ?? buildTitle()
      ],
    );
  }

  Text buildTitle() {
    return Text(
      title,
      style: TextStyle(
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w200,
          color: theme.backgroundColor,
          fontSize: 20),
    );
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
