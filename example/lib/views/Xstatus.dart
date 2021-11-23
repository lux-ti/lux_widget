import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';
import 'package:lux_ui/widgets/status.dart';

class XstatusTeste extends StatelessWidget {
  const XstatusTeste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);
    return XScafoldGrey(
      title: 'Pedidos',
      codeNumber: '231312',
      nameStatus: 'Fechado',
      colorStatus: xTheme.primaryColor,
      iconStatus: Icons.add,
      onBack: () {},
      onPressed: () {
        print('foi');
      },
      child: Column(
        children: [
          Expanded(
              child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: xTheme.backgroundColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
