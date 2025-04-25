import 'package:flutter/material.dart';
import 'package:da_laptrinhdidongdetai_01/Assets/TextStyle.dart';

class Personal extends StatelessWidget {
  const Personal({super.key});
  final int total = 10;
  final int correct = 4;
  final int wrong = 3;
  final int skipped = 3;
  @override
  Widget build(BuildContext context) {
    double correctPercent = correct / total;
    double wrongPercent = wrong / total;
    double skippedPercent = skipped / total;
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
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          AssetImage('lib/Assets/IMG/New_Courage.webp'),
                    ),
                  ),
                  const SizedBox(width: 10),
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
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(Icons.email,
                                color: Colors.black.withOpacity(0.5)),
                            const SizedBox(width: 5),
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
                            const SizedBox(width: 5),
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
            const SizedBox(height: 10),
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
                            color: Colors.black26,
                            blurRadius: 10.0,
                            spreadRadius: 1.0,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
                                size: 24,
                                color: Colors.black,
                              ),
                              child: Icon(Icons.edit_document),
                            ),
                            const SizedBox(width: 5),
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
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10.0,
                            spreadRadius: 1.0,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
                                size: 24,
                                color: Colors.black,
                              ),
                              child: Icon(Icons.lock_reset),
                            ),
                            const SizedBox(width: 5),
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
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    spreadRadius: 1.0,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const IconTheme(
                        data: IconThemeData(
                          size: 24,
                          color: Colors.black,
                        ),
                        child: Icon(Icons.show_chart_outlined),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Thống kê học tập',
                        style: TextstyleHelper.nunito(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 1,
                        color: Colors.black.withOpacity(0.5),
                      ))
                    ],
                  ),
                  const SizedBox(height: 20),
                  GridView.count(
                    shrinkWrap: true, // Đặt shrinkWrap thành true
                    physics:
                        const NeverScrollableScrollPhysics(), // Không cho phép cuộn
                    primary: false,
                    // padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const IconTheme(
                              data: IconThemeData(
                                size: 24,
                                color: Colors.blue,
                              ),
                              child: Icon(Icons.edit_document),
                            ),
                            const SizedBox(height: 3),
                            Text('0',
                                style: TextstyleHelper.nunito(
                                  fontSize: 20,
                                  color: Colors.black,
                                )),
                            const SizedBox(height: 3),
                            Text('Tổng số câu hỏi',
                                style: TextstyleHelper.nunito(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ))
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const IconTheme(
                              data: IconThemeData(
                                size: 24,
                                color: Colors.orangeAccent,
                              ),
                              child: Icon(Icons.watch_later_outlined),
                            ),
                            const SizedBox(height: 3),
                            Text('0 giờ 0 phút',
                                style: TextstyleHelper.nunito(
                                  fontSize: 20,
                                  color: Colors.black,
                                )),
                            const SizedBox(height: 3),
                            Text('Tổng thời gian',
                                style: TextstyleHelper.nunito(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ))
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const IconTheme(
                              data: IconThemeData(
                                size: 24,
                                color: Colors.green,
                              ),
                              child:
                                  Icon(Icons.playlist_add_check_circle_sharp),
                            ),
                            const SizedBox(height: 3),
                            Text('0.0%',
                                style: TextstyleHelper.nunito(
                                  fontSize: 20,
                                  color: Colors.black,
                                )),
                            const SizedBox(height: 3),
                            Text('Độ chính xác',
                                style: TextstyleHelper.nunito(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ))
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconTheme(
                              data: IconThemeData(
                                size: 24,
                                color: Colors.red[200],
                              ),
                              child: Icon(Icons.star),
                            ),
                            const SizedBox(height: 3),
                            Text('0',
                                style: TextstyleHelper.nunito(
                                  fontSize: 20,
                                  color: Colors.black,
                                )),
                            const SizedBox(height: 3),
                            Text('Tổng Điểm',
                                style: TextstyleHelper.nunito(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      IconTheme(
                        data: const IconThemeData(
                          size: 24,
                          color: Colors.black,
                        ),
                        child: const Icon(Icons.pie_chart_rounded),
                      ),
                      const SizedBox(width: 10),
                      Text('Phân tích câu trả lời',
                          style: TextstyleHelper.nunito(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // progress bar
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Row(
                      children: [
                        Expanded(
                          flex: (correctPercent * 100).round(),
                          child: Container(
                            height: 16,
                            color: Colors.greenAccent.withOpacity(0.6),
                          ),
                        ),
                        Expanded(
                          flex: (wrongPercent * 100).round(),
                          child: Container(
                            height: 16,
                            color: Colors.redAccent.withOpacity(0.6),
                          ),
                        ),
                        Expanded(
                          flex: (skippedPercent * 100).round(),
                          child: Container(
                            height: 16,
                            color: Colors.amberAccent.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // info text
                  const SizedBox(height: 10),
                  
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              decoration:  BoxDecoration(shape: BoxShape.circle, color: Colors.greenAccent.withOpacity(0.6) ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'Đúng',
                              style: TextstyleHelper.nunito(
                                  fontSize: 15, color: Colors.black),
                            ),
                          ],
                        ),
                         Row(
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              
                              decoration:  BoxDecoration(shape: BoxShape.circle, color: Colors.redAccent.withOpacity(0.6),),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'Sai',
                              style: TextstyleHelper.nunito(
                                  fontSize: 15, color: Colors.black),
                            ),
                          ],
                        ),
                         Row(
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              
                              decoration:  BoxDecoration(shape: BoxShape.circle, color: Colors.amberAccent.withOpacity(0.6),),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'Bỏ qua',
                              style: TextstyleHelper.nunito(
                                  fontSize: 15, color: Colors.black),
                            ),
                          ],
                        )
                      ],
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
