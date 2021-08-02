import 'package:flutter/material.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';

class TesteTela2 extends StatelessWidget {
  const TesteTela2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return XScafoldGrey(
      title: "XScafoldGrey",
      child: Container(
        height: 100,
        color: Colors.red,
        width: 50,
      ),
    );
  }
}
