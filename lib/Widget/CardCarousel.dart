import 'package:flutter/material.dart';
import 'package:da_laptrinhdidongdetai_01/Assets/TextStyle.dart';

class Cardcarousel extends StatelessWidget {
  const Cardcarousel(
      {super.key,
      required this.imagePath,
      required this.titleLevel,
      required this.titleCourse,
      required this.numberOfLessons,
      required this.Rating});
  final String imagePath;
  final String titleLevel;
  final String titleCourse;
  final int numberOfLessons;
  final int Rating;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            // width: double.infinity,
            // height: 200,
            child: Image.asset(imagePath, width: double.infinity, height: 150,fit: BoxFit.cover),),
          const SizedBox(height: 5),
          Container(
            margin: const EdgeInsets.only(left: 5),
            child: Text(
              titleLevel,
              style: TextstyleHelper.nunito(fontSize: 10, color: Colors.black),
            ),
          ),
          const SizedBox(height: 5),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              titleCourse,
              style: TextstyleHelper.nunito(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          const SizedBox(height: 5),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.book, size: 15, color: Colors.black),
                const SizedBox(width: 5),
                Text(
                  'Số bài học: $numberOfLessons',
                  style:
                      TextstyleHelper.nunito(fontSize: 10, color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('$Rating',
                        style: TextstyleHelper.nunito(
                            fontSize: 10, color: Colors.black)),
                    const Icon(Icons.star, size: 15, color: Colors.black),
                    const Icon(Icons.star, size: 15, color: Colors.black),
                    const Icon(Icons.star, size: 15, color: Colors.black),
                    const Icon(Icons.star, size: 15, color: Colors.black),
                    const Icon(Icons.star, size: 15, color: Colors.black),
                  ],
                ),
                // const SizedBox(width: 5),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios_outlined)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
