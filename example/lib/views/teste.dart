import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';
import 'package:lux_ui/widgets/x-dropdown-search/x-dropdown-search.dart';

class Teste extends StatefulWidget {
  Teste({Key? key}) : super(key: key);

  @override
  State<Teste> createState() => _TesteState();
}

List<DropdownSearchItem> teste = [
  DropdownSearchItem(text: 'teste', value: 0, id: 0),
  DropdownSearchItem(text: 'teste1', value: 1, id: 1),
  DropdownSearchItem(text: 'teste2', value: 2, id: 2),
  DropdownSearchItem(text: 'teste3', value: 3, id: 3),
  DropdownSearchItem(text: 'teste4', value: 4, id: 4),
  DropdownSearchItem(text: 'teste5', value: 5, id: 5),
  DropdownSearchItem(text: 'teste6', value: 6, id: 6),
  DropdownSearchItem(text: 'teste7', value: 7, id: 7),
  DropdownSearchItem(text: 'teste8', value: 8, id: 8),
  DropdownSearchItem(text: 'teste', value: 0, id: 0),
  DropdownSearchItem(text: 'teste1', value: 1, id: 1),
  DropdownSearchItem(text: 'teste2', value: 2, id: 2),
  DropdownSearchItem(text: 'teste3', value: 3, id: 3),
  DropdownSearchItem(text: 'teste4', value: 4, id: 4),
  DropdownSearchItem(text: 'teste5', value: 5, id: 5),
  DropdownSearchItem(text: 'teste6', value: 6, id: 6),
  DropdownSearchItem(text: 'teste7', value: 7, id: 7),
  DropdownSearchItem(text: 'teste8', value: 8, id: 8),
  DropdownSearchItem(text: 'teste', value: 0, id: 0),
  DropdownSearchItem(text: 'teste1', value: 1, id: 1),
  DropdownSearchItem(text: 'teste2', value: 2, id: 2),
  DropdownSearchItem(text: 'teste3', value: 3, id: 3),
  DropdownSearchItem(text: 'teste4', value: 4, id: 4),
  DropdownSearchItem(text: 'teste5', value: 5, id: 5),
  DropdownSearchItem(text: 'teste6', value: 6, id: 6),
  DropdownSearchItem(text: 'teste7', value: 7, id: 7),
  DropdownSearchItem(text: 'teste8', value: 8, id: 8)
];

List<DropdownSearchItem> teste2 = [
  DropdownSearchItem(text: 'teste', value: 0, id: 0),
  DropdownSearchItem(text: 'teste1', value: 1, id: 1),
  DropdownSearchItem(text: 'teste2', value: 2, id: 2),
  DropdownSearchItem(text: 'teste3', value: 3, id: 3),
  DropdownSearchItem(text: 'teste4', value: 4, id: 4),
  DropdownSearchItem(text: 'teste5', value: 5, id: 5),
  DropdownSearchItem(text: 'teste6', value: 6, id: 6),
  DropdownSearchItem(text: 'teste7', value: 7, id: 7),
  DropdownSearchItem(text: 'teste8', value: 8, id: 8),
];

int n = 1;

TextEditingController teste1controller = TextEditingController();
TextEditingController teste2controller = TextEditingController();

class _TesteState extends State<Teste> {
  @override
  Widget build(BuildContext context) {
    add() async {
      await Future.delayed(Duration(seconds: 1), () {
        print(teste);
        setState(() {
          teste.insertAll(0, [
            DropdownSearchItem(
                text: 'novo item ${1 * n}', value: 1 * n, id: 1 * n),
          ]);
        });
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
              controller: teste1controller,
              onTapItem: (value) {
                print("CONTROLLER ${teste1controller.text}");
              },
              onChanged: (value, has) {},
              items: teste,
              infinity: add,
            ),
            XDropdownSearch(
              controller: teste2controller,
              onTapItem: (value) {
                print(value.text);
              },
              onChanged: (value, has) {},
              items: teste2,
              infinity: add,
            ),
            XDropdownSearch(
              controller: teste1controller,
              hintText: "Teste",
              onTapItem: (value) {
                print(value.text);
              },
              onChanged: (value, has) {},
              items: teste,
              infinity: add,
            ),
          ],
        ),
      ),
    );
  }
}
