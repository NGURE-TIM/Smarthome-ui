import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'smartdeviceslist.dart';

class Smartbox extends StatelessWidget {

  String type;
  String icontype;
  bool status;
  final void Function(bool)? onPres;
  Smartbox (this.type, this.icontype, this.status, this.onPres);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(24),
            color:status? Colors.grey[900]:Colors.grey[400] ),

        child: Column(
mainAxisAlignment: MainAxisAlignment.center,
          children: [
Myimage(icontype,
    status?Colors.white:Colors.black,
),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left:25),
                    child: Text( type,
                    style:TextStyle(fontSize:12,
                      fontWeight: FontWeight.bold,
                        color: status?Colors.white:Colors.black
                    )     ),
                  ),
                ),
Transform.rotate(
  angle: pi/2,
    child: CupertinoSwitch(value:status, onChanged: onPres)
)
              ],
            )
          ],


        ),
      ),
    );
  }
}


class Myimage extends StatelessWidget {
  final String smart;
  final Color colortype;

  Myimage(this.smart, this.colortype);

  @override
  Widget build(BuildContext context) {
    return Image(
        image: AssetImage(smart),
        height: 65,
        color: colortype
    );
  }
}

Widget Imaage (String sma , Color co){
  return Image(
      image: AssetImage(sma),
      height: 65,
      color: co
  );
}
