import 'package:flutter/material.dart';
import 'package:get/get.dart';

class XDropdownSearch extends GetView {
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

  final RxList<String> list = [
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
  ].obs;

  final RxDouble boxList = 0.0.obs;
  Rx<ScrollController> _scrollController = ScrollController().obs;

  @override
  Widget build(BuildContext context) {
    final textController = controller ?? TextEditingController();

    if (boxList > 0) {
      if (_scrollController.value.position.pixels ==
          _scrollController.value.position.maxScrollExtent) {
        list.value = [];
      }
    }

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
              if (value && onFocus != null) {
                onFocus!();
                boxList.value = 200.0;
              } else if (!value && onBlur != null) {
                onBlur!();
                boxList.value = 0.0;
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
            child: Obx(
              () => Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).disabledColor),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                height: boxList.value,
                child: ListView.builder(
                  controller: _scrollController.value,
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Text(
                            _scrollController.value.position.pixels.toString()),
                        Text(list[index]),
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

  void submit(String? text) {
    if (text != null && onSubmit != null) {
      onSubmit!(text);
    }
  }
}
