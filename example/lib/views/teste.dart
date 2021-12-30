import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';
<<<<<<< HEAD
import 'package:lux_ui/widgets/buttons/buttons.dart';
=======
import 'package:lux_ui/widgets/x-dropdown-search/x-dropdown-search.dart';
>>>>>>> b1ba6508be4c1f7ddee02f530cb92b7c1d1ded63

class Teste extends StatelessWidget {
  const Teste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var teste = <String>[
      "ITEM 1",
      "ITEM 2",
      "ITEM 1",
      "ITEM 2",
      "ITEM 1",
      "ITEM 2",
      "ITEM 1",
      "ITEM 2",
      "ITEM 1",
      "ITEM 2",
      "ITEM 1",
      "ITEM 2"
    ];
    int n = 1;
    add() {
      Future.delayed(Duration(seconds: 3), () {
        teste.add("${1 * n}");
        n++;
      });
    }

    TextEditingController controller = TextEditingController();
    return XScafoldGrey(
<<<<<<< HEAD
      child: Center(
        child: XFilter(
          width: double.infinity,
          heigth: 50,
          iconsSize: 18,
        ),
      ),
    );
=======
        title: "teste ",
        firstOnPressed: () {},
        onBack: () {},
        child: XDropdownSearch(
          controller: controller,
          items: teste,
          onDelete: (value) {
            teste = <String>[
              "ITEM 1",
              "ITEM 2",
              "ITEM 1",
              "ITEM 2",
              "ITEM 1",
              "ITEM 2",
              "ITEM 1",
              "ITEM 2",
              "ITEM 1",
              "ITEM 2",
              "ITEM 1",
              "ITEM 2"
            ];
          },
          infinity: add,
        ));
>>>>>>> b1ba6508be4c1f7ddee02f530cb92b7c1d1ded63
  }
}
