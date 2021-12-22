import 'package:example/views/a.dart';
import 'package:example/views/b.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lux_ui/lib.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';
import 'package:lux_ui/widgets/tab_select.dart';

class ClientSeparationView extends GetView {
  const ClientSeparationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);
    return XScafold(
        title: 'Separação',
        onPressedButton: () {},
        child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                Container(
                  height: 32,
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                  decoration: BoxDecoration(
                      color: xTheme.panelColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: TabBar(
                      unselectedLabelColor: Colors.red,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: XTheme.of(context).primaryColor),
                      tabs: [
                        Text(
                          'POR CLIENTE',
                          style: TextStyle(
                            fontSize: 12,
                            color: xTheme.foregroundColor,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text('POR PRODUTO',
                            style: TextStyle(
                              fontSize: 12,
                              color: xTheme.foregroundColor,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w500,
                            )),
                      ]),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  width: double.infinity,
                  height: 520,
                  child: TabBarView(children: [FirstTab(), SecondTab()]),
                )
              ],
            )));
  }
}
