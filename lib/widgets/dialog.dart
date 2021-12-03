import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_ui/lib.dart';
import 'package:lux_ui/widgets/buttons/buttons.dart';

void xDialog(
    {IconData? icon2,
    String? midText,
    Color? midColor,
    double? sizeMidText,
    Color? iconColor,
    double? iconSize,
    IconData? icon,
    required BuildContext context,
    required Widget childButton,
    required String? title,
    required void Function() onTapSelector,
    required void Function() onTapIcon,
    void Function()? onTapSquareButton,
    Color? squareButtonColor}) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        var xTheme = XTheme.of(context);
        return Container(
          height: 300,
          width: double.infinity,
          color: xTheme.backgroundColor,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title ?? '',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                      GestureDetector(
                        onTap: onTapIcon,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(icon, size: iconSize, color: iconColor),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              icon2,
                              size: iconSize,
                              color: iconColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        midText ?? '',
                        style: TextStyle(
                            color: midColor,
                            fontSize: sizeMidText,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.end,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      XSelector(
                        text: 'Selecione o motivo',
                        height: 35,
                        width: 260,
                        onTap: onTapSelector,
                      ),
                    ],
                  ),
                  onTapSquareButton != null
                      ? XSquaredButton(
                          borderRadius: 22,
                          color: squareButtonColor,
                          height: 36,
                          width: double.infinity,
                          onTap: () => onTapSquareButton(),
                          child: childButton,
                        )
                      : Container()
                ],
              ),
            ),
          ),
        );
      });
}

class XDialog {
  BuildContext context;
  double? height;
  Widget? child;
  Color? color;
  String? text;
  XDialog({
    this.height,
    this.child,
    required this.context,
    this.color,
    this.text,
  });

  void modal() {
    Get.dialog(Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity - 50,
            height: height ??
                MediaQuery.of(context).size.height -
                    MediaQuery.of(context).size.height * 40 / 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: color ?? Colors.white,
            ),
            child: child,
          )
        ],
      ),
    ));
  }

  void alert() {
    Get.dialog(Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 50,
            height: height ??
                MediaQuery.of(context).size.height -
                    MediaQuery.of(context).size.height * 80 / 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: color ?? Colors.white,
            ),
            child: Center(
              child: Text(
                text ?? 'Erro inesperado',
              ),
            ),
          )
        ],
      ),
    ));
  }
}
