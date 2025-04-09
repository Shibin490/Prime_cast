// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:prime_cast/providers/login_user_provider.dart';
import 'package:prime_cast/utils/validators.dart';
import 'package:prime_cast/views/forget_password.dart';
import 'package:prime_cast/widgets/text.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    final userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      body: Container(
        width: 100.w,
        height: 100.h,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 6, 5, 35),
              Color.fromARGB(255, 3, 4, 45),
              Color.fromARGB(255, 6, 5, 35),
              Color.fromARGB(255, 6, 5, 35),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: [0.0, 0.3, 0.7, 1.0],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.h),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'PRIMECAST',
                      style: TextStyle(
                        color: Color.fromARGB(255, 51, 159, 248),
                        fontSize: 8.w,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.h),
                  AuthHeader(
                    title: 'Sign In',
                    subtitle: 'Welcome back',
                    description: 'Log in to continue your journey!',
                  ),
                  SizedBox(height: 5.h),
                  CustomTextField(
                    controller: nameController,
                    icon: Icons.person,
                    labelText: 'Name',
                    hintText: 'Enter your name',
                    validator: Validators.validateName,
                  ),
                  SizedBox(height: 2.h),
                  CustomTextField(
                    controller: emailController,
                    icon: Icons.email,
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    validator: Validators.validateEmail,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPasswordPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 13.sp,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                  CustomButton(
                    text: 'Sign In',
                    isLoading: userProvider.isLoading,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        userProvider.login(
                          nameController.text,
                          emailController.text,
                          () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Login Successful!'),
                                backgroundColor: Color.fromARGB(255, 4, 4, 77),
                              ),
                            );
                            // Navigate to next page
                          },
                        );
                      }
                    },
                  ),
                  SizedBox(height: 2.h),
                  Center(
                    child: Text(
                      '────────────  or  ────────────',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  CustomButton(
                    text: 'Sign in with Google',
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/transparent-google-logo-google-logo-blue-circle-with-g-1710875323999.webp',
                      width: 24,
                      height: 24,
                    ),
                    backgroundColor: Colors.white,
                    textColor: Colors.black,
                    fontSize: 13.sp,
                    borderRadius: 30,
                    width: 50.w,
                    height: 5.h,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        print("sign up clicked");
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Text("dont have account? sign up!!"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
