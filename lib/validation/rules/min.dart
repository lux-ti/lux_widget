import 'package:lux_ui/validation/rule.dart';

class MinRule extends Rule {
  final int min;

  MinRule(this.min);
  @override
  bool validate(String? value) {
    return value != null && value.length >= min;
  }

  @override
  String getMessage() {
    return 'Este campo deve ter no mínimo $min caracteres';
  }
}
