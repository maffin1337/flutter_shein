import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NewsCard(
          title: 'Фестиваль "Art.Палитра открыт!"',
          description: 'Узнать больше...',
          imagePath: 'assets/opening.png', // Replace with the actual image path
          onPressed: () {
            // Add your navigation logic or action here
            print('Tapped on Opening News');
          },
        ),
        NewsCard(
          title: 'I Международный многожанровый фестиваль-конкурс исполнительского мастерства "Art.Палитра", направление "Хореография"',
          description: 'Узнать больше...',
          imagePath: 'assets/dance.png', // Replace with the actual image path
          onPressed: () {
            // Add your navigation logic or action here
            print('Tapped on Dance Contest News');
          },
        ),
        // Add more NewsCard widgets as needed
      ],
    );
  }
}

class NewsCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath; // New property for the image path
  final VoidCallback onPressed;

  NewsCard({required this.title, required this.description, required this.imagePath, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).primaryColor,
      elevation: 4.0,
      margin: EdgeInsets.all(10.0),
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                height: 400.0,
                width: double.infinity,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(8.0),
                child: Text(
                  description,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
