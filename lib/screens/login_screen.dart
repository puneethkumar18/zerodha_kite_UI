// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zerodha_kite_app/provider/user_provider.dart';
import 'package:zerodha_kite_app/services/auth_methods.dart';
import 'package:zerodha_kite_app/utils/show_snakbar.dart';
import 'package:zerodha_kite_app/widgets/custom_text_button.dart';
import 'package:zerodha_kite_app/widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login-screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  final FirebaseAuthMethods authMethods = FirebaseAuthMethods();
  

  Future<void> login() async {
    try {
       await authMethods.signUpUser(
        email: _emailController.text,
        password: _passwordController.text,
        context: context,
      );
      
    } catch (e) {
      showSnackBar(message: e.toString(), context: context);
    }
  }
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Login",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            CustomTextField(
              controller: _emailController,
              text: "Email",
              icon: Icons.person,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
              controller: _passwordController,
              text: "Password",
              icon: Icons.remove_red_eye_outlined,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextButton(
              text: "LOGIN",
              onTap: login,
            ),
            const SizedBox(
              height: 26,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forget user ID or password?",
                  style: TextStyle(color: Colors.blueAccent),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
