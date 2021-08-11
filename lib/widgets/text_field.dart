import 'package:flutter/material.dart';
import 'package:lux_ui/lux_ui.dart';
import 'package:lux_ui/validation/validation.dart';

class XTextField extends StatelessWidget {
  final Validator? validator;
  final void Function()? onFocus;
  final void Function()? onBlur;
  final void Function(String text)? onSubmit;
  final TextEditingController? controller;
  final String? topText;
  final String? hintText;
  final double? borderRadius;
  final Color? color;
  final Color? colorHint;
  final Color? colorError;
  final Color? colorFocus;
  final Color? colorEnable;
  final Color? colorBorder;



  XTextField(
      {Key? key,
      this.validator,
      this.onFocus,
      this.onBlur,
      this.controller,
      this.onSubmit, this.topText, this.hintText, this.color, this.borderRadius, this.colorHint, this.colorError, this.colorFocus, this.colorEnable, this.colorBorder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = controller ?? TextEditingController();

    var theme = XTheme.of(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(topText ?? ''),
          SizedBox(
            height: 8,
          ),
          FocusScope(
            onFocusChange: (value) {
              if (value && onFocus != null)
                onFocus!();
              else if (!value && onBlur != null) {
                onBlur!();
                submit(textController.text);
              }
            },
            child: TextFormField(
              //onFieldSubmitted: submit,
              controller: textController,
              validator: validator?.validate,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  hintText: hintText ?? 'Infome',
                  disabledBorder: xOutlineInputBorder(theme.disabledColor,borderRadius),
                  hintStyle: TextStyle(color: colorHint ?? theme.hintColor),
                  errorBorder: xOutlineInputBorder(colorError ?? theme.dangeColor, borderRadius),
                  focusedBorder: xOutlineInputBorder(colorFocus ?? theme.primaryColor, borderRadius),
                  enabledBorder: xOutlineInputBorder(colorEnable ?? theme.borderColor,borderRadius ),
                  border: xOutlineInputBorder(colorBorder ?? theme.primaryColor, borderRadius)),
            ),
          ),
        ],
      ),
    );
  }

  void submit(String? text) {
    if (text != null && onSubmit != null) {
      onSubmit!(text);
    }
  }

  OutlineInputBorder xOutlineInputBorder(Color color,[double? borderRadius]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 10)),
        borderSide: BorderSide(color: color , width: 2.0));
  }
}
