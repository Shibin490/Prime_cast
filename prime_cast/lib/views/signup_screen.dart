// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:prime_cast/widgets/custom_button.dart';
import 'package:prime_cast/widgets/text.dart';
import 'package:sizer/sizer.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController namecontroller = TextEditingController();
    final TextEditingController emailcontroller = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.transparent,
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
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 4.h),
              Text(
                'PRIMECAST',
                style: TextStyle(
                  color: Color.fromARGB(255, 51, 159, 248),
                  fontSize: 8.w,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.0,
                ),
              ),
              SizedBox(height: 5.h),
              const AuthHeader(
                title: 'Create Account',
                subtitle: 'Welcome to PrimeCast',
                description: 'Join us and start your journey with PrimeCast.',
              ),
              SizedBox(height: 4.h),
              CustomTextField(
                controller: namecontroller,
                hintText: 'Enter your name',
                labelText: 'Name',
                icon: Icons.person,
              ),
              SizedBox(height: 2.h),
              CustomTextField(
                controller: emailcontroller,
                hintText: 'Enter your email',
                labelText: 'Email',
                icon: Icons.mail,
              ),
              SizedBox(height: 3.h),
              CustomButton(
                text: 'Sign Up',
                onPressed: () {
                  // Sign up logic here
                },
              ),
              SizedBox(height: 1.h),
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
                text: 'Sign up with Google',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.white, fontSize: 13.sp),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Color.fromARGB(255, 51, 159, 248),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
            ],
          ),
        ),
      ),
    );
  }
}
