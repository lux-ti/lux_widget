import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_ui/lib.dart';
import 'package:lux_ui/lux_ui.dart';
import 'package:lux_ui/widgets/buttons/buttons.dart';

class XLogin extends StatelessWidget {
  final String? topName;
  final String? contentTop;
  final String? midName;
  final String? contentMid;
  final void Function(String? text)? onChange;

  const XLogin({
    Key? key,
    this.topName = '',
    this.contentTop,
    this.midName = '',
    this.contentMid,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);
    var obscureText = true.obs;

    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            color: xTheme.primaryColor, borderRadius: BorderRadius.circular(5)),
        height: 330,
        width: 345,
      ),
      Padding(
        padding: EdgeInsets.only(top: 3),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
              color: xTheme.backgroundColor,
              borderRadius: BorderRadius.circular(5)),
          height: 330,
          width: 345,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(children: [
                XSideBarButton(
                    iconSize: 12,
                    icon: Lxi.user,
                    text: topName!,
                    color: xTheme.primaryColor,
                    fontSize: 12),
                Container(
                  width: 350,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: contentTop,
                        hintStyle: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w300)),
                  ),
                ),
              ]),
              Column(children: [
                XSideBarButton(
                    iconSize: 12,
                    icon: Lxi.lock,
                    text: midName!,
                    color: xTheme.primaryColor,
                    fontSize: 12),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Obx(() => Row(
                        children: [
                          Container(
                            width: 250,
                            child: TextFormField(
                              onFieldSubmitted: (value) {},
                              onChanged: onChange,
                              textAlign: TextAlign.center,
                              obscureText: obscureText.value,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: contentMid,
                                  hintStyle: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w300)),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Lxi.eye, size: 24),
                            onPressed: () {
                              obscureText.value =
                                  (obscureText != true.obs) ? true : false;
                            },
                          ),
                        ],
                      )),
                )
              ]),
              XRoundedButton(
                color: xTheme.primaryColor,
                onTap: () {
                  print('funfando');
                },
                name: 'Login',
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
