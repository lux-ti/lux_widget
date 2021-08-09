import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';

class XFilter extends StatelessWidget {
  final double? heigth;
  final double? width;
  final void Function() onTap;

  const XFilter({
    Key? key,
    this.heigth = 40,
    this.width = 370,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);

    return Container(
        height: heigth,
        width: width,
        color: xTheme.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.only(right: 8),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
                width: 320,
                child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: xTheme.disabledColor,
                        prefixIcon: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child:
                                Icon(Lxi.search, color: xTheme.borderColor))))),
            GestureDetector(
              onTap: onTap,
              child: Row(
                children: [
                  Icon(
                    Lxi.luxFilter,
                    size: 12,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Lxi.chevronBottom,
                    size: 12,
                  )
                ],
              ),
            )
          ]),
        ));
  }
}