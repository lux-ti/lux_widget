import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropdownSearchItem {
  String text;
  dynamic value;
  int id;

  DropdownSearchItem({required this.text, this.value, required this.id});
}

class XDropdownSearch extends StatefulWidget {
  final void Function(String, bool)? onChanged;
  final void Function(DropdownSearchItem) onTapItem;
  final Future<void> Function() infinity;
  final void Function(String?)? onDelete;
  final TextEditingController controller;
  final String? placeholder;
  final Color? placeholderColor;
  final String? Function(String?)? validator;
  final bool compact;
  final List<DropdownSearchItem> items;
  final double? width;
  XDropdownSearch({
    Key? key,
    this.onChanged,
    required this.controller,
    this.placeholder,
    this.placeholderColor,
    this.validator,
    this.compact = false,
    required this.infinity,
    required this.items,
    this.width,
    required this.onTapItem,
    this.onDelete,
  }) : super(key: key);

  @override
  State<XDropdownSearch> createState() => _XDropdownSearchState();
}

class _XDropdownSearchState extends State<XDropdownSearch> {
  double boxList = 0.0;
  List<DropdownSearchItem> items = [];

  List<DropdownSearchItem> listSearch = [];

  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    setState(() {
      items = widget.items;
      listSearch = items;
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 4,
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
                (widget.onDelete != null)
                    ? Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            if (widget.onDelete != null) {
                              widget.onDelete!(widget.controller.text);
                            }
                            widget.controller.text = '';
                            FocusScopeNode currentFocus =
                                FocusScope.of(context);
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
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      )
                    : SizedBox()
              ],
            ),
          ),
          RefreshIndicator(
            onRefresh: widget.infinity,
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
                reverse: true,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          widget.controller.text = listSearch[index].text;
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
                          widget.onTapItem(listSearch[index]);
                        },
                        child: Container(
                          width: double.infinity,
                          color: index % 2 == 0
                              ? Theme.of(context).backgroundColor
                              : Colors.grey[100],
                          padding:
                              EdgeInsets.only(top: 10, bottom: 10, left: 20),
                          child: Text(
                            listSearch[index].text,
                            style: TextStyle(
                                color: widget.controller.text ==
                                        listSearch[index].text
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

  List<DropdownSearchItem> filterSearch(String filter) {
    if (filter.isNotEmpty) {
      return items
          .where((x) => x.text.toLowerCase().startsWith(filter.toLowerCase()))
          .toList();
    } else {
      return items;
    }
  }

  bool haveItem() {
    return listSearch.length <= 0;
  }
}
