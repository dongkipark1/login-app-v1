
import 'package:flutter/material.dart';
import 'package:login_app/components/custom_form.dart';
import 'package:login_app/components/custom_form_text_form_field.dart';

import 'package:login_app/components/logo.dart';
import 'package:login_app/main.dart';
import 'package:login_app/size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: xlargeGap),
          Logo("Login"),
          CustomForm(),
        ],
      ),
    );
  }
}

