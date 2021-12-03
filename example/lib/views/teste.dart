import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';
import 'package:lux_ui/widgets/buttons/buttons.dart';
import 'package:lux_ui/widgets/status.dart';

class Teste extends StatelessWidget {
  const Teste({Key? key}) : super(key: key);

  get icon => null;

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);
    var form = GlobalKey<FormState>();
    var controller = TextEditingController();
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Form(
          key: form,
          child: XTextField(
            validator: validate,
          ),
        ),
        IconButton(
          onPressed: () {
            form.currentState!.validate();
          },
          icon: Icon(Icons.add),
        ),
      ],
    ));
  }
}

String? validate(String? text) {
  if (text == '') {
    return 'Obrigatório';
  } else
    return null;
}
