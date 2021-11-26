import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lux_ui/lib.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';
import 'package:lux_ui/widgets/login.dart';

class LoginView extends GetView {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

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
              topName: 'LOGIN',
              contentTop: 'Digite seu email',
              formKey: _formKey,
              topValidator: (value) {
                if (value!.isEmpty) return 'o email é obrigatório';
                return null;
              },
              midValidator: (value) {
                if (value!.isEmpty) return 'a senha é obrigatória';
                return null;
              },
              midName: 'SENHA',
              contentMid: 'Digite sua senha',
              onTap: (email, senha) {
                if (_formKey.currentState!.validate()) {
                  print('valido');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
