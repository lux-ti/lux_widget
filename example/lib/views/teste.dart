import 'package:flutter/cupertino.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';

class Teste extends StatelessWidget {
  const Teste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return XScafoldGrey(
      title: "teste ",
      firstOnPressed: () {},
      onBack: () {},
    );
  }
}
