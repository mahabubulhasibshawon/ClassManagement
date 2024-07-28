import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import '../style/app_color.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   text widgets
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hello Smith!',
                style:
                TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              const Text(
                "You've got",
                style:
                TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Text(
                "4 task today",
                style:
                TextStyle(
                    color: AppColor().appGreen,
                    fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          //   img
          const badges.Badge(
            badgeContent: Text('3'),
            child: Image(
              image: AssetImage('assets/images/profile.png'),
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
