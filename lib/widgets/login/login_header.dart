import 'package:bromindo_project/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 20),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/user_icon.png'),
          backgroundColor: Colors.white,
          radius: 100,
        ),
        Text(
          'Login',
          style: TextStyle(
              fontFamily: 'Outfit', fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Please login to your account',
          style: TextStyle(
              fontFamily: 'Outfit',
              fontSize: 18,
              fontWeight: FontWeight.normal),
        ),
        SizedBox(
          height: 35,
        ),
        //
      ],
    );
  }
}
