import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';
import 'package:lux_ui/widgets/buttons/buttons.dart';

void xDialog(
    {required BuildContext context,required Widget childButton,
    required String title,
    required void Function() onTapSelector,required void Function() onTapIcon,
    void Function()? onTapSquareButton,
    Color? squareButtonColor}) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        var xTheme = XTheme.of(context);
        return Container(
          height: 220,
          color: xTheme.backgroundColor,
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                      IconButton(
                        onPressed: onTapIcon,
                        icon: Icon(Lxi.luxClose,
                        size: 20,)
                      ),
                    ],
                  ),
                ),
                XSelector(
                  text: 'Selecione o motivo',
                  height: 35,
                  width: 300,
                  onTap: onTapSelector,
                ),
                onTapSquareButton != null
                    ? XSquaredButton(
                        color: squareButtonColor,
                        height: 45,
                        width: double.infinity,
                        onTap: () => onTapSquareButton() ,
                        child: childButton,
                      )
                    : Container()
              ],
            ),
          ),
        );
      });
}
