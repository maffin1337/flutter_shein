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
        canvasColor: Color(0xFF2b2a29),
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
          height: 70.0,
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

