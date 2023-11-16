import 'package:flutter/material.dart';
import 'package:todoy/widgets/signin_signup/button_login_logout.dart';
import 'package:todoy/widgets/signin_signup/button_reset_password.dart';
import 'package:todoy/widgets/signin_signup/button_signup.dart';
import 'package:todoy/widgets/signin_signup/text_field.dart';
import 'package:todoy/widgets/signin_signup/text_welcome.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers for the email and password
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // login button function
  void logInUser() {}

  // reset password button function
  void resetPassword() {}

  // signup button function
  void signUpPageButton() {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 70),

                Image.asset(
                  'assets/icons8-todo-list-500.png',
                  width: 200,
                ),

                const WelcomeText(),

                const SizedBox(height: 20),

                SigninSignUpTextField(
                  controller: emailController,
                  labelText: 'Email',
                  obscureText: false,
                  prefixIcon: const Icon(Icons.email),
                ),

                const SizedBox(height: 5),

                SigninSignUpTextField(
                  controller: passwordController,
                  labelText: 'Password',
                  obscureText: true,
                  prefixIcon: const Icon(Icons.password),
                ),

                ResetPasswordButton(
                  onTap: resetPassword,
                ),

                LoginLogoutButton(
                  onTap: logInUser,
                  buttonName: 'Login',
                ),

                const SizedBox(height: 30),

                // Todo: Add a row with google and facebook login buttons
                const Text('Or login with:',
                    style: TextStyle(fontSize: 14, color: Colors.grey)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons8-facebook-500.png',
                      width: 80,
                    ),
                    Image.asset(
                      'assets/icons8-google-500.png',
                      width: 80,
                    ),
                  ],
                ),

                // Todo: Add a signup button at the bottom of screan between two divider lines
                SignUpButton(
                  onTap: signUpPageButton,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
