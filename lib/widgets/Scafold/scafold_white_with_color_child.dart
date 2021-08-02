import 'package:flutter/material.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';

class XScafoldWithColorChild extends XScafold {
  XScafoldWithColorChild(
      {required String title, Widget? child, void Function()? onBack})
      : super(title: title, child: child, onBack: onBack);

  @override
  Widget buildChild(context) {
    return Container(
        color: Color.fromRGBO(229, 229, 229, 0.3), child: child ?? Container());
  }
}
