import 'package:flutter/material.dart';
import 'package:da_laptrinhdidongdetai_01/Assets/TextStyle.dart';

class Cardgridview extends StatelessWidget {
  const Cardgridview({
    super.key, 
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    title,
                    style: TextstyleHelper.nunito(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: isBought 
                ? const Icon(Icons.check_circle, color: Colors.green)
                : const Icon(Icons.lock_outline, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
