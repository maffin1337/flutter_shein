import 'package:flutter/material.dart';
import 'signup_screen.dart';

class MasterclassesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MasterclassCard(
          title: 'Мастер-класс по современному танцу 10:00',
          teacherInfo: 'Преподаватель: Богатырева Анастасия',
          imagePath: 'assets/dance_class.png', // Replace with the actual image path
          onSignUpPressed: () {
            // Add your sign-up logic or action here
            print('Signed up for Flutter Masterclass');
          },
        ),
        MasterclassCard(
          title: 'Мастер-класс "Музыкальный менеджмент" 10:00',
          teacherInfo: 'Преподаватели: Станислав Топоров, Певица IDA',
          imagePath: 'assets/music_class.png', // Replace with the actual image path
          onSignUpPressed: () {
            // Add your sign-up logic or action here
            print('Signed up for Dart Masterclass');
          },
        ),
        // Add more MasterclassCard widgets as needed
      ],
    );
  }
}

class MasterclassCard extends StatelessWidget {
  final String title;
  final String teacherInfo;
  final String imagePath; // New property for the image path
  final VoidCallback onSignUpPressed;

  MasterclassCard({required this.title, required this.teacherInfo, required this.imagePath, required this.onSignUpPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).primaryColor,
      elevation: 4.0,
      margin: EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120.0,
            height: 150.0,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).backgroundColor,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    teacherInfo,
                    style: TextStyle(
                      color: Theme.of(context).backgroundColor,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to the SignUpScreen when the "Sign Up" button is pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpScreen()),
                        );
                      },
                      child: Text('Записаться'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
