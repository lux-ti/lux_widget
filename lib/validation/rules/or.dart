import 'package:lux_ui/lux_ui.dart';

class OrRule extends Rule {
  final String message;
  final List<Rule> rules;

  OrRule(this.rules, {this.message = 'Campo inválido'});
  @override
  String getMessage() {
    return message;
  }

  @override
  bool validate(String? value) {
    if (rules.isEmpty) return true;
    for (var r in rules) {
      if (r.validate(value)) {
        return true;
      }
    }
    return false;
  }
}
