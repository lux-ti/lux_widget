import 'package:lux_ui/validation/rule.dart';

class RequiredRule extends Rule {
  @override
  bool validate(String? value) {
    return value?.isEmpty == false;
  }

  @override
  String getMessage() {
    return "Este campo é obrigatório";
  }
}
