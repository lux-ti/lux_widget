import 'package:get/get.dart';
import 'package:lux_ui/lux_ui.dart';

class CpfRule extends Rule {
  @override
  String getMessage() {
    return 'Este campo deve conter um CPF válido';
  }

  @override
  bool validate(String? value) {
    return value?.isCpf == true;
  }
}
