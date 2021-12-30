import 'package:flutter/cupertino.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';
import 'package:lux_ui/widgets/x-dropdown-search/x-dropdown-search.dart';

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
  }
}
