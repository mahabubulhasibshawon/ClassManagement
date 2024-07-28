# Class Management UI

This Flutter project showcases a Class Management UI, featuring a header section with personalized greetings and task notifications, a courses section, and a schedule section. The UI is designed with a focus on simplicity and user engagement.

## Features

- **Header Section**: Greets the user and notifies them about their tasks for the day. It also includes an image with badges.
- **Courses Section**: Displays all courses for the user in a structured manner.
- **Schedule Section**: Lists details such as course name, chapter to read today, time, and faculty name. Each course and schedule card is designed using `Container`.

## Screen Records

## Getting Started

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- An IDE like Android Studio or Visual Studio Code with Flutter and Dart plugins.

### Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/mahabubulhasibshawon/ClassManagement.git
    ```
2. Navigate to the project directory:
    ```bash
    cd class_management
    ```
3. Get the dependencies:
    ```bash
    flutter pub get
    ```

### Running the App

1. Connect your device or start an emulator.
2. Run the app:
    ```bash
    flutter run
    ```

## Project Structure

Here's a brief overview of the project structure:

```
lib/
├── main.dart
├── screens/
│   ├── home_screen.dart
├── component/
│   ├── header_component.dart
│   ├── courses_component.dart
│   ├── schedule_component.dart
├── widget/
│   ├── course_item_card_widget.dart
└── style/
    ├── app_color.dart
    ├── asset_manager.dart
 
```

## Implementation Details

### Header Section

The header section greets the user and displays their tasks for the day along with an image and badges. It is implemented in `header_section.dart`.

```dart
import 'package:badges/badges.dart';
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
          badges.Badge(
            // badgeColor: Colors.red,
            position: BadgePosition.topEnd(),
            badgeContent: const Text('3'), // this is not a valid parameter, use child instead
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: const Image(
                  image: AssetImage('assets/images/pro.jpg'),
                  height: 100,
                  width: 100,
                ), // replace with your image
              ),
            ),
          )
        ],
      ),
    );
  }
}

```

### Courses Section

The courses section displays all courses for the user. Each course is represented by a `Container` in `courses_card.dart`.

```dart
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

```

### Schedule Section

The schedule section lists details such as course name, chapter to read today, time, and faculty name. Each schedule item is displayed using a `Container` in `schedule_card.dart`.

```dart
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

```

## Contributing

Contributions are welcome! Please fork the repository and create a pull request with your changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any questions or suggestions, feel free to open an issue or contact me at [mahabubulhasibshawon@gmail.com](mailto:mahabubulhasibshawon@gmail.com).

---

