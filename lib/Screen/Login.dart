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
  final _formKey = GlobalKey<FormState>();
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
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Tên đăng nhập',
                    style: TextstyleHelper.nunito(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Email hoặc số điện thoại',
                      hintStyle: TextstyleHelper.nunito(
                          fontSize: 11, color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Mật khẩu',
                    style: TextstyleHelper.nunito(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Mật khẩu',
                      hintStyle: TextstyleHelper.nunito(
                          fontSize: 11, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // Thay CheckboxListTile bằng Row với Checkbox
                  children: [
                    Checkbox(
                      value: rememberMe,
                      onChanged: (value) {
                        setState(() {
                          rememberMe = value ?? false;
                        });
                      },
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'Ghi nhớ tài khoản',
                      style: TextstyleHelper.nunito(
                          fontSize: 11, color: Colors.black),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Quên mật khẩu?',
                    style: TextstyleHelper.nunito(
                            fontSize: 11, color: Colors.black)
                        .copyWith(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: 35,
            child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0), // Độ bo góc
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Đăng nhập',
                  style: TextstyleHelper.nunito(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                  child: Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                height: 1,
                color: Colors.white,
              )),
              Text(
                'Hoặc',
                style: TextstyleHelper.nunito(
                    fontSize: 11,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                  child: Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                height: 1,
                color: Colors.white,
              )),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 35,
            child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0), // Độ bo góc
                    ),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('lib/Assets/IMGIcon/search.png',
                        width: 20, height: 20),
                    const SizedBox(width: 10),
                    Text('Đăng nhập bằng Google',
                        style: TextstyleHelper.nunito(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ],
                )),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {},
            child: Text(
              'Bạn chưa có tài khoản? Đăng ký ngay',
              style: TextstyleHelper.nunito(
                  fontSize: 11, color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
