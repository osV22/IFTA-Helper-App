import 'package:alpha_build/controllers/auth_controller.dart';
import 'package:alpha_build/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white70,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: 'Email'),
              controller: emailController,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Password'),
              controller: passwordController,
            ),
            RaisedButton(
              child: Text('Login'),
              onPressed: () {
                controller.login(emailController.text, passwordController.text);
              },
            ),
            FlatButton(
              child: Text('Sign Up'),
              onPressed: () => Get.to(SignUpPage()),
            ),
          ],
        ),
      ),
    );
  }
}
