import 'package:domo_login/screens/smart_devices.dart';
import 'package:flutter/material.dart';

import '../widgets/Smart_backGround.dart';
import 'login_screen.dart';

/// Home screen
class SmartScreen extends StatefulWidget {
  @override
  _SmartScreenState createState() => _SmartScreenState();
}

class _SmartScreenState extends State<SmartScreen> {
  bool _switch1 = false;
  bool _switch2 = false;
  bool _switch3 = false;
  bool _switch4 = false;
  bool _switch5 = false;
  bool _switch6 = false;

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: Icon(Icons.menu, color: Color(0xFF151515)),
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Row(
              children: [
                Icon(Icons.notifications,
                    color: Color.fromARGB(228, 206, 30, 7)),
                const SizedBox(width: 15.0),
                Icon(Icons.info_outline, color: Color(0xFF151515)),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          if (index == 3) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          } else if (index == 2) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SmartDevices()));
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_rounded),
            label: ("Device"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: ("Setting"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ("Login"),
          ),
        ],
      ),
      body: SafeArea(
        child: SmartBackground(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome home.",
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Color(0xFF151515),
                        fontFamily: 'Comfortaa'),
                  ),
                  const SizedBox(height: 30.0),
                  Text("Rooms",
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey[600],
                          fontFamily: 'Comfortaa')),
                  const SizedBox(height: 15.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _Habitaciones("Habitacion Principal", false),
                        const SizedBox(width: 8.0),
                        _Habitaciones("Living", false),
                        const SizedBox(width: 8.0),
                        _Habitaciones("Baño", false),
                        const SizedBox(width: 8.0),
                        _Habitaciones("Cocina", false),
                        const SizedBox(width: 8.0),
                        _Habitaciones("Patio", true),
                        const SizedBox(width: 8.0),
                        _Habitaciones("Garage", false),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Devices",
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.grey[600],
                              fontFamily: 'Comfortaa')),
                      Text("+Add Device",
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey[600],
                              fontFamily: 'Comfortaa')),
                    ],
                  ),
                  const SizedBox(height: 15.0),
                  Row(children: [
                    _makeDeviceEl(
                      "Lighting",
                      "subText",
                      Icons.lightbulb_outline,
                      size.width,
                      Switch(
                        value: _switch1,
                        onChanged: (bool e) {
                          setState(() => _switch1 = e);
                        },
                        activeColor: Colors.white,
                        activeTrackColor: Colors.grey,
                        inactiveThumbColor: Colors.grey[700],
                        inactiveTrackColor: Colors.black54,
                      ),
                    ),
                    const SizedBox(width: 18.0),
                    _makeDeviceEl(
                      "android tv",
                      "subText",
                      Icons.android,
                      size.width,
                      Switch(
                        value: _switch2,
                        onChanged: (bool e) {
                          setState(() => _switch2 = e);
                        },
                        activeColor: Colors.white,
                        activeTrackColor: Colors.grey,
                        inactiveThumbColor: Colors.grey[700],
                        inactiveTrackColor: Colors.black54,
                      ),
                    ),
                  ]),
                  const SizedBox(height: 20.0),
                  Row(children: [
                    _makeDeviceEl(
                      "Security",
                      "subText",
                      Icons.lock_outline,
                      size.width,
                      Switch(
                        value: _switch3,
                        onChanged: (bool e) {
                          setState(() => _switch3 = e);
                        },
                        activeColor: Colors.white,
                        activeTrackColor: Colors.grey,
                        inactiveThumbColor: Colors.grey[700],
                        inactiveTrackColor: Colors.black54,
                      ),
                    ),
                    const SizedBox(width: 18.0),
                    _makeDeviceEl(
                      "Internet",
                      "subText",
                      Icons.wifi,
                      size.width,
                      Switch(
                        value: _switch4,
                        onChanged: (bool e) {
                          setState(() => _switch4 = e);
                        },
                        activeColor: Colors.white,
                        activeTrackColor: Colors.grey,
                        inactiveThumbColor: Colors.grey[700],
                        inactiveTrackColor: Colors.black54,
                      ),
                    ),
                  ]),
                  const SizedBox(height: 20.0),
                  Row(children: [
                    _makeDeviceEl(
                      "Fire Alarm",
                      "subText",
                      Icons.fireplace,
                      size.width,
                      Switch(
                        value: _switch5,
                        onChanged: (bool e) {
                          setState(() => _switch5 = e);
                        },
                        activeColor: Colors.white,
                        activeTrackColor: Colors.grey,
                        inactiveThumbColor: Colors.grey[700],
                        inactiveTrackColor: Colors.black54,
                      ),
                    ),
                    const SizedBox(width: 18.0),
                    _makeDeviceEl(
                      "Alarma",
                      "subText",
                      Icons.add_alert_outlined,
                      size.width,
                      Switch(
                        value: _switch6,
                        onChanged: (bool e) {
                          setState(() => _switch6 = e);
                        },
                        activeColor: Colors.white,
                        activeTrackColor: Colors.grey,
                        inactiveThumbColor: Colors.grey[700],
                        inactiveTrackColor: Colors.black54,
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/* --- Widgets --- */

/// Make room widget.
Widget _makeRoomEl(String name, bool selected) {
  return TextButton(
    onPressed: () {},
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
        color: selected
            ? Color.fromARGB(255, 37, 32, 32)
            : Color.fromARGB(143, 134, 199, 185),
        border: selected
            ? Border.all(color: Colors.black)
            : Border.all(color: Colors.black, width: 0.3),
      ),
      child: Padding(
        padding: EdgeInsets.all(13.0),
        child: Text(
          name,
          style: TextStyle(
              color: selected ? Colors.white : Colors.black,
              fontFamily: 'Comfortaa',
              fontSize: 13.0),
        ),
      ),
    ),
  );
}

Widget _Habitaciones(String name, bool selected) {
  return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      disabledColor: Colors.grey,
      elevation: 0,
      color: selected
          ? Color.fromARGB(228, 129, 140, 207)
          : Color.fromARGB(143, 130, 168, 173),
      child: Container(padding: EdgeInsets.all(13.0), child: Text(name)),
      onPressed: () {});
}

/// Make device widget.
Widget _makeDeviceEl(
    String name, String subText, IconData icon, double width, Widget sw) {
  final double containerWidth = (width / 2) - 24.0;
  final double iconContainerWidth = containerWidth * 0.3;
  return Container(
    width: containerWidth,
    height: 170.0,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
        color: Color.fromARGB(228, 129, 140, 207)),
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 5.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.5),
                          width: 0.5,
                        )),
                    width: iconContainerWidth,
                    height: iconContainerWidth,
                    child: Icon(icon, size: 30.0, color: Color(0xFF151515)),
                  ))),
          Align(
            alignment: const Alignment(-1, 0.3),
            child: Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Text(
                name,
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF151515)),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-1, 0.65),
            child: Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Text(
                subText,
                style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 26, 48, 150)),
              ),
            ),
          ),
          Align(alignment: Alignment.topRight, child: sw),
        ],
      ),
    ),
  );
}
