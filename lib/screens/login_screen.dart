import 'package:bromindo_project/widgets/login/login_footer.dart';
import 'package:bromindo_project/widgets/login/login_form.dart';
import 'package:bromindo_project/widgets/login/login_header.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            children: [
              LoginHeader(),
              LoginForm(
                  etRole: role, etEmail: email, etPass: pass, formkey: formkey),
              LoginFooter(
                onPressedLogin: () {},
              )
            ],
          ),
        ),
      )),
    );
  }
}
