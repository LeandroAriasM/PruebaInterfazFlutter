import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final Widget child;

  const CardContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Container(
            //height: 300,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: _crearFormaCard(),
            child: this.child));
  }

  BoxDecoration _crearFormaCard() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black, blurRadius: 15, offset: Offset(0, 5))
        ]);
  }
}
