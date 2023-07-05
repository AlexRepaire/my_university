import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_university/pages/register/widgets/register_widget.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: buildAppBar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildThirdPartyLogin(context),
                Center(child: reusableText("Or use your email account login")),
                Container(
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  margin: EdgeInsets.only(top: 66.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusableText("Email"),
                      SizedBox(height: 5.h),
                      buildTextField(
                          "Enter your email adress", "email", "user"),
                      reusableText("Password"),
                      SizedBox(height: 5.h),
                      buildTextField("Enter your password", "password", "lock"),
                      forgotPassord(),
                      buildRegisterAdnRegButton("Log in", "login"),
                      buildRegisterAdnRegButton("Register", "register")
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
