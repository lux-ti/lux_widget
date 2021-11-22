import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';
import 'package:lux_ui/widgets/status.dart';

class XscaffoldTeste extends StatelessWidget {
  const XscaffoldTeste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);
    return XScafoldGrey(
      title: 'text',
      create: true,
      isCode: true,
      codeNumber: 'daw',
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
