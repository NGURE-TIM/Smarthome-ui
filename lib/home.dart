import 'package:flutter/material.dart';
import 'smartdeviceslist.dart';
import  "smartbox.dart";

const kPadding=EdgeInsets.symmetric(horizontal: 40.0, vertical: 25);
const kpad=EdgeInsets.symmetric(horizontal: 40.0, vertical: 0);
const kTitlePadding=EdgeInsets.symmetric(horizontal: 40.0, vertical: 0);
const kSmartfont= TextStyle(fontSize:15.0,
  fontWeight:FontWeight.w400,
  color: Colors.black,
);
const ksizedbox=SizedBox(
  height: 5.0,
  width: double.infinity,
);

MySmartDevices smartdevice=MySmartDevices();


class homepage extends StatefulWidget {


  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SafeArea(
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Padding(
      padding: kPadding,

      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Myimage('images/menu.png'),
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(
              'images/9b2c0c2c-b5d8-4194-b42d-e2da0c6f2494.jpg'),
        ),
      ],),
    ),
      ksizedbox,
  Padding(
    padding:  kTitlePadding,
    child: SizedBox(
      height:70,
      child: Column(

crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Welcome home",
              style: TextStyle(fontSize:15.0,
                fontWeight:FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
          Text(
            "TIM NGURE",
            style: TextStyle(fontSize:30.0,
              fontWeight:FontWeight.w900,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  ),
      ksizedbox,

      Padding(padding: kPadding,

          child:Text("Smart Devices",
          style:kSmartfont)
      ),

  Expanded(
    child: GridView.builder(
padding: EdgeInsets.all(25),
      itemCount: smartdevice.firstlist.length,
gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
crossAxisCount: 2,
    childAspectRatio: 1/1.2,
),
        itemBuilder: (BuildContext context, int index) {
          return Smartbox(
            smartdevice.firstlist[index].type,
            smartdevice.firstlist[index].icontype,
             smartdevice.firstlist[index].status,
          (val){
              return setState(() {
                smartdevice.firstlist[index].status=val;
              });
            }
          );
        },
      ),
  )






  ],),
),



    );
  }
}


class Myimage extends StatelessWidget {
  final String smart;
  Myimage(this.smart);
  @override
  Widget build(BuildContext context) {
    return Image(
     image:AssetImage(smart),
      height:45 ,
      width: 45,
    );
  }
}
