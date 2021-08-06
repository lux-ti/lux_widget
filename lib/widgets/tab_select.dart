import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_ui/theme_data.dart';

class XTabSelect extends StatefulWidget {
  final List<Widget> children;
  const XTabSelect({Key? key, this.children = const []}) : super(key: key);

  @override
  _XTabSelectState createState() => _XTabSelectState();
}

class _XTabSelectState extends State<XTabSelect> {
  var widthWidget = 2.0;
  var position = 0;
  List<GlobalKey>? listKey;
  final keyW = GlobalKey();
  @override
  initState() {
    listKey =
        List<GlobalKey>.generate(widget.children.length, (i) => GlobalKey());
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        widthWidget = listKey!.first.currentContext!.size!.width;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6),
      constraints: BoxConstraints.expand(
        height: 30,
      ),
      decoration: BoxDecoration(
        color: XTheme.of(context).panelColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Stack(
          children: [
            AnimatedPositioned(
              width: widthWidget,
              left: (widthWidget * position).toDouble(),
              bottom: 4.0,
              top: 4.0,
              duration: Duration(seconds: 1),
              child: Container(
                //padding: EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: widget.children.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        widthWidget =
                            listKey![index].currentContext!.size!.width;
                        position = index;
                      });
                    },
                    child: Container(
                        alignment: Alignment.center,
                        key: listKey![index],
                        child: widget.children[index]),
                  );
                })
          ],
        ),
      ),
    );
  }
}
