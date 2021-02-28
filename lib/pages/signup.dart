import 'package:alpha_build/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends GetWidget<AuthController> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white70,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('SIGN UP PAGE'),
            TextFormField(
              decoration: InputDecoration(hintText: 'Email'),
              // GET X HERE
              controller: emailController,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Password'),
              // GET X HERE
              controller: passwordController,
            ),
            RaisedButton(
              child: Text('Sign Up'),
              onPressed: () {
                // GET X HERE
                controller.createUser(
                    emailController.text, passwordController.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
