import 'package:flutter/material.dart';
import 'package:impervius/initial_pages/sign_in_page.dart';

import '../main_pages/home_screen.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static String id = 'sign_up';

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();

    String? validateEmail(String? value) {
      if (value == null || value.isEmpty || !value.contains('@')) {
        return 'Please enter a valid email address';
      }
      return null;
    }

    String? validateName(String? value) {
      if (value == null || value.isEmpty || value.contains('@')) {
        return 'Please enter your valid name';
      }
      return null;
    }

    String? validatePassword(String? value) {
      if (value == null || value.isEmpty) {
        return 'Please enter your password';
      }
      return null;
    }

    String? validateConfirmPassword(String? value) {
      if (value == null || value.isEmpty) {
        return 'Please enter your password';
      } else if (value != passwordController.text) {
        return 'Password must be the same as entered above';
      }
      return null;
    }

    void submitForm() {
      if (formKey.currentState!.validate()) {
        Navigator.pushNamed(context, HomeScreen.id);
        emailController.clear();
        passwordController.clear();
        nameController.clear();
        confirmPasswordController.clear();
      }
    }

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Form(
              key: formKey,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 100,
                      child: Image.asset('assets/images/logo_impervius.png'),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Sign Up',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 3, bottom: 3),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextFormField(
                        controller: nameController,
                        decoration: const InputDecoration(
                            labelText: 'Full Name', border: InputBorder.none),
                        validator: validateName,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 3, bottom: 3),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                            labelText: 'Email', border: InputBorder.none),
                        validator: validateEmail,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 3, bottom: 3),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextFormField(
                        controller: passwordController,
                        decoration: const InputDecoration(
                            labelText: 'Password', border: InputBorder.none),
                        validator: validatePassword,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 20, top: 3, bottom: 3),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextFormField(
                        controller: confirmPasswordController,
                        decoration: const InputDecoration(
                            labelText: 'Confirm Password',
                            border: InputBorder.none),
                        validator: validateConfirmPassword,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextButton(
                      onPressed: () {
                        if (nameController.text.trim().isEmpty ||
                            emailController.text.trim().isEmpty ||
                            passwordController.text.trim().isEmpty ||
                            confirmPasswordController.text.trim().isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content:
                                  Text('Please fill in all the fields above'),
                              duration: Duration(seconds: 2),
                            ),
                          );
                        } else {
                          submitForm();
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color(0xff5390cd),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account? ",
                        ),
                        GestureDetector(
                          child: const Text(
                            'Sign In Here!',
                            style: TextStyle(color: Colors.blue),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, SignInPage.id);
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
