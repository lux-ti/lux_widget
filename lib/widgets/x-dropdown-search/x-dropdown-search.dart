import 'package:flutter/material.dart';
import 'package:get/get.dart';

class XDropdownSearch extends StatefulWidget {
  final void Function()? onFocus;
  final void Function()? onBlur;
  final void Function()? onTap;
  final void Function(String text)? onSubmit;
  final TextEditingController? controller;
  XDropdownSearch(
      {Key? key,
      this.onFocus,
      this.onBlur,
      this.onTap,
      this.onSubmit,
      this.controller})
      : super(key: key);

  @override
  State<XDropdownSearch> createState() => _XDropdownSearchState();
}

class _XDropdownSearchState extends State<XDropdownSearch> {
  double boxList = 0.0;
  List<String> list = [];

  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    print('iniciiu');
    setState(() {
      list = [
        'item1',
        'item2',
        'item1',
        'item2',
        'item1',
        'item2',
        'item1',
        'item2',
        'item1',
        'item2',
        'item1',
        'item2',
        'item1',
        'item2',
        'item1',
        'item2',
        'item1',
        'item2',
        'item1',
        'item2',
        'item1',
        'item2',
        'item1',
        'item2',
        'item1',
        'item2',
        'item1',
        'item2'
      ];
    });
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent) {
        print('checkou');
        setState(() {
          list.add('novo valor value');
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var textController = widget.controller ?? TextEditingController();

    return Container(
      width: 300,
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).disabledColor),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Column(
        children: [
          FocusScope(
            onFocusChange: (value) {
              if (value && widget.onFocus != null) {
                widget.onFocus!();
                setState(() {
                  boxList = 200.0;
                });
              } else if (!value && widget.onBlur != null) {
                widget.onBlur!();
                setState(() {
                  boxList = 0.0;
                });
                submit(textController.text);
              }
            },
            child: TextField(
              onTap: () {},
              controller: textController,
              onChanged: (value) {
                print(value);
              },
            ),
          ),
          SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).disabledColor),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              height: boxList,
              child: ListView.builder(
                controller: _scrollController,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Text(list[index]),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void submit(String? text) {
    if (text != null && widget.onSubmit != null) {
      widget.onSubmit!(text);
    }
  }
}
