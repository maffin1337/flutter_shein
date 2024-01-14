import 'package:flutter/material.dart';

class ParticipateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ParticipationCard(
            competitionName: 'Танцевальный конкурс',
            icon: Icons.groups, // Add an icon for the Dance Competition
            onPressed: () {
              print('Dance Competition card pressed');
            },
          ),
          ParticipationCard(
            competitionName: 'Вокальный конкурс',
            icon: Icons.mic, // Add an icon for the Singing Competition
            onPressed: () {
              print('Singing Competition card pressed');
            },
          ),
          ParticipationCard(
            competitionName: 'Театральное искусство',
            icon: Icons.theater_comedy, // Add an icon for the Theatre Competition
            onPressed: () {
              print('Theatre Competition card pressed');
            },
          ),
        ],
      ),
    );
  }
}

class ParticipationCard extends StatelessWidget {
  final String competitionName;
  final IconData icon;
  final VoidCallback onPressed;

  ParticipationCard({required this.competitionName, required this.icon, required this.onPressed});

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icon,
                color: Theme.of(context).backgroundColor,
                size: 40.0,
              ),
              SizedBox(width: 16.0),
              Expanded(
                child: Text(
                  competitionName,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).backgroundColor,
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
