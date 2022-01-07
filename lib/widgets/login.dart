import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_ui/lib.dart';
import 'package:lux_ui/lux_ui.dart';
import 'package:lux_ui/widgets/buttons/buttons.dart';

class XLogin extends StatelessWidget {
  final String topName;
  final String? contentTop;
  final String midName;
  final String? contentMid;
  final void Function(String? text)? onChange;
  final FormFieldValidator<String>? topValidator;
  final FormFieldValidator<String>? midValidator;
  final GlobalKey<FormState>? formKey;
  final Widget buttonChild;
  final TextEditingController? controllerEmail;
  final TextEditingController? controllerSenha;
  final void Function(String)? onFieldSubmittedEmail;
  final void Function(String)? onFieldSubmittedPassword;
  final double? height;
  final double? width;
  final double? heightBackContainer;
  final double? widthBackContainer;
  final double? textFieldLoginWidth;
  final double? textFieldPasswordWidth;
  final double? fontSideBarLogin;
  final double? fontSideBarPass;
  final double? iconSizeSideBarLogin;
  final double? iconSizeSideBarPass;
  final double? fontHintLogin;
  final double? fontHintPass;


  const XLogin({
    required this.controllerEmail,
    required this.controllerSenha,
    required this.buttonChild,
    this.topValidator,
    this.midValidator,
    this.formKey,
    Key? key,
    this.topName = '',
    this.contentTop,
    this.midName = '',
    this.contentMid,
    this.onChange,
    this.onFieldSubmittedEmail,
    this.onFieldSubmittedPassword, this.height, this.width, this.heightBackContainer, this.widthBackContainer, this.textFieldLoginWidth, this.textFieldPasswordWidth, this.fontSideBarLogin, this.fontSideBarPass, this.fontHintLogin, this.fontHintPass, this.iconSizeSideBarLogin, this.iconSizeSideBarPass,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);
    var obscureText = true.obs;

    return Stack(children: [
      Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 6,
              spreadRadius: 3,
              offset: Offset(0, 3))
        ], color: xTheme.primaryColor, borderRadius: BorderRadius.circular(5)),
        height: heightBackContainer ?? 350,
        width: widthBackContainer ?? 345,
      ),
      Padding(
        padding: EdgeInsets.only(top: 3),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
              color: xTheme.backgroundColor,
              borderRadius: BorderRadius.circular(5)),
          height: height ?? 350,
          width: width ?? 345,
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(50,0, 50,0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  XSideBarButton(
                    mainAxisAlignment: MainAxisAlignment.center,
                    iconSize: iconSizeSideBarLogin ?? 15,
                    icon: Lxi.user,
                    text: topName,
                    colorIcon: xTheme.primaryColor,
                    colorText: xTheme.primaryColor,
                    fontSize:  fontSideBarLogin ?? 15,
                  ),
                  Container(
                    width: textFieldLoginWidth ?? 200,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: TextFormField(
                      controller: controllerEmail,
                      validator: topValidator,
                      keyboardType: TextInputType.emailAddress,
                      onFieldSubmitted: onFieldSubmittedEmail,
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: contentTop,
                        hintStyle: TextStyle(
                            fontSize: fontHintLogin ?? 24, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  XSideBarButton(
                      mainAxisAlignment: MainAxisAlignment.center,
                      iconSize: iconSizeSideBarPass ?? 15,
                      icon: Lxi.lock,
                      text: midName,
                      colorIcon: xTheme.primaryColor,
                      colorText: xTheme.primaryColor,
                      fontSize: iconSizeSideBarPass ?? 15),
                  Obx(() => Padding(
                    padding: const EdgeInsets.fromLTRB(70,0,20,0),
                    child: Container(
                      width: textFieldPasswordWidth ?? 200,
                      child: TextFormField(
                        controller: controllerSenha,
                        validator: midValidator,
                        onFieldSubmitted: onFieldSubmittedPassword,
                        onChanged: onChange,
                        textAlign: TextAlign.center,
                        obscureText: obscureText.value,
                        
                        decoration: InputDecoration(
                          suffixIcon:  IconButton(
                              icon: Icon(
                                Lxi.eye,
                                size: 24,
                                color: xTheme.primaryColor,
                              ),
                              onPressed: () {
                                obscureText.value =
                                    (obscureText != true.obs) ? true : false;
                              },
                            ),
                            border: InputBorder.none,
                            hintText: contentMid,
                            hintStyle: TextStyle(
                                fontSize: fontHintPass ??24,
                                fontWeight: FontWeight.w300)),
                      ),
                    ),
                  )),
                  buttonChild,
                ],
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}

Widget text({String? name, Color? xTheme}) {
  return Text(name!,
      style: TextStyle(
        color: xTheme,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ));
}

Widget cPI({Color? xTheme}) {
  return Container(
    height: 16,
    width: 16,
    child: CircularProgressIndicator(
      strokeWidth: 2,
      color: xTheme,
    ),
  );
}
