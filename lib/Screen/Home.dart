import 'package:flutter/material.dart';
import 'package:da_laptrinhdidongdetai_01/Assets/TextStyle.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:da_laptrinhdidongdetai_01/Widget/CardCarousel.dart';
import 'package:da_laptrinhdidongdetai_01/Data/CourseData.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
     final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    int _selectedIndex = 0;
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index; // Cập nhật chỉ số tab
      });
    }

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Handle menu button press
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        title: const Text('Home'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.qr_code_scanner)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Text(
                'Xin chào userName!',
                style: TextstyleHelper.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Khóa tự học',
                    style: TextstyleHelper.nunito(
                        fontSize: 15, color: Colors.black),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            'Xem tất cả',
                            style: TextstyleHelper.nunito(
                                fontSize: 12, color: Colors.black),
                          ),
                          const Icon(Icons.arrow_forward_ios),
                        ],
                      ))
                ],
              ),
            ),
            Container(
              height: screenHeight * 0.4, // Đặt chiều cao cố định cho container
              child: CarouselSlider.builder(
                itemCount: dummyCourses.length,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    width: screenWidth * 0.85,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Cardcarousel(
                        imagePath: dummyCourses[index].imagePath,
                        titleLevel: dummyCourses[index].titleLevel,
                        titleCourse: dummyCourses[index].titleCourse,
                        numberOfLessons: dummyCourses[index].numberOfLessons,
                        Rating: dummyCourses[index].rating,
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  height: screenHeight * 0.4, // Chiều cao cố định cho carousel
                  enlargeCenterPage: true,
                  viewportFraction: 0.85,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tự luyện',
                    style: TextstyleHelper.nunito(
                        fontSize: 15, color: Colors.black),
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                'Xem tất cả',
                                style: TextstyleHelper.nunito(
                                    fontSize: 12, color: Colors.black),
                              ),
                              const Icon(Icons.arrow_forward_ios),
                            ],
                          ))
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
      // bottomNavigation
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Tự học',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.celebration),
            label: 'Ôn luyện Plus',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      // Drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Xin chào username!'),
            ),
            ListTile(
              title: const Text('Trang chủ'),
              leading: const Icon(Icons.home),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Tự học'),
              leading: const Icon(Icons.search),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Ôn luyện Plus'),
              leading: const Icon(Icons.celebration),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
    );
  }
}
