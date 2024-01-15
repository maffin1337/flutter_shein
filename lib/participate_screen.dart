import 'package:flutter/material.dart';
import 'participation_form.dart';

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
            icon: Icons.groups,
            onPressed: () {
              navigateToParticipationFormScreen(context, 'Танцевальный конкурс');
            },
          ),
          SizedBox(height: 16.0),
          ParticipationCard(
            competitionName: 'Вокальный конкурс',
            icon: Icons.mic,
            onPressed: () {
              navigateToParticipationFormScreen(context, 'Вокальный конкурс');
            },
          ),
          SizedBox(height: 16.0),
          ParticipationCard(
            competitionName: 'Театральное икусство',
            icon: Icons.theater_comedy,
            onPressed: () {
              navigateToParticipationFormScreen(context, 'Театральное искусство');
            },
          ),
        ],
      ),
    );
  }

  void navigateToParticipationFormScreen(BuildContext context, String competitionName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ParticipationFormScreen(competitionName: competitionName),
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
          child: Column(
            children: [
              Icon(
                icon,
                color: Theme.of(context).backgroundColor,
                size: 40.0,
              ),
              SizedBox(height: 16.0),
              Text(
                competitionName,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).backgroundColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ParticipationFormScreen extends StatelessWidget {
  final String competitionName;

  ParticipationFormScreen({required this.competitionName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Запись - $competitionName'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ParticipationForm(),
    );
  }
}
