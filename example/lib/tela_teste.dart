import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lux_ui/lux_ui.dart';
import 'package:lux_ui/widgets/Scafold/Scafold.dart';
import 'package:lux_ui/widgets/login.dart';

class TelaTeste extends StatelessWidget {
  final textcontroller = TextEditingController();
  final textcontroller2 = TextEditingController();
  TelaTeste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: XScafold(
<<<<<<< HEAD
        title: 'teste',
        child: Center(
          child: XCardProduction(

              height: 150,
              borderColor: Colors.green,
              frontColor: Colors.white,
              bottomLeftWidget: Column(
  }
}

Widget SB() {
  return XSquaredButton(
                  height: 30,
                  width: 130,
                  color: Colors.grey[800],
                  child: Text(
                    'NÃO INICIADO',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  onTap: () {});
}


//pegar código na hora da construção do widget n oprjeto wms.

//  XCardProductionLine(
//             borderColor: Colors.green,
//             frontColor: Colors.white,
//             leftWidget: XContentLabel(
//                 nameWeight: FontWeight.w300,
//                 topWeight: FontWeight.w600,
//                 topSpace: 1,
//                 nameSize: 24,
//                 topSize: 12,
//                 colorTop: Colors.grey[800],
//                 colorName: Colors.grey[800],
//                 topName: 'ETIQUETA',
//                 name: '78687687687'),
//                 rightWidget: XContentLabel(
//                 nameWeight: FontWeight.w300,
//                 topWeight: FontWeight.w600,
//                 topSpace: 1,
//                 nameSize: 24,
//                 topSize: 12,
//                 colorTop: Colors.grey[800],
//                 colorName: Colors.grey[800],
//                 topName: 'ETIQUETA',
//                 name: '49,9'),
//           ),


//====================== #################### =======================

  //aproveitar cod 

//  XCardConference(
//               height: 96,
//               borderColor: Colors.green,
//               frontColor: Colors.white,
//               leftWidget: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     '876',
//                     style: TextStyle(fontSize: 32, fontWeight: FontWeight.w300),
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         height: 8,
//                         width: 8,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(100),
//                           color: Colors.green,
//                         ),

                        

//                       ),
//                       Text('carro no patio', style: TextStyle(fontSize: 12))
//                     ],
//                   ),
//                 ],
//               ),
//               rightWidget: XSquaredButton(
//                   height: 30,
//                   width: 130,
//                   color: Colors.grey[800],
//                   borderRadius: 25,
//                   child: Text(
//                     'NÃO INICIADO',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 12,
//                         fontWeight: FontWeight.w600),
//                   ),
//                   onTap: () {})),