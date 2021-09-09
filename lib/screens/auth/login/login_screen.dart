import 'package:flutter/material.dart';
import 'package:pos_desktop/screens/widgets/custom_gradient_button.dart';
import 'package:pos_desktop/screens/widgets/custom_textformfield.dart';
import 'package:pos_desktop/screens/widgets/password_textformfield.dart';
import 'package:pos_desktop/utilities/utilities.dart';
import 'package:pos_desktop/utilities/window_size.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String routeName = '/LoginScreen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  Future<void> _init() async =>
      // ignore: unnecessary_await_in_return
      await CustomWindowSize.setFixedWindowSize(width: 900, height: 600);
  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          _signinSide(),
          _welcomeSide(),
        ],
      ),
    );
  }

  SizedBox _welcomeSide() {
    return SizedBox(
      width: 450,
      child: Padding(
        padding: EdgeInsets.all(Utilities.padding * 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Welcome Back!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
            SizedBox(height: 16),
            Text(
              'We are very happy to see you here, We are be happy with helping you to manage your buisness. If you are new here you can also register your shop.',
              textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 0.2,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _signinSide() {
    return SizedBox(
      width: 450,
      child: Padding(
        padding: EdgeInsets.all(Utilities.padding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hello!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            const Text(
              'Sign in to your account',
              style: TextStyle(color: Colors.blueGrey),
            ),
            const SizedBox(height: 30),
            CustomTextFormField(title: 'Email', controller: _email),
            PasswordTextFormField(controller: _password),
            CustomGradientButton(
              text: '  SIGN IN  ',
              onTap: () {
                // TODO: Sign in
              },
            ),
            TextButton(
              onPressed: () {
                // TODO: Register new shop
              },
              child: const Text('Register Shop'),
            )
          ],
        ),
      ),
    );
  }
}
