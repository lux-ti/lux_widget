import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  DateTime selectedData = DateTime.now();

  Future _selectDate() async {
    DateTime? dataSelecionada = await showDatePicker(
      context: context,
      initialDate: selectedData,
      firstDate: DateTime(2019, 1),
      lastDate: DateTime(2030),
      // builder: (context, child) {
      //   var xTheme = XTheme.of(context);
      //   return Theme(
      //       data: Theme.of(context).copyWith(
      //         colorScheme: ColorScheme.light(
      //           primary: xTheme.primaryColor,
      //           onSurface: xTheme.primaryColor,
      //         ),
      //       ),
      //       child: child!);
      // },
    );
    if (dataSelecionada != null && dataSelecionada != selectedData) {
      selectedData = dataSelecionada;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo localização'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(selectedData.toString()),
              RaisedButton(
                onPressed: _selectDate,
                child: Text('CLIQUE'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
