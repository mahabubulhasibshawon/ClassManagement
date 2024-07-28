import 'package:flutter/material.dart';

class CourseItemCardWidget extends StatelessWidget {
  const CourseItemCardWidget(
      {super.key,
      required this.cardColor,
      required this.cardTitle,
      required this.cardImagePath});

  final Color cardColor;
  final String cardTitle;
  final String cardImagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 150,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: cardColor,
      ),
      child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //   image
            Image(
              image: AssetImage(cardImagePath),
              width: 100,
              height: 60,
            ),
            const SizedBox(height: 5),
            //   text
            Text(
              cardTitle,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
