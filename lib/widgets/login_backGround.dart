import 'package:flutter/material.dart';

class LoginBackground extends StatelessWidget {
  final Widget child;

  const LoginBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26, //Colors.grey[300],
      height: double.infinity,
      width: double.infinity,
      child: Stack(children: [
        _BlueBox(),
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
          Icons.access_alarm_outlined,
          color: Color.fromARGB(255, 32, 141, 141),
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
        color: Colors.purple,
        width: double.infinity,
        height: size.height * 0.4,
        child: Stack(
          children: [
            Opacity(
              child: Positioned(child: _Pelotitas(), top: 30),
              opacity: 0.5,
            ),
            Positioned(child: _Pelotitas(), right: 50),
            Positioned(
              child: _Pelotitas(),
              bottom: 20,
              left: 30,
            ),
          ],
        ),
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
