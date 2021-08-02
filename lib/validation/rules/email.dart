import 'package:get/get.dart';
import 'package:lux_ui/lux_ui.dart';

class EmailRule extends Rule {
  @override
  String getMessage() {
    return 'Este campo deve conter um e-mail válido';
  }

  @override
  bool validate(String? value) {
    return value?.isEmail == true;
  }
}
