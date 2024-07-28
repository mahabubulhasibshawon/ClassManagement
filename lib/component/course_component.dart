import 'package:flutter/material.dart';
import 'package:layout/style/app_color.dart';
import '../style/asset_manager.dart';
import '../widget/course_item_card_widget.dart';

class CourseComponent extends StatelessWidget {
  const CourseComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            'Courses',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            'Your running subjects',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
        ),
        const SizedBox(height: 10,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: 10,),
              CourseItemCardWidget(cardColor: AppColor().appRedLight, cardTitle: 'Mathmatics', cardImagePath: AssetManager.mathmaticsIcon),
              const SizedBox(width: 20,),
              CourseItemCardWidget(cardColor: AppColor().yellowLight, cardTitle: 'Chemistry', cardImagePath: AssetManager.chemistryIcon),
              const SizedBox(width: 20,),
              CourseItemCardWidget(cardColor: AppColor().appRedDark, cardTitle: 'Biology', cardImagePath: AssetManager.biologyIcon),
              const SizedBox(width: 20,),
              CourseItemCardWidget(cardColor: AppColor().appRedLight, cardTitle: 'Mathmatics', cardImagePath: AssetManager.mathmaticsIcon),
              const SizedBox(width: 20,),
              CourseItemCardWidget(cardColor: AppColor().appRedLight, cardTitle: 'Mathmatics', cardImagePath: AssetManager.mathmaticsIcon),
          
            ],
          ),
        )
      ],
    );
  }
}
