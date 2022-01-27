import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_ui/lib.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';
import 'package:lux_ui/widgets/buttons/buttons.dart';
import 'package:lux_ui/widgets/date-picker/x-date-picker.dart';
import 'package:lux_ui/widgets/login.dart';
import 'package:lux_ui/widgets/x-dropdown-search/x-dropdown-search.dart';

class Teste extends StatelessWidget {
  Teste({Key? key}) : super(key: key);

  TextEditingController teste1controller = TextEditingController();
  var valueDrop = true;

  @override
  Widget build(BuildContext context) {
   var xTheme = XTheme.of(context);

    return XScafoldGrey(
      textSize: 38,
      title: 'Pedido',
      codeNumber: '123',
      colorStatus: XTheme.of(context).primaryColor,
      nameStatus: 'nome do status',
      icon: Icons.search_off,
      firstOnPressed: () {},
      onBack: () {},
      child: Container(
        color: Colors.white,
        child: Container(
          child: Column(
            children: [
              XLogin(
              controllerEmail: null,
              controllerSenha: null,
              topName: 'LOGIN',
              contentTop: 'Digite seu email',
              formKey: null,
              midName: 'SENHA',
              contentMid: 'Digite sua senha',
              topValidator: null,
              midValidator: null,
              onFieldSubmittedPassword: (value) {
                
              },
              buttonChild: Container(
                child: 
                  XRoundedButton(
                    color: xTheme.primaryColor,
                    onTap: (){},
                  //   widget: (isTap.value)
                  //       ? text(name: 'LOGIN', xTheme: xTheme.backgroundColor)
                  //       : cPI(xTheme: xTheme.backgroundColor),
                  // ),
                )
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
