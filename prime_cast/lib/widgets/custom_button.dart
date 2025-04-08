// ignore_for_file: sort_child_properties_last, use_key_in_widget_constructors, deprecated_member_use, use_super_parameters
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// Netflix color constants
// const netflixRed = Color(0xFFE50914);
// const netflixDarkRed = Color(0xFF8B0000);
// const netflixBlack = Color(0xFF000000);
// const netflixDarkGrey = Color(0xFF221F1F);

// // Login page widgets =================

// class SimpleCustomButton extends StatelessWidget {
//   final String text;
//   final VoidCallback onPressed;

//   const SimpleCustomButton({required this.text, required this.onPressed});
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: onPressed,
//       child: Text(text),
//       style: ElevatedButton.styleFrom(
//         padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//         backgroundColor: netflixRed,
//       ),
//     );
//   }
// }

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final IconData icon;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.labelText,
    required this.icon,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.blueAccent),
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.white70),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white38),
        filled: true,
        fillColor: Colors.white.withOpacity(0.1),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2.w),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2.w),
          borderSide: BorderSide(color: Colors.white),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2.w),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2.w),
          borderSide: const BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 40.w,
        height: 5.h,
        child: ElevatedButton(
          onPressed: isLoading ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            foregroundColor: Colors.white,
            textStyle: TextStyle(
              fontSize: 60.sp,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.3,
            ),
            disabledBackgroundColor: Colors.blueAccent.withOpacity(0.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 2,
            shadowColor: Colors.blueAccent.withOpacity(0.5),
          ),

          child: Center(
            child:
                isLoading
                    ? SizedBox(
                      width: 3.w,
                      height: 3.w,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2,
                      ),
                    )
                    : Text(
                      text,
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.3,
                      ),
                    ),
          ),
        ),
      ),
    );
  }
}

// //  sign in button =====================================

// class GoogleSignInButton extends StatelessWidget {
//   final VoidCallback onTap;

//   const GoogleSignInButton({Key? key, required this.onTap}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: double.infinity,
//         padding: EdgeInsets.symmetric(vertical: 1.5.h),
//         decoration: BoxDecoration(
//           color: const Color.fromARGB(255, 5, 14, 153),
//           borderRadius: BorderRadius.circular(12),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black26,
//               blurRadius: 3,
//               offset: Offset(0, 2),
//             ),
//           ],
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Image.asset(
//             //   AppImages.googleLogo, // ✅ use your image path
//             //   height: 3.h,
//             // ),
//             SizedBox(width: 3.w),
//             Text(
//               'Sign in with Google',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 13.sp,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
