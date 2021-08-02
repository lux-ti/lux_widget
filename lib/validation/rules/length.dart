import 'package:lux_ui/validation/rule.dart';

class LengthRule extends Rule {
  final int? max;
  final int? min;
  final int? length;
  String? message;

  LengthRule({this.max, this.min, this.length});

  @override
  bool validate(String? value) {
    if (value == null) {
      return false;
    }
    if (length != null && value.length != length) {
      message = 'Este campo deve conter $length caracteres';
      return false;
    }
    if (min != null && value.length < min!) {
      message = 'Este campo deve ter no minimo $min caracteres';
      return false;
    }
    if (max != null && value.length > max!) {
      message = 'Este campo deve ter no máximo $max caracteres';
      return false;
    }

    return true;
  }

  @override
  String getMessage() {
    return message ?? 'Campo inválido';
  }
}
