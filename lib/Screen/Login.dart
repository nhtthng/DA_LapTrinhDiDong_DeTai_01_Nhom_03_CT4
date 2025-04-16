import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:da_laptrinhdidongdetai_01/Assets/TextStyle.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Đăng nhập',
          style: TextstyleHelper.nunito(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              'lib/Assets/IMG/elearning.png',
              width: 150,
              height: 150,
            ),
          ),
          const SizedBox(height: 20),
          Form(
            child: Column(
              children: [
                Container(
                  child: Text(
                    'Tên đăng nhập',
                    style: TextstyleHelper.nunito(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Email hoặc số điện thoại',
                    hintStyle: TextstyleHelper.nunito(
                        fontSize: 11, color: Colors.black),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  child: Text(
                    'Mật khẩu',
                    style: TextstyleHelper.nunito(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Mật khẩu',
                    hintStyle: TextstyleHelper.nunito(
                        fontSize: 11, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row( // Thay CheckboxListTile bằng Row với Checkbox
                  children: [
                    Checkbox(
                      value: rememberMe,
                      onChanged: (value) {
                        setState(() {
                          rememberMe = value ?? false;
                        });
                      },
                    ),
                  ],
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Quên mật khẩu?',
                  style:
                      TextstyleHelper.nunito(fontSize: 11, color: Colors.black)
                          .copyWith(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
