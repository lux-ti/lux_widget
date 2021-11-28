import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lux_ui/lib.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';
import 'package:lux_ui/widgets/buttons/buttons.dart';
import 'package:lux_ui/widgets/login.dart';

class LoginView extends GetView {
  // late bool isTouch = false;

  String? _topValidator(String? value) {
    if (value!.isEmpty) return 'o email é obrigatório';
    return null;
  }

  String? _midValidator(String? value) {
    if (value!.isEmpty) return 'a senha é obrigatória';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);
    final _formKey = GlobalKey<FormState>();
    RxBool isTap = true.obs;

    var controllerEmail = TextEditingController();
    var controllerSenha = TextEditingController();

    return XScafold(
      title: '',
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            XLogo(
              width: 200,
            ),
            SizedBox(
              height: 30,
            ),
            XLogin(
              controllerEmail: controllerEmail,
              controllerSenha: controllerSenha,
              topName: 'LOGIN',
              contentTop: 'Digite seu email',
              formKey: _formKey,
              midName: 'SENHA',
              contentMid: 'Digite sua senha',
              topValidator: _topValidator,
              midValidator: _midValidator,
              buttonChild: Container(
                child: Obx(
                  () => XRoundedButton(
                    color: xTheme.primaryColor,
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        isTap.value = false;
                        print(controllerSenha.text);
                        print(controllerEmail.text);
                      }
                    },
                    widget: (isTap.value)
                        ? text(name: 'LOGIN', xTheme: xTheme.backgroundColor)
                        : cPI(xTheme: xTheme.backgroundColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget text({String? name, Color? xTheme}) {
  return Text(name!,
      style: TextStyle(
        color: xTheme,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ));
}

Widget cPI({Color? xTheme}) {
  return Container(
    height: 16,
    width: 16,
    child: CircularProgressIndicator(
      strokeWidth: 2,
      color: xTheme,
    ),
  );
}
