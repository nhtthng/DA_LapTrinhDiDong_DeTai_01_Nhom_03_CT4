import 'package:flutter/material.dart';
import 'package:da_laptrinhdidongdetai_01/Assets/TextStyle.dart';

class UpdateInformation extends StatefulWidget {
  const UpdateInformation({super.key});

  @override
  State<UpdateInformation> createState() => _UpdateInformationState();
}

class _UpdateInformationState extends State<UpdateInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cập nhật hồ sơ',
          style: TextstyleHelper.nunito(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage(
                      'lib/Assets/IMG/New_Courage.webp',
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(3.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        iconSize: 16.0,
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.blue[900]!,
                          ),
                          shape: MaterialStateProperty.all<CircleBorder>(
                            CircleBorder(),
                          ),
                        ),
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 16.0,
                        ),
                        onPressed: () {
                          // Handle image change
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                'Chạm vào icon để thay đổi ảnh đại diện',
                style: TextstyleHelper.nunito(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('Thông tin cá nhân',
                      style: TextstyleHelper.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  const SizedBox(height: 20),
                  Form(
                    child: Column(
                      children: [
                        Text(
                          'Tên hiển thị',
                          style: TextstyleHelper.nunito(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.5)),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Thay đổi giá trị này để điều chỉnh độ cong
                              borderSide: const BorderSide(
                                  color: Colors.grey), // Màu viền
                            ),
                            hintText: 'Tên hiển thị',
                            hintStyle: TextstyleHelper.nunito(
                              fontSize: 11,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Số điện thoại',
                          style: TextstyleHelper.nunito(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.5)),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.phone),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Thay đổi giá trị này để điều chỉnh độ cong
                              borderSide: const BorderSide(
                                  color: Colors.grey), // Màu viền
                            ),
                            hintText: 'Nhập số điện thoại',
                            hintStyle: TextstyleHelper.nunito(
                              fontSize: 11,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Ngày sinh',
                          style: TextstyleHelper.nunito(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.5)),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.calendar_today),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Thay đổi giá trị này để điều chỉnh độ cong
                              borderSide: const BorderSide(
                                  color: Colors.grey), // Màu viền
                            ),
                            hintText: 'Nhập ngày sinh',
                            hintStyle: TextstyleHelper.nunito(
                              fontSize: 11,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
