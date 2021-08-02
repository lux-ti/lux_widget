import 'package:flutter/material.dart';
import 'package:lux_ui/lux_ui.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';

class TelaTeste extends StatelessWidget {
  final textcontroller = TextEditingController();
  final textcontroller2 = TextEditingController();
  TelaTeste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: XScafold(
        title: 'teste',
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: DismissKeyboard(
                    child: XTextField(
                      onSubmit: print,
                      validator: Validator([LengthRule(length: 10)]),
                      controller: textcontroller,
                      onBlur: () {
                        print(textcontroller.text);
                      },
                      onFocus: () {
                        //textcontroller.text = 'qualquer texto';
                      },
                    ),
                  )),
            ),
            Container(
              color: Colors.white,
              child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: DismissKeyboard(
                    child: XTextField(
                      onSubmit: print,
                      validator: Validator([LengthRule(length: 10)]),
                      controller: textcontroller2,
                      onBlur: () {
                        //print(textcontroller.text);
                      },
                      onFocus: () {},
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
