import 'package:bromindo_project/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SignUpFooter extends StatelessWidget {
  const SignUpFooter({Key? key, required this.onPressedSignUp})
      : super(key: key);

  final VoidCallback onPressedSignUp;

  void _showSnackBar(BuildContext context) {
    final snackBar = SnackBar(content: Text('Account successfully created!'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        ElevatedButton(
          onPressed: () {
            onPressedSignUp();
            _showSnackBar(context); // Show the SnackBar
          },
          child: const Text("Sign Up"),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
            padding: EdgeInsets.symmetric(
                horizontal: 50, vertical: 15), // Padding tombol
          ),
        ),
        SizedBox(height: 10),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
          child: Text("Already have an account? Login"),
        ),
      ],
    );
  }
}
