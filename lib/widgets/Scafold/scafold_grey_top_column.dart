import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';

class XScafoldGreyTopColumn extends XScafoldGrey {
  final Widget? topChild;
  final double? topChildHeight;
  XScafoldGreyTopColumn(
      {Key? key,
      this.topChildHeight,
      String? title,
      this.topChild,
      Widget? child,
      void Function()? onBack})
      : super(key: key, title: title, child: child, onBack: onBack);
  @override
  Widget buildTop(context) {
    final parentRoute = ModalRoute.of(context);
    var theme = XTheme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (onBack != null || parentRoute?.canPop == true) ...[
                buildBackButton(context),
              ],
              SizedBox(
                width: 10,
              ),
              Text(
                title ?? '',
                style: TextStyle(
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w300,
                    color: theme.backgroundColor,
                    fontSize: 30),
              ),
            ],
          ),
          Container(
            height: topChildHeight,
            child: topChild ?? Container(),
          ),
        ],
      ),
    );
  }

  @override
  Widget buildChild(context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        child: child,
      ),
    );
  }
}
