import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_ui/lib.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';
import 'package:lux_ui/widgets/date-picker/x-date-picker.dart';
import 'package:lux_ui/widgets/x-dropdown-search/x-dropdown-search.dart';

class Teste extends StatelessWidget {
  Teste({Key? key}) : super(key: key);

  int n = 1;

  TextEditingController teste1controller = TextEditingController();
  var list = [
    DropdownSearchItem(text: 'a', value: []),
    DropdownSearchItem(text: 'a', value: []),
    DropdownSearchItem(text: 'a', value: []),
    DropdownSearchItem(
        text: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', value: []),
    DropdownSearchItem(text: 'ab', value: [])
  ].obs;

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
        child: Container(
          width: 300,
          child: Row(
            children: [
              Expanded(
                child: XDropdownSearch(
                  items: list,
                  topText: "Data",
                  controller: teste1controller,
                  totalPages: 1,
                  onTapItem: (item) {},
                ),
              ),
              Expanded(
                child: XDropdownSearch(
                  items: list,
                  topText: "Data",
                  controller: teste1controller,
                  totalPages: 1,
                  onTapItem: (item) {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
