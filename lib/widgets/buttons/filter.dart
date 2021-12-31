import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';

class XFilter extends StatelessWidget {
  final double? heigth;
  final double? width;
  final Color? colorInputText;
  final double? iconsSize;
  final void Function()? onTap;
  final void Function(String)? onChanged;

  const XFilter({
    Key? key,
    this.heigth = 50,
    this.width = 370,
    this.onTap,
    this.colorInputText,
    this.iconsSize,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);

    return Container(
        height: heigth,
        width: width,
        //color: xTheme.backgroundColor,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
        child: Container(
          //width: 320,
          color: xTheme.backgroundColor,
          child: TextField(
            onChanged: onChanged,
            decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
              fillColor: colorInputText ?? xTheme.backgroundColor,
              prefixIcon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Icon(Lxi.search, color: xTheme.borderColor),
              ),
            ),
          ),
        ),
            ),
            GestureDetector(
        onTap: onTap,
        child: Container(
          color: Colors.transparent,
          height: 50,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Icon(
                  Lxi.luxFilter,
                  size: iconsSize,
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Lxi.chevronBottom,
                  size: iconsSize,
                )
              ],
            ),
          ),
        ),
            )
          ]));
  }
}
