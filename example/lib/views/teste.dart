import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_ui/lib.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';
import 'package:lux_ui/widgets/date-picker/x-date-picker.dart';
import 'package:lux_ui/widgets/x-dropdown-search/x-dropdown-search.dart';

class Teste extends StatelessWidget {
  Teste({Key? key}) : super(key: key);

  TextEditingController teste1controller = TextEditingController();
  final valueDrop = 2.obs;

  Rx<DropdownSearchItem> valueObs =
      DropdownSearchItem(id: 3, name: 'name 3').obs;

  var list = [
    DropdownSearchItem(name: 'name 1', id: 1),
    DropdownSearchItem(name: 'name 2', id: 2)
  ].obs;

  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration(seconds: 10)).then((value) {
    //   valueObs = 3;
    // });

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
          child: Obx(
            () => Column(
              children: [
                Text(valueDrop.value.toString()),
                XDropdownSearch(
                  items: list,
                  topText: "Data",
                  controller: teste1controller,
                  totalPages: 1,
                  value: valueDrop.value,
                ),
                XDropdownSearch(
                  items: list,
                  topText: "Data",
                  controller: teste1controller,
                  totalPages: 1,
                  value: valueDrop.value,
                  onDelete: (value) {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
