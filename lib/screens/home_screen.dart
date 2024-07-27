import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:layout/style/app_color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
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
                    image: AssetImage('assets/images/profile.webp'),
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: ''),
          NavigationDestination(icon: Icon(Icons.group), label: ''),
          NavigationDestination(icon: Icon(Icons.person), label: ''),
          NavigationDestination(icon: Icon(Icons.search), label: ''),
        ],
      ),
    );
  }
}
