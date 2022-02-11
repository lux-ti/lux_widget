import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_ui/lib.dart';

class DropdownSearchItem {
  String name;
  int id;

  DropdownSearchItem({required this.name, required this.id});
}

class XDropdownSearch extends StatefulWidget {
  final void Function()? onFocus;
  final int totalPages;
  final void Function(String)? onChanged;
  final void Function(dynamic)? onTapItem;
  final Future<void> Function(int page)? infinity;
  final void Function(String?)? onDelete;
  final TextEditingController controller;
  final String? topText;
  final String? hintText;
  final String? Function(String?)? validator;
  final RxList<dynamic> items;
  int? value;
  dynamic Function(dynamic)? getKey;
  String Function(dynamic)? getLabel;
  dynamic Function(dynamic)? getValue;

  final double? width;
  XDropdownSearch({
    Key? key,
    this.infinity,
    required this.items,
    required this.controller,
    required this.totalPages,
    required this.value,
    this.onTapItem,
    this.onChanged,
    this.validator,
    this.width,
    this.onDelete,
    this.topText,
    this.hintText,
    this.getKey,
    this.getLabel,
    this.getValue, this.onFocus,
  }) : super(key: key);

  @override
  State<XDropdownSearch> createState() => _XDropdownSearchState();
}

class _XDropdownSearchState extends State<XDropdownSearch> {
  int page = 1;
  double boxList = 0.0;

  Future onRefresh() async {
    if (page <= widget.totalPages && widget.infinity != null) {
      await widget.infinity!(page);
      page++;
    }
  }

  RxList<dynamic> filteredItems = <dynamic>[].obs;
  void filterItems(String filter) {
    if (filter.isNotEmpty) {
      filteredItems.value = widget.items
          .where((x) =>
              widget.getLabel!(x).toLowerCase().contains(filter.toLowerCase()))
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

    if (widget.getKey == null) {
      widget.getKey = (item) => item.id;
    }

    if (widget.getLabel == null) {
      widget.getLabel = (item) => item.name;
    }

    if (widget.getValue == null) {
      widget.getValue = widget.getKey;
    }

    if (filteredItems.length > 0 && widget.value != null) {
      var res = filteredItems.firstWhere(
        (element) => widget.getKey!(element) == widget.value,
        orElse: () => '',
      );
      if (res != '') {
        widget.controller.text = widget.getLabel!(res);
      }
    }
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
    var isReverse = true;
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
                  onFocus: widget.onFocus,
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
                          child: Container(
                            padding: EdgeInsets.only(right: 5),
                            child: Icon(
                              (boxList > 0)
                                  ? Lxi.chevronTop
                                  : Lxi.chevronBottom,
                              color: boxList > 0
                                  ? XTheme.of(context).primaryColor
                                  : null,
                            ),
                          ),
                        ),
                        widget.onDelete != null
                            ? GestureDetector(
                                onTap: () {
                                  widget.value = null;

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
                                  margin: EdgeInsets.only(right: 5),
                                  child: Icon(
                                    Icons.close,
                                    color: XTheme.of(context).primaryColor,
                                  ),
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                  onChanged: (value) {
                    filterItems(value);
                    if (widget.onChanged != null) widget.onChanged!(value);
                    setState(() {
                      isReverse = value != '' ? false : true;
                    });
                  },
                ),
              ),
            ),
          ),
          RefreshIndicator(
            onRefresh: onRefresh,
            triggerMode: RefreshIndicatorTriggerMode.anywhere,
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
                  reverse: isReverse,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            widget.controller.text = filteredItems[index].name;
                            if (boxList > 0.0) {
                              if (!currentFocus.hasPrimaryFocus) {
                                currentFocus.unfocus();
                              }
                              setState(() {
                                boxList = 0.0;
                              });
                            }

                            widget.value = filteredItems[index].id;

                            if (widget.onTapItem != null) {
                              widget.onTapItem!(filteredItems[index]);
                            }
                          },
                          child: Container(
                            width: double.infinity,
                            color: index % 2 == 0
                                ? XTheme.of(context).backgroundColor
                                : Colors.grey[100],
                            padding:
                                EdgeInsets.only(top: 13, bottom: 13, left: 10),
                            child: Text(
                              filteredItems[index].name,
                              style: TextStyle(
                                color: widget.value == filteredItems[index].id
                                    ? XTheme.of(context).primaryColor
                                    : null,
                              ),
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
