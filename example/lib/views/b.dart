import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:lux_ui/lib.dart';
import 'package:lux_ui/widgets/buttons/buttons.dart';
import 'package:lux_ui/widgets/label/content_label.dart';
import 'package:lux_ui/widgets/widgets_WMS/card_conference.dart';
import 'package:lux_ui/widgets/widgets_WMS/xcard_production.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);
    return Container(
      width: double.infinity,
      height: 520,
      decoration: BoxDecoration(
          color: xTheme.panelColor, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: XCardProduction(
                      borderWidth: 0,
                      topLeftWidget: midContentLabel(
                          context: context,
                          topText: 'PRODUTO',
                          midText: 'Trato Cat',
                          colorName: xTheme.foregroundColor,
                          colorTop: xTheme.borderColor),
                      frontColor: xTheme.backgroundColor,
                      height: 150,
                      bottomLeftWidget: midContentLabel(
                          context: context,
                          topText: 'LOCALIZAÇÃO',
                          midText: 'A10',
                          colorName: xTheme.foregroundColor,
                          colorTop: xTheme.borderColor),
                      topRightWidget: midContentLabel(
                          context: context,
                          topText: 'QUANT',
                          midText: '5',
                          colorName: xTheme.foregroundColor,
                          colorTop: xTheme.borderColor),
                      borderRadius: 5,
                      bottomRightWidget: squareButton(
                          buttonColor: xTheme.primaryColor,
                          textColor: xTheme.backgroundColor,
                          buttonText: 'SEPARADO')),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget topContentLabel(
    {required BuildContext context,
    String? topText,
    String? midText,
    Color? colorName,
    Color? colorTop}) {
  var xTheme = XTheme.of(context);
  return XContentLabel(
      colorName: colorName,
      nameSize: 18,
      nameWeight: FontWeight.w300,
      topSpace: 1,
      topSize: 12,
      topWeight: FontWeight.w600,
      colorTop: xTheme.borderColor,
      topName: topText ?? '',
      name: midText ?? '');
}

Widget midContentLabel(
    {required BuildContext context,
    String? topText,
    String? midText,
    Color? colorName,
    Color? colorTop}) {
  var xTheme = XTheme.of(context);
  return XContentLabel(
      colorName: colorName,
      nameSize: 24,
      nameWeight: FontWeight.w300,
      topSpace: 1,
      topSize: 12,
      topWeight: FontWeight.w600,
      colorTop: colorTop,
      topName: topText ?? '',
      name: midText ?? '');
}

Widget squareButton(
    {Color? buttonColor, Color? textColor, String? buttonText}) {
  return XSquaredButton(
    child: Text(
      buttonText ?? '',
      style: TextStyle(
          color: textColor,
          fontSize: 12,
          letterSpacing: 1,
          fontWeight: FontWeight.w600),
    ),
    onTap: () {},
    color: buttonColor,
    borderRadius: 22,
    height: 30,
    width: 135,
  );
}
