import 'package:flutter/material.dart';

import 'background.dart';

class SmartBackground extends StatelessWidget {
  final Widget child;

  const SmartBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(66, 0, 0, 0), //Colors.grey[300],
      height: double.infinity,
      width: double.infinity,
      child: Stack(children: [
        //_BlueBox(),
        Background(),
        _IconoCentro(),
        this.child,
      ]),
    );
  }
}

class _IconoCentro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 300,
        child: Icon(
          Icons.home_sharp,
          color: Color.fromARGB(255, 146, 224, 224),
          size: 100,
        ),
      ),
    );
  }
}

class _BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Opacity(
      opacity: 0.8,
      child: Container(
        color: Color.fromARGB(255, 145, 207, 231),
        width: double.infinity,
        height: size.height * 0.5,
      ),
    );
  }
}

class _Pelotitas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: _peloticaDecoration(),
    );
  }

  BoxDecoration _peloticaDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.black45,
    );
  }
}
