import 'package:flutter/material.dart';
import 'package:login_app/components/custom_form_text_form_field.dart';
import 'package:login_app/custom_validate.dart';

class CustomForm extends StatelessWidget {
  final formkey = GlobalKey<FormState>(); // formkey GlobalKey - form 상태 관리
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: email,
            text: "Email",
            validator: (value) {
              print("value : ${value}");

              if (value!.isEmpty) {
                return "이메일은 공백이 있을 수 없습니다";
              } else {
                return null; // 정상일때 null을 리턴한다.
              }
            },
          ),
          CustomTextFormField(
            controller: password,
            text: "Password",
            obscureText: true,
            validator: validatePassword()
          ),
          TextButton(
            onPressed: () {
              //print("email : ${email.text}");
              if (formkey.currentState!.validate()) {
                Navigator.pushNamed(context, "/home");
              }
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}