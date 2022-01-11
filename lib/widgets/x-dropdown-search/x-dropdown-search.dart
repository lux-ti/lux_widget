import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_ui/lib.dart';

class DropdownSearchItem {
  String text;
  dynamic value;

  DropdownSearchItem({required this.text, this.value});
}

class XDropdownSearch extends StatefulWidget {
  final int totalPages;
  final void Function(String)? onChanged;
  final void Function(DropdownSearchItem) onTapItem;
  final Future<void> Function(int page)? infinity;
  final void Function(String?)? onDelete;
  final TextEditingController controller;
  final String? topText;
  final String? hintText;
  final String? Function(String?)? validator;
  final RxList<DropdownSearchItem> items;
  final double? width;
  XDropdownSearch({
    Key? key,
    this.infinity,
    required this.items,
    required this.controller,
    required this.totalPages,
    required this.onTapItem,
    this.onChanged,
    this.validator,
    this.width,
    this.onDelete,
    this.topText,
    this.hintText,
  }) : super(key: key);

  @override
  State<XDropdownSearch> createState() => _XDropdownSearchState();
}

class _XDropdownSearchState extends State<XDropdownSearch> {
  int page = 1;
  Future onRefresh() async {
    if (page <= widget.totalPages && widget.infinity != null) {
      await widget.infinity!(page);
      page++;
    }
  }

  double boxList = 0.0;

  RxList<DropdownSearchItem> filteredItems = <DropdownSearchItem>[].obs;
  void filterItems(String filter) {
    if (filter.isNotEmpty) {
      filteredItems.value = widget.items
          .where((x) => x.text.toLowerCase().startsWith(filter.toLowerCase()))
          .toList()
          .obs;
    } else {
      filteredItems.value = widget.items;
    }
  }

  @override
  void initState() {
    super.initState();
    filterItems("");
  }

  ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    return Container(
      width: widget.width ?? double.infinity,
      child: Column(
        children: [
          FocusScope(
            onFocusChange: (value) {
              if (value && widget.items.isNotEmpty) {
                setState(() {
                  boxList = widget.items.length <= 5 && widget.items.length != 0
                      ? 130
                      : 200.0;
                });
              } else if (!value) {
                setState(() {
                  boxList = 0.0;
                });
              }
            },
            child: Container(
              margin: EdgeInsets.only(bottom: boxList > 0 ? 10 : 0),
              child: Obx(
                () => XTextField(
                  textInputType:
                      widget.items.length < 15 ? TextInputType.none : null,
                  validator: widget.validator,
                  controller: widget.controller,
                  colorText: XTheme.of(context).borderColor,
                  sizeInputText: 14,
                  topText: widget.topText ?? '',
                  hintText: widget.hintText ?? 'Infome',
                  suffixIcon: Container(
                    padding: EdgeInsets.only(right: 5),
                    width: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (widget.items.length > 0) {
                              setState(() {
                                if (boxList > 0) {
                                  if (!currentFocus.hasPrimaryFocus) {
                                    currentFocus.unfocus();
                                  }
                                  boxList = 0.0;
                                } else {
                                  boxList = widget.items.length <= 5 &&
                                          widget.items.length != 0
                                      ? 130
                                      : 200.0;
                                }
                              });
                            }
                          },
                          child: Icon(
                            (boxList > 0) ? Lxi.chevronTop : Lxi.chevronBottom,
                            color: boxList > 0
                                ? XTheme.of(context).primaryColor
                                : null,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (widget.onDelete != null) {
                              widget.onDelete!(widget.controller.text);
                            }
                            widget.controller.text = '';

                            if (!currentFocus.hasPrimaryFocus) {
                              currentFocus.unfocus();
                            }
                            if (boxList > 0.0) {
                              setState(() {
                                boxList = 0.0;
                              });
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.close,
                              color: XTheme.of(context).primaryColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  onChanged: (value) {
                    filterItems(value);
                    if (widget.onChanged != null) widget.onChanged!(value);
                  },
                ),
              ),
            ),
          ),
          RefreshIndicator(
            onRefresh: onRefresh,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: XTheme.of(context).disabledColor),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              height: boxList,
              child: Obx(
                () => ListView.builder(
                  controller: _scrollController,
                  itemCount: filteredItems.length,
                  reverse: widget.items.length > 4,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            widget.controller.text = filteredItems[index].text;
                            if (boxList > 0.0) {
                              if (!currentFocus.hasPrimaryFocus) {
                                currentFocus.unfocus();
                              }
                              setState(() {
                                boxList = 0.0;
                              });
                            }
                            widget.onTapItem(filteredItems[index]);
                          },
                          child: Container(
                            width: double.infinity,
                            color: index % 2 == 0
                                ? XTheme.of(context).backgroundColor
                                : Colors.grey[100],
                            padding:
                                EdgeInsets.only(top: 13, bottom: 13, left: 10),
                            child: Text(
                              filteredItems[index].text,
                              style: TextStyle(
                                  color: widget.controller.text ==
                                          filteredItems[index].text
                                      ? XTheme.of(context).primaryColor
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
          ),
        ],
      ),
    );
  }
}
