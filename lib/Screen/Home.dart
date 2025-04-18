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

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Handle menu button press
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
                          const Icon(Icons.arrow_forward_ios),
                          Text(
                            'Xem tất cả',
                            style: TextstyleHelper.nunito(
                                fontSize: 12, color: Colors.black),
                          ),
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
          ],
        ),
      ),
    );
  }
}
