import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   text widgets
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello Smith!',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "You've got 4 task today",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              //   img
                Image(image: AssetImage('assets/images/profile.png'), width: 100, height: 100,)
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
