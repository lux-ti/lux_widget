import 'package:flutter/material.dart';

class XColor {
  static const Color green = Color.fromRGBO(68, 221, 98, 1);
  static const Color green2 = Color(0xFF4CAF50);
  static const Color orange = Color.fromRGBO(255, 168, 0, 1);
  static const Color white = Colors.white;
  static const Color grey1 = Color(0xFFF7F7F7);
  static const Color grey2 = Color(0XFFD8D8D8);
  static const Color grey3 = Color(0XFF979797);
  static const Color grey4 = Color(0XFF454545);
  static const Color red = Color(0xFFE40000);
  static const Color cyan = Color(0xFF2196F3);
}

class XTheme extends InheritedWidget {
  final XThemeData themeData;
  XTheme({Key? key, required Widget child, required this.themeData})
      : super(child: child, key: key);

  static XThemeData of(BuildContext context) {
    final XTheme? theme = context.dependOnInheritedWidgetOfExactType<XTheme>();
    assert(theme != null, 'Nenhum tema nesse context');
    return theme!.themeData;
  }

  @override
  bool updateShouldNotify(covariant XTheme old) {
    return this.themeData.compare(old.themeData);
  }
}

class XThemeData {
  final Color primaryColor;
  final Color backgroundColor;
  final Color foregroundColor;
  final Color dangeColor;
  final Color infoColor;
  final Color sucessColor;
  final Color warningColor;
  final Color borderColor;
  final Color hintColor;
  final Color panelColor;
  final Color disabledColor;
  final Color labelColor;

  const XThemeData({
    this.backgroundColor = XColor.white,
    this.borderColor = XColor.grey3,
    this.dangeColor = XColor.red,
    this.disabledColor = XColor.grey2,
    this.foregroundColor = XColor.grey4,
    this.hintColor = const Color(0xFFE0E0E0),
    this.infoColor = XColor.cyan,
    this.labelColor = XColor.grey3,
    this.panelColor = XColor.grey1,
    this.primaryColor = XColor.green,
    this.sucessColor = XColor.green2,
    this.warningColor = XColor.orange,
  });

  merge(
    Color? primaryColor,
    Color? backgroundColor,
    Color? foregroundColor,
    Color? dangeColor,
    Color? infoColor,
    Color? sucessColor,
    Color? warningColor,
    Color? borderColor,
    Color? hintColor,
    Color? panelColor,
    Color? disabledColor,
    Color? labelColor,
  ) {
    return XThemeData(
      primaryColor: primaryColor ?? this.primaryColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      dangeColor: dangeColor ?? this.dangeColor,
      infoColor: infoColor ?? this.infoColor,
      sucessColor: sucessColor ?? this.sucessColor,
      warningColor: warningColor ?? this.warningColor,
      borderColor: borderColor ?? this.borderColor,
      hintColor: hintColor ?? this.hintColor,
      panelColor: panelColor ?? this.panelColor,
      disabledColor: disabledColor ?? this.disabledColor,
      labelColor: labelColor ?? this.labelColor,
    );
  }

  bool compare(XThemeData old) {
    return this.backgroundColor != old.backgroundColor ||
        this.borderColor != old.borderColor ||
        this.dangeColor != old.dangeColor ||
        this.disabledColor != old.disabledColor ||
        this.foregroundColor != old.foregroundColor ||
        this.hintColor != old.hintColor ||
        this.infoColor != old.infoColor ||
        this.labelColor != old.labelColor ||
        this.panelColor != old.panelColor ||
        this.primaryColor != old.primaryColor ||
        this.sucessColor != old.sucessColor ||
        this.warningColor != old.warningColor;
  }

  get materialTheme => ThemeData(
      primaryColor: primaryColor,
      backgroundColor: backgroundColor,
      fontFamily: 'Manrope',
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
            foregroundColor: MaterialStateProperty.all<Color>(backgroundColor)),
      ),
      buttonColor: primaryColor);
}
