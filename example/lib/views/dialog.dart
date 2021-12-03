import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';
import 'package:lux_ui/widgets/dialog.dart';

class Xdialog extends StatelessWidget {
  const Xdialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return XScafoldGrey(
      child: Container(
          height: double.infinity,
          width: double.infinity,
          child: MaterialButton(onPressed: () {
            XDialog(child: Container(), context: context, color: Colors.red)
                .modal();
          })),
    );
  }
}
