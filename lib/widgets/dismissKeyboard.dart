import 'package:flutter/material.dart';

class DismissKeyboard extends StatelessWidget {
  final Widget child;
  final void Function()? onDismiss;
  const DismissKeyboard({Key? key, required this.child, this.onDismiss})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        var currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
          if (onDismiss != null) {
            onDismiss!();
          }
        }
      },
      child: child,
    );
  }
}
