import 'package:flutter/material.dart';
import 'package:da_laptrinhdidongdetai_01/Assets/TextStyle.dart';
class Cardgridview extends StatelessWidget {
  const Cardgridview({super.key, 
    required this.imagePath,
    required this.title,
    required this.isBought,
  });
  final String imagePath;
  final String title;
  final bool isBought;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(imagePath),
              const SizedBox(height: 5),
              Text(title, style: TextstyleHelper.nunito(fontSize: 13, color: Colors.black, fontWeight: FontWeight.w500),)
            ],
          ),
          isBought ? const Icon(Icons.check_circle, color: Colors.green,) : const Icon(Icons.lock_outline, color: Colors.grey,),
        ],
      ),
    );
  }
}