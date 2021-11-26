import 'package:flutter/material.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';
import 'package:lux_ui/widgets/buttons/buttons.dart';

class XFilterTeste extends StatelessWidget {
  const XFilterTeste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return XScafoldGrey(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              XFilter(
                onTap: () {
                  print('foi');
                },
                onChanged: print,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
