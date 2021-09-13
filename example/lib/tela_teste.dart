import 'package:flutter/material.dart';
import 'package:lux_ui/lux_ui.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';
import 'package:lux_ui/widgets/login.dart';

class TelaTeste extends StatelessWidget {
  final textcontroller = TextEditingController();
  final textcontroller2 = TextEditingController();
  TelaTeste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: XScafold(
          title: 'teste',
          child: XLogin(
            contentMid: 'teste',
            contentTop: 'teste',
            midName: 'teste',
            topName: 'teste',
          )),
    );
  }
}
