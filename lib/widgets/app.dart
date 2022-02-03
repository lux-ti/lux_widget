import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:lux_ui/theme_data.dart';

class XApp extends StatelessWidget {
  final XThemeData theme;
  final Widget? home;
  final String? initialRoute;
  final String title;
  final List<GetPage<dynamic>>? getPages;
  final Map<String, Widget Function(BuildContext)> routes;
  const XApp({
    Key? key,
    this.theme = const XThemeData(),
    this.routes = const <String, WidgetBuilder>{},
    this.home,
    this.initialRoute,
    this.getPages,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return XTheme(
      themeData: theme,
      child: GetMaterialApp(
        routes: routes,
        debugShowCheckedModeBanner: false,
        home: home,
        theme: theme.materialTheme,
        title: title,
        initialRoute: initialRoute,
        getPages: getPages,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],
        supportedLocales: [const Locale('pt', 'BR')],
      ),
    );
  }
}
