import 'package:flutter/material.dart';
import 'package:get/get.dart';

class XDropdownSearch extends StatefulWidget {
  final void Function(String, bool)? onChanged;
  final void Function(String)? onTapItem;
  final void Function()? infinity;
  final TextEditingController controller;
  final String? placeholder;
  final Color? placeholderColor;
  final String? Function(String?)? validator;
  final bool compact;
  final List<String> items;
  final double? width;
  XDropdownSearch({
    Key? key,
    this.onChanged,
    required this.controller,
    this.placeholder,
    this.placeholderColor,
    this.validator,
    this.compact = false,
    this.infinity,
    required this.items,
    this.width,
    this.onTapItem,
  }) : super(key: key);

  @override
  State<XDropdownSearch> createState() => _XDropdownSearchState();
}

class _XDropdownSearchState extends State<XDropdownSearch> {
  double boxList = 0.0;
  List<String> items = [];

  List<String> listSearch = [];

  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    setState(() {
      items = widget.items;
      listSearch = items;
    });
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
              _scrollController.position.maxScrollExtent &&
          widget.infinity != null) {
        widget.infinity!();
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
    return Container(
      width: widget.width ?? double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          FocusScope(
            onFocusChange: (value) {
              if (value && items.isNotEmpty) {
                setState(() {
                  boxList =
                      items.length <= 5 && items.length != 0 ? 130 : 200.0;
                });
              } else if (!value) {
                setState(() {
                  boxList = 0.0;
                });
              }
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextFormField(
                validator: widget.validator,
                controller: widget.controller,
                decoration: InputDecoration(
                  labelText: widget.placeholder ?? null,
                  labelStyle: TextStyle(
                    color: widget.placeholderColor ??
                        Theme.of(context).primaryColor,
                  ),
                  border: widget.compact
                      ? null
                      : OutlineInputBorder(
                          borderSide: BorderSide(
                            color: widget.placeholderColor ??
                                Theme.of(context).primaryColor,
                          ),
                        ),
                  focusedBorder: widget.compact
                      ? UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: widget.placeholderColor ??
                                Theme.of(context).primaryColor,
                          ),
                        )
                      : OutlineInputBorder(
                          borderSide: BorderSide(
                            color: widget.placeholderColor ??
                                Theme.of(context).primaryColor,
                          ),
                        ),
                ),
                onChanged: (value) {
                  setState(() {
                    listSearch = filterSearch(value);
                  });

                  if (widget.onChanged != null)
                    widget.onChanged!(value, haveItem());
                },
              ),
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
                itemCount: listSearch.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          widget.controller.text = listSearch[index];
                          if (boxList > 0.0) {
                            FocusScopeNode currentFocus =
                                FocusScope.of(context);
                            if (!currentFocus.hasPrimaryFocus) {
                              currentFocus.unfocus();
                            }
                            setState(() {
                              boxList = 0.0;
                            });
                          }
                          if (widget.onTapItem != null)
                            widget.onTapItem!(listSearch[index]);
                        },
                        child: Container(
                          width: double.infinity,
                          padding:
                              EdgeInsets.only(top: 10, bottom: 10, left: 50),
                          child: Text(
                            listSearch[index],
                            style: TextStyle(
                                color:
                                    widget.controller.text == listSearch[index]
                                        ? Theme.of(context).primaryColor
                                        : null),
                          ),
                        ),
                      ),
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

  List<String> filterSearch(String filter) {
    if (filter.isNotEmpty) {
      return items
          .where((x) => x.toLowerCase().startsWith(filter.toLowerCase()))
          .toList();
    } else {
      return items;
    }
  }

  bool haveItem() {
    return listSearch.length <= 0;
  }
}
