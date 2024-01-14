import 'package:flutter/material.dart';
import 'masterclass_card.dart';
import 'news_card.dart';
import 'participate_screen.dart'; // Import the ParticipateScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bottom Navigation',
      theme: ThemeData(
        primaryColor: Color(0xFFff8b03),
        backgroundColor: Color(0xFF2b2a29),
        scaffoldBackgroundColor: Color(0xFF2b2a29),
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Color(0xFFfefefe)),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    NewsScreen(),
    MasterclassesScreen(),
    ParticipateScreen(), // Include the ParticipateScreen
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Image.asset(
          'assets/logo.png', // Replace 'assets/logo.png' with the path to your logo image
          height: 40.0,
        ),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Новости',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Мастер-классы',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.how_to_vote),
            label: 'Принять участие',
          ),
        ],
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
      ),
    );
  }
}

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NewsCard(
          title: 'Фестиваль "Art.Палитра открыт!"',
          description: 'Узнать больше...',
          imagePath: 'assets/opening.PNG', // Replace with the actual image path
          onPressed: () {
            // Add your navigation logic or action here
            print('Tapped on Flutter News');
          },
        ),
        NewsCard(
          title: 'I Международный многожанровый фестиваль-конкурс исполнительского мастерства "Art.Палитра", направление "Хореография"',
          description: 'Узнать больше...',
          imagePath: 'assets/dance.PNG', // Replace with the actual image path
          onPressed: () {
            // Add your navigation logic or action here
            print('Tapped on Dart News');
          },
        ),
        // Add more NewsCard widgets as needed
      ],
    );
  }
}

class MasterclassesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MasterclassCard(
          title: 'Мастер-класс по современному танцу 10:00',
          teacherInfo: 'Преподаватель: Богатырева Анастасия',
          imagePath: 'assets/dance_class.PNG', // Replace with the actual image path
          onSignUpPressed: () {
            // Add your sign-up logic or action here
            print('Signed up for Flutter Masterclass');
          },
        ),
        MasterclassCard(
          title: 'Мастер-класс "Музыкальный менеджмент" 10:00',
          teacherInfo: 'Преподаватели: Станислав Топоров, Певица IDA',
          imagePath: 'assets/music_class.PNG', // Replace with the actual image path
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

