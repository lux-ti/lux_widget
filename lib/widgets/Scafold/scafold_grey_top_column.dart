import 'package:flutter/material.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';

class XScafoldGreyTopColumn extends XScafoldGrey {
  final Widget? topChild;
  XScafoldGreyTopColumn(
      {Key? key,
      String? title,
      this.topChild,
      Widget? child,
      void Function()? onBack})
      : super(key: key, title: title, child: child, onBack: onBack);
  @override
  Widget buildTop(context) {
    final parentRoute = ModalRoute.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (onBack != null || parentRoute?.canPop == true) ...[
            buildBackButton(context),
          ],
          SizedBox(
            height: 8,
          ),
          buildTitle(),
          topChild ?? Container()
        ],
      ),
    );
  }

  Widget buildTitle() {
    return Text(
      title ?? '',
      style: TextStyle(
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w300,
          color: theme.backgroundColor,
          fontSize: 30),
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
