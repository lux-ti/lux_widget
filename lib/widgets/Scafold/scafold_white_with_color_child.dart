import 'package:flutter/material.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';

class XScafoldWithColorChild extends XScafold {
  final Alignment? alignment;

  XScafoldWithColorChild(
      {this.alignment,
      required String title,
      Widget? widget,
      Widget? child,
      double? fontSize,
      void Function()? onPressedButton,
      void Function()? onBack})
      : super(
            title: title,
            widget: widget,
            fontSize: fontSize,
            child: child,
            onBack: onBack,
            onPressedButton: onPressedButton);

  @override
  Widget buildChild(context) {
    return Container(
      constraints: BoxConstraints.expand(),
      child: Container(
        alignment: alignment ?? Alignment.topCenter,
        color: Color.fromRGBO(229, 229, 229, 0.3),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
          child: child,
        ),
      ),
    );
  }
}
