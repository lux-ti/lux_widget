import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';
import 'package:lux_ui/widgets/buttons/buttons.dart';
import 'package:lux_ui/widgets/dialog.dart';
import 'package:lux_ui/widgets/status.dart';
import 'package:lux_ui/widgets/x-dropdown-search/x-dropdown-search.dart';

class Teste extends StatelessWidget {
  Teste({Key? key}) : super(key: key);

  TextEditingController n1controller = TextEditingController();
  TextEditingController n2controller = TextEditingController();
  var obj = [
    {'id': 1, 'name': 'nome1'},
    {'id': 12, 'name': 'nome2'},
    {'id': 13, 'name': 'nome31'},
    {'id': 14, 'name': 'nome14'}
  ];
  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);
    return XScafoldGrey(
      textSize: 38,
      title: 'Pedido',
      firstOnPressed: () {},
      child: Column(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: xTheme.backgroundColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      XDialog(
                        context: context,
                        child: Column(
                          children: [
                            XDropdownSearch(
                              placeholder: 'nome do campo',
                              compact: true,
                              controller: n1controller,
                              onChanged: (value, haveItem) {
                                print(haveItem);
                              },
                              items:
                                  obj.map((e) => e['name'].toString()).toList(),
                              infinity: () {
                                print('foi');
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            XDropdownSearch(
                              placeholder: 'nome do campo',
                              controller: n2controller,
                              items: [],
                            ),
                          ],
                        ),
                      ).modal();
                    },
                    child: Text('abrir'),
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
