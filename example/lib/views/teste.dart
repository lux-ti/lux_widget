import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';
import 'package:lux_ui/widgets/buttons/buttons.dart';
import 'package:lux_ui/widgets/status.dart';

class Teste extends StatelessWidget {
  const Teste({Key? key}) : super(key: key);

  get icon => null;
  // Icons.inventory_outlined

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);
    var form = GlobalKey<FormState>();
    var controller = TextEditingController();
    return XScafoldGrey(
      textSize: 38,
      title: 'Pedido',
      codeNumber: '123',
      colorStatus: xTheme.primaryColor,
      nameStatus: 'nome do status',
      icon: Icons.search_off,
      firstOnPressed: () {},
      lastOnTapIcon: () {
        print('foi');
      },
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: xTheme.backgroundColor,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          )
        ],
      ),
    );
  }
}
