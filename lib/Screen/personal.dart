import 'package:flutter/material.dart';
import 'package:da_laptrinhdidongdetai_01/Assets/TextStyle.dart';

class Personal extends StatelessWidget {
  const Personal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thông tin cá nhân'),
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
                boxShadow: [
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
                  Expanded(
                      flex: 1,
                      child: Image.asset(
                    'lib/Assets/IMG/New_Courage.webp',
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 3,
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('UserName',
                          style: TextstyleHelper.nunito(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
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
                          Text('userEmail', style: TextstyleHelper.nunito(
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
                          Text('userPhone', style: TextstyleHelper.nunito(
                              fontSize: 10,
                              color: Colors.black.withOpacity(0.5)),
                          ),
                        ],
                      )
                    ],
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
