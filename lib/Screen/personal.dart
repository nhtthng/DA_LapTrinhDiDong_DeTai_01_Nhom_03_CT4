import 'package:flutter/material.dart';
import 'package:da_laptrinhdidongdetai_01/Assets/TextStyle.dart';

class Personal extends StatelessWidget {
  const Personal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Thông tin cá nhân',
          style: TextstyleHelper.nunito(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(10),
              // trang trí
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26, // Màu bóng mờ
                    blurRadius: 10.0, // Độ mờ
                    spreadRadius: 5.0, // Độ lan tỏa
                    offset: Offset(0, 4), // Vị trí bóng
                  ),
                ],
              ),
              child: Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                          'lib/Assets/IMG/New_Courage.webp'), // Đường dẫn đến ảnh đại diện
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'UserName',
                          style: TextstyleHelper.nunito(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(Icons.email,
                                color: Colors.black.withOpacity(0.5)),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'userEmail',
                              style: TextstyleHelper.nunito(
                                  fontSize: 10,
                                  color: Colors.black.withOpacity(0.5)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.phone,
                                color: Colors.black.withOpacity(0.5)),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'userPhone',
                              style: TextstyleHelper.nunito(
                                  fontSize: 10,
                                  color: Colors.black.withOpacity(0.5)),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // sửa hồ sơ và đổi mật khẩu
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue[100],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26, // Màu bóng mờ
                            blurRadius: 10.0, // Độ mờ
                            spreadRadius: 1.0, // Độ lan tỏa
                            offset: Offset(0, 1), // Vị trí bóng
                          ),
                        ],
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            const IconTheme(
                              data: IconThemeData(
                                size: 24, // Kích thước biểu tượng
                                color: Colors.black, // Màu sắc biểu tượng
                              ),
                              child: Icon(Icons.edit_document),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Sửa hồ sơ',
                              style: TextstyleHelper.nunito(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26, // Màu bóng mờ
                            blurRadius: 10.0, // Độ mờ
                            spreadRadius: 1.0, // Độ lan tỏa
                            offset: Offset(0, 1), // Vị trí bóng
                          ),
                        ],
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            const IconTheme(
                              data: IconThemeData(
                                size: 24, // Kích thước biểu tượng
                                color: Colors.black, // Màu sắc biểu tượng
                              ),
                              child: Icon(Icons.lock_reset),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Đổi mật khẩu',
                              style: TextstyleHelper.nunito(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    'Additional Information',
                    style: TextstyleHelper.nunito(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
