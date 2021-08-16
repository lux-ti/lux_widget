import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';

class XTabSelect extends StatelessWidget {
  final List<Widget> tabs;
  final List<Widget> tabsView;
  final int length;
  final bool isScrollable;
  const XTabSelect({
    Key? key,
    required this.tabs,
    required this.tabsView,
    required this.length,
    this.isScrollable = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);
    return DefaultTabController(
      length: length,
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints.expand(height: 25),
            decoration: BoxDecoration(
              color: xTheme.panelColor,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.symmetric(vertical: 1),
            padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            child: TabBar(
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.greenAccent),
              isScrollable: isScrollable,
              tabs: tabs,
            ),
          ),
          Container(
            constraints: BoxConstraints.expand(
              height: 10,
            ),
            color: xTheme.foregroundColor,
          ),
          Expanded(
            child: TabBarView(children: tabsView),
          )
        ],
      ),
    );
  }
}
