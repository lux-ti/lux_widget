import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';
import 'package:lux_ui/widgets/x-dropdown-search/x-dropdown-search.dart';

class Teste extends StatefulWidget {
  Teste({Key? key}) : super(key: key);

  @override
  State<Teste> createState() => _TesteState();
}

RxList<DropdownSearchItem> teste = [
  DropdownSearchItem(
    text: 'teste',
    value: 0,
  ),
  DropdownSearchItem(
    text: 'teste1',
    value: 1,
  ),
  DropdownSearchItem(
    text: 'teste2',
    value: 2,
  ),
  DropdownSearchItem(
    text: 'teste3',
    value: 3,
  ),
  DropdownSearchItem(
    text: 'teste4',
    value: 4,
  ),
  DropdownSearchItem(
    text: 'teste5',
    value: 5,
  ),
  DropdownSearchItem(
    text: 'teste6',
    value: 6,
  ),
  DropdownSearchItem(
    text: 'teste7',
    value: 7,
  ),
  DropdownSearchItem(
    text: 'teste8',
    value: 8,
  ),
].obs;

int n = 1;

TextEditingController teste1controller = TextEditingController();

class _TesteState extends State<Teste> {
  @override
  Widget build(BuildContext context) {
    add(int page) async {
      print("PAGE $page");
      await Future.delayed(Duration(seconds: 1), () {
        teste.insertAll(0, [
          DropdownSearchItem(
            text: 'novo item ${1 * n}',
            value: 1 * n,
          ),
        ]);
        n++;
      });
    }

    return XScafoldGrey(
      title: "teste ",
      firstOnPressed: () {},
      onBack: () {},
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            XDropdownSearch(
              totalPages: 25,
              topText: "Campo 1",
              controller: teste1controller,
              onTapItem: (value) {
                print("CONTROLLER ${teste1controller.text}");
              },
              onChanged: (value) {},
              items: teste,
              infinity: add,
            ),
          ],
        ),
      ),
    );
  }
}
