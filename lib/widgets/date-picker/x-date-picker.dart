import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lux_ui/lib.dart';
import 'package:intl/intl.dart';

class XDatePicker extends StatelessWidget {
  final String? Function(String?)? validator;
  final String? topText;
  final String? hintText;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final Function(DateTime) onSelectedDate;
  final Rx<DateTime> selectedData;

  XDatePicker({
    Key? key,
    this.validator,
    this.topText,
    this.hintText,
    this.firstDate,
    this.lastDate,
    required this.onSelectedDate, required this.selectedData,
  }) : super(key: key);

  

  String formatDate(DateTime date) {
    return DateFormat(
      'dd/MM/yyyy',
    ).format(date);
  }

  @override
  Widget build(BuildContext context) {
    return XTextField(
      textInputType: TextInputType.none,
      validator: validator,
      colorText: XTheme.of(context).borderColor,
      sizeInputText: 14,
      topText: topText ?? '',
      hintText: hintText ?? 'Infome',
      suffixIcon: GestureDetector(
        onTap: () => _selectedDate(context),
        child: Container(
          color: Colors.transparent,
          margin: EdgeInsets.only(right: 10),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  Lxi.calendarDates,
                  color: XTheme.of(context).primaryColor,
                ),
              ),
              Obx(() => Text(formatDate(selectedData.value))),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectedDate(context) async {
    final dataSelecionada = await showDatePicker(
      context: context,
      initialDate: selectedData.value,
      firstDate: firstDate ?? DateTime(1890, 1),
      lastDate: lastDate ?? DateTime.now(),
      builder: (context, child) {
        return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: XTheme.of(context).primaryColor,
                onSurface: XTheme.of(context).primaryColor,
              ),
            ),
            child: child!);
      },
    );
    if (dataSelecionada != null && dataSelecionada != selectedData.value) {
      selectedData.value = dataSelecionada;
      onSelectedDate(dataSelecionada);
    }
  }
}
