export 'rule.dart';
export 'rules/rules.dart';

import 'package:lux_ui/validation/rule.dart';

class Validator {
  final List<Rule> rules;

  Validator(this.rules);

  String? validate(String? value) {
    try {
      final Rule rule = rules.firstWhere((r) => !r.validate(value));
      return rule.getMessage();
    } catch (e) {
      return null;
    }
  }
}
