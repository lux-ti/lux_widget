import 'package:get/get.dart';
import 'package:lux_ui/lux_ui.dart';

class CnpjRule extends Rule {
  @override
  String getMessage() {
    return 'Este campo deve conter um CNPJ válido';
  }

  @override
  bool validate(String? value) {
    return value?.isCnpj == true;
  }
}
