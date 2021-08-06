import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';

class XFlatButton extends StatelessWidget {
  final double? width;
  final double? heigth;
  final String? hintName;
  final void Function() onTap;

  const XFlatButton(
      {Key? key, this.width = 370, this.heigth = 50, required this.hintName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: heigth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: xTheme.borderColor)
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Icon(
                Icons.add_circle,
                color: xTheme.disabledColor,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                hintName!,
                style: TextStyle(
                    color: xTheme.borderColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
