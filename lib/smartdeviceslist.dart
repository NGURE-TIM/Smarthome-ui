

class SmartDevices{

  String type;
  String icontype;
  bool status;
  SmartDevices(this.type, this.icontype, this.status);
}

class MySmartDevices{

List<SmartDevices> firstlist=[

SmartDevices("Smart Light", 'images/light-bulb.png', false),
  SmartDevices("Smart AC", 'images/air-conditioner.png', false),
  SmartDevices("Smart TV", 'images/smart-tv.png', false),
  SmartDevices("Smart Fan", 'images/fan.png',false),
];

}