import 'package:flutter/material.dart';
import 'package:unilink/views/main_menu.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _passController = TextEditingController();
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool loggedIn = false;

  void _validate() {
    final form = _formKey.currentState;
    if (!form!.validate()) {
      return;
    }

    final password = _passController.text;
    final email = _emailController.text;

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => MainMenu(password: password, email: email),
      ),
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
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
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
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(),
                  ),
                  labelText: 'Email'),
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
              height: 24,
            ),
            TextFormField(
              controller: _passController,
              obscureText: true,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(),
                  ),
                  labelText: 'Password'),
              validator: (text) =>
                  text!.isEmpty ? 'Enter the Password\'s password.' : null,
            ),
            SizedBox(height: 72),
            ElevatedButton(
              onPressed: _validate,
              child: Text(
                'LOGIN',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                backgroundColor: Colors.amber,
                padding: EdgeInsets.fromLTRB(56, 14, 56, 14),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Text(
                "Lupa Password?",
                style: TextStyle(
                    decoration: TextDecoration.underline, color: Colors.indigo),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                "Buat Akun!",
                style: TextStyle(
                    decoration: TextDecoration.underline, color: Colors.indigo),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
