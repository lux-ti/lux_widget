import 'package:get/get.dart';
import 'package:lux_ui/lux_ui.dart';

class NumericRule extends Rule {
  @override
  String getMessage() {
    return 'Este campo deve conter um e-mail válido';
  }

  @override
  bool validate(String? value) {
    return value?.isNumericOnly == true;
  }
}
