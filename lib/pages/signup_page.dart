import 'package:flutter/material.dart';
import 'package:task2/widgets/password_field.dart';
import 'package:task2/widgets/social_login_widget.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 226, 226, 235),
          ),
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_left_outlined),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(32, 8, 32, 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "Sign up now",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    "Please fill the details and create account",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Full Name",
                      filled: true,
                      fillColor: Color.fromARGB(255, 226, 226, 235),
                      hoverColor: Color.fromARGB(255, 226, 226, 235),
                      focusColor: Color.fromARGB(255, 226, 226, 235),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "name@domain.com",
                      filled: true,
                      fillColor: Color.fromARGB(255, 226, 226, 235),
                      hoverColor: Color.fromARGB(255, 226, 226, 235),
                      focusColor: Color.fromARGB(255, 226, 226, 235),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: PasswordField(),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Password must be 8 character",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                fixedSize: Size(double.maxFinite, 40),
                backgroundColor: Color(0xFF0D6EFD),
                foregroundColor: Colors.white,
              ),
              child: Text("Sign Up"),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          color: Color(0xFF0D6EFD),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Or connect",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SocialLoginWidget(),
          ],
        ),
      ),
    );
  }
}
