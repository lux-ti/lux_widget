import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_ui/lib.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';
import 'package:lux_ui/widgets/date-picker/x-date-picker.dart';

class Teste extends StatelessWidget {
  Teste({Key? key}) : super(key: key);

  int n = 1;

  TextEditingController teste1controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
        child: Column(
          children: [
            XDatePicker(
              onSelectedDate: (date) {
                print(date);
              },
              topText: "Data",
            ),
          ],
        ),
      ),
    );
  }
}
