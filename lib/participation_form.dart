import 'package:flutter/material.dart';

class ParticipationForm extends StatefulWidget {
  @override
  _ParticipationFormState createState() => _ParticipationFormState();
}

class _ParticipationFormState extends State<ParticipationForm> {
  String _selectedAmount = 'Соло'; // Default value for the amount of people
  bool _showGroupField = false; // Whether to show the group field

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: DropdownButton<String>(
              value: _selectedAmount,
              onChanged: (value) {
                setState(() {
                  _selectedAmount = value!;
                  _showGroupField = value != 'Соло';
                });
              },
              items: ['Соло', 'Дуэт', 'Малая форма (3-5 чел.)', 'Ансамбль (6-15 чел.)', 'Массовый ансамбль (от 16 чел.)'].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: Colors.white),
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white), // Add white border
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Название коллектива',
                labelStyle: TextStyle(color: Colors.white),
                border: InputBorder.none, // Remove default border
                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0), // Add padding
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white), // Add white border
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Название номера',
                labelStyle: TextStyle(color: Colors.white),
                border: InputBorder.none, // Remove default border
                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0), // Add padding
              ),
            ),
          ),
          if (_showGroupField)
            SizedBox(height: 16.0),
          if (_showGroupField)
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white), // Add white border
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Количество человек',
                  labelStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none, // Remove default border
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0), // Add padding
                ),
              ),
            ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // Add your sign-up logic here
              print('Full Name submitted');
              // Show a SnackBar to indicate successful sign-up
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Запись прошла успешно. Ждем вас на конкурсе!'),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
              );
              // You can navigate back to the previous screen or to another screen as needed
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).primaryColor,
            ),
            child: Text(
              'Отправить',
              style: TextStyle(
                // Keeping the original text color on the button
                color: Theme.of(context).backgroundColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
