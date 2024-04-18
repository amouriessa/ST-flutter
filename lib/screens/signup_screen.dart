import 'package:bromindo_project/screens/login_screen.dart';
import 'package:bromindo_project/widgets/signuppage/signup_footer.dart';
import 'package:bromindo_project/widgets/signuppage/signup_form.dart';
import 'package:bromindo_project/widgets/signuppage/signup_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var name = TextEditingController();
    var role = TextEditingController();
    var email = TextEditingController();
    var pass = TextEditingController();
    var formkey = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SignUpHeader(),
              SignUpForm(
                  etRole: role,
                  etEmail: email,
                  etPass: pass,
                  formkey: formkey,
                  etNama: name),
              SignUpFooter(onPressedSignUp: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              })
            ],
          ),
        ),
      )),
    );
  }
}
