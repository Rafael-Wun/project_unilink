import 'package:flutter/material.dart';
import 'package:unilink/views/main_menu.dart';


class LoginHome extends StatefulWidget {
  const LoginHome({super.key});

  @override
  State<LoginHome> createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {
  final _passController = TextEditingController();
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool loggedIn = false;
  late String password;

  void _validate() {
    final form = _formKey.currentState;
    if (!form!.validate()) {
      return;
    }

    final password = _passController.text;
    final email = _emailController.text;

    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => MainMenu(password:password, email:email)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white70,
        child: ListView(
          children: <Widget>[
            _title(),
            SizedBox(
              height: 50,
            ),
            _login()
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 140),
            child: Text(
              "WELCOME",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _login() {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(),
                  ),
                  labelText: 'Email'
              ),
              validator: (text) {
                if (text!.isEmpty) {
                  return 'Enter email.';
                }
                final regex = RegExp('[^@]+@[^\.]+\..+');
                if (!regex.hasMatch(text)) {
                  return 'Enter a valid email';
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _passController,
              obscureText: true,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(),
                  ),
                  labelText: 'Password'
              ),
              validator: (text) => text!.isEmpty ? 'Enter the Password\'s password.' : null,
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: _validate,
              child: Text(
                'LOGIN',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                backgroundColor: Colors.amber,
                padding:EdgeInsets.only(left: 50, right: 50, top: 15, bottom: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text(
                "Lupa Password?",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.indigo
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                "Buat Akun!",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.indigo
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
