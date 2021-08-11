

import 'package:flutter/material.dart';
import 'package:lux_ui/lib.dart';
import 'package:lux_ui/widgets/buttons/buttons.dart';

class XClientView extends StatelessWidget {
  const XClientView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var xTheme = XTheme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              XSideBarButton(
                icon: Lxi.circleChevronLeft,
                
                iconSize: 25,
                fontSize: 38,
                text: 'Clientes',
                onTap: (){},
    
    
                ),
                IconButton(onPressed: (){}, icon: Icon(Lxi.pinAdd, color: xTheme.primaryColor,size: 18,))
            ],
          ),
          Stack(
            children: [
              Container(
              width: double.infinity,
              height: 550,
              color: xTheme.disabledColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    XFilter(onTap: (){},),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Stack(
                        
                        children: [
                          Container(
                            width: 370,
                            height: 192,
                            color: xTheme.warningColor,
                            
                          child:
                          Container(
                            width: 367,
                            height: 192,
                            color: xTheme.backgroundColor,
                          ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
                        
              
            ),
            
            ]),
    
        ],
      ),
    );
  }
}