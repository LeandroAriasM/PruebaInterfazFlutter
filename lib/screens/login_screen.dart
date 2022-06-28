import 'package:domo_login/screens/smart_screen.dart';
import 'package:domo_login/ui/input_decorations.dart';
import 'package:domo_login/widgets/card_container.dart';
import 'package:domo_login/widgets/login_backGround.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBackground(
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 230),
            CardContainer(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  _loginForm(),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Crear nuevo usuario',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 100,
            )
          ]),
        ),
      ),
    );
  }
}

class _loginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                  hintText: 'john.doe@gmail.com',
                  labelText: 'Correo electrónico',
                  prefixIcon: Icons.alternate_email_rounded),
            ),
            SizedBox(height: 30),
            TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                  hintText: '*****',
                  labelText: 'Contraseña',
                  prefixIcon: Icons.lock_outline),
            ),
            SizedBox(height: 30),
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                disabledColor: Colors.grey,
                elevation: 0,
                color: Colors.deepPurple,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                    child: Text('Ingresar')),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SmartScreen()));
                })
          ],
        ),
      ),
    );
  }
}
