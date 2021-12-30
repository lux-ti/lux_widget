import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';
import 'package:lux_ui/widgets/buttons/buttons.dart';

class Teste extends StatelessWidget {
  const Teste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return XScafoldGrey(
      child: Center(
        child: XFilter(
          width: double.infinity,
          heigth: 50,
          iconsSize: 18,
        ),
      ),
    );
  }
}
