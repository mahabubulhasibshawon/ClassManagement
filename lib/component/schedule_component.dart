import 'package:flutter/material.dart';

class ScheduleComponent extends StatelessWidget {
  const ScheduleComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Your Schedule',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          //   2nd txt
          const Text('Upcoming classes and tasks'),
          const SizedBox(
            height: 10,
          ),
          //   container
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0, top: 15),
                  child: Text(
                    'Physics',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold , color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    'Chapter 3: Force',
                    style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Icon(Icons.timer, color: Colors.white,),
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '09 : 30',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Tasnim Tabassum Shimi',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
