import 'package:fitness_app/widgets/buttons.dart';
import 'package:fitness_app/widgets/images_container.dart';
import 'package:fitness_app/widgets/shadow.dart';
import 'package:fitness_app/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();

  var _isLogin = true;
  var _enteredEmail = '';
  var _enteredPassword = '';
  var _enteredUsername = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 30, bottom: 1, left: 20, right: 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      // Image
                      _isLogin
                          ? ImageContainer(
                              height: 220,
                              width: MediaQuery.of(context).size.width * 0.9,
                              imagePath:
                                  'assets/images_initpages/andrea-piacquadio.jpg',
                              shadow: bigPicShadow,
                            )
                          : ImageContainer(
                              height: 200,
                              width: MediaQuery.of(context).size.width * 0.9,
                              imagePath:
                                  'assets/images_initpages/karolina-grabowska.jpg',
                              shadow: bigPicShadow,
                            ),
                      const SizedBox(height: 30),
                      // Fancy text
                      _isLogin
                          ? const FancyText(text: 'Let\'s get moving 🏃')
                          : const FancyText(text: 'Get fit with us 💪'),

                      const SizedBox(height: 30),

                      // Form
                      _isLogin
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                children: [
                                  // email textfield
                                  TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    autocorrect: false,
                                    textCapitalization: TextCapitalization.none,
                                    decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 15),
                                      label: const Text('Email'),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          value.trim().isEmpty ||
                                          !value.contains('@')) {
                                        return 'Please enter a valid email address.';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      _enteredEmail = value!;
                                    },
                                  ),

                                  const SizedBox(height: 10),

                                  // password textfield
                                  TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    autocorrect: false,
                                    obscureText: true,
                                    textCapitalization: TextCapitalization.none,
                                    decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 15),
                                      label: const Text('Password'),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          value.trim().length <= 6) {
                                        return 'Password must be at least 6 characters long.';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      _enteredPassword = value!;
                                    },
                                  ),

                                  const SizedBox(height: 5),

                                  // reset password
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                      height: 30,
                                      child: TextButton(
                                        style: ButtonStyle(
                                          padding: MaterialStateProperty.all(
                                            const EdgeInsets.symmetric(
                                              horizontal: 20,
                                            ),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          'reset password?',
                                          style: GoogleFonts.lato(
                                            fontSize: 12,
                                            color: Colors.grey[600],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 5),

                                  // sign in button
                                  Outlinedbtn(
                                    onPressed: () {
                                      _formKey.currentState!.validate();
                                    },
                                    text: 'Sign In',
                                  ),

                                  const SizedBox(height: 20),

                                  // sign in with:
                                  Text(
                                    'or sign in with:',
                                    style: GoogleFonts.lato(
                                      fontSize: 16,
                                    ),
                                  ),

                                  const SizedBox(height: 15),

                                  // google and facebook buttons
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      //google
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          fixedSize: const Size(80, 50),
                                        ),
                                        child: Image.asset(
                                          'assets/images_initpages/icons8-google-48.png',
                                        ),
                                      ),

                                      const SizedBox(width: 20),

                                      // facebook
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          fixedSize: const Size(80, 50),
                                        ),
                                        child: Image.asset(
                                          'assets/images_initpages/icons8-facebook-48.png',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          : Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                children: [
                                  // email textfield
                                  TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    autocorrect: false,
                                    textCapitalization: TextCapitalization.none,
                                    decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 15),
                                      label: const Text('Email'),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          value.trim().isEmpty ||
                                          !value.contains('@')) {
                                        return 'Please enter a valid email address.';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      _enteredEmail = value!;
                                    },
                                  ),

                                  const SizedBox(height: 10),

                                  // username textfield
                                  TextFormField(
                                    autocorrect: false,
                                    enableSuggestions: true,
                                    decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 15),
                                      label: const Text('Username'),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty ||
                                          value.trim().length < 4) {
                                        return 'Please enter at least 4 characters.';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      _enteredUsername = value!;
                                    },
                                  ),

                                  const SizedBox(height: 10),

                                  // password textfield
                                  TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    autocorrect: false,
                                    obscureText: true,
                                    textCapitalization: TextCapitalization.none,
                                    decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 15),
                                      label: const Text('Password'),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          value.trim().length <= 6) {
                                        return 'Password must be at least 6 characters long.';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      _enteredPassword = value!;
                                    },
                                  ),

                                  const SizedBox(height: 10),

                                  // sign up button
                                  Outlinedbtn(
                                    onPressed: () {
                                      _formKey.currentState!.validate();
                                    },
                                    text: 'Sign Up',
                                  ),

                                  const SizedBox(height: 20),

                                  // sign up with:
                                  Text(
                                    'or sign up with:',
                                    style: GoogleFonts.lato(
                                      fontSize: 16,
                                    ),
                                  ),

                                  const SizedBox(height: 15),

                                  // google and facebook buttons
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      //google
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          fixedSize: const Size(80, 50),
                                        ),
                                        child: Image.asset(
                                          'assets/images_initpages/icons8-google-48.png',
                                        ),
                                      ),

                                      const SizedBox(width: 20),

                                      // facebook
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          fixedSize: const Size(80, 50),
                                        ),
                                        child: Image.asset(
                                          'assets/images_initpages/icons8-facebook-48.png',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                      Visibility(
                        visible: MediaQuery.of(context).viewInsets.bottom == 0,
                        child: Expanded(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                bottom: 0,
                                top: 20,
                                right: 30,
                                left: 30,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                      color: Colors.grey[300],
                                      thickness: 1,
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _isLogin = !_isLogin;
                                        _formKey.currentState!.reset();
                                      });
                                    },
                                    child: Text(
                                      _isLogin ? 'sign up' : 'sign in',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: Divider(
                                      color: Colors.grey[300],
                                      thickness: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
