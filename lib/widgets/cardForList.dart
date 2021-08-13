import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';
import 'package:lux_ui/widgets/buttons/rouded_check_box.dart';

class XCardForList extends StatelessWidget {
  final double? height;
  final double? width;
  final String? nameLeft;
  final String? nameRight;
  final String? subNameLeft;
  final String? subNameRight;
  final String? intText;
  final bool? isRoundedCheckBox;
  
  


  const XCardForList({ Key? key, this.height = 85 , this.width = 390, this.nameLeft, this.nameRight, this.subNameLeft, this.subNameRight, this.intText = '', this.isRoundedCheckBox, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Container(
        color: xTheme.panelColor,
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
          
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Container(
                alignment: Alignment.center,
                width: 70,
                child: Text(intText ?? '', overflow: TextOverflow.fade ,softWrap: false,style: TextStyle(
                      color: xTheme.foregroundColor,
                      fontSize: 40,
                      fontWeight: FontWeight.w300,
                      

                    ), ),
              ),
          
              Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(nameRight ?? '',style: TextStyle(color: xTheme.borderColor,fontSize: 12 ),),
                  Text(subNameRight ?? ' ',style: TextStyle(color: xTheme.foregroundColor,fontSize: 18 ),), 
                ],
              ),
        
              SizedBox(width: 60),
              Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(nameRight ?? '',style: TextStyle(color: xTheme.borderColor,fontSize: 12 ),),
                  Text(subNameRight ?? ' ',style: TextStyle(color: xTheme.foregroundColor,fontSize: 18 ),), 
                ],
              ),

              isRoundedCheckBox == true ? XRoundedCheckBox(isTap: true,) : Container()
              
            ],
          ),
        ),
        
      ),
    );
  }
}