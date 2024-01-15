import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Записаться на мастер-класс'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Введите ФИО',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'ФИО',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Add your sign-up logic here
                print('Full Name submitted');
                // Show a SnackBar to indicate successful sign-up
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Запись прошла успешно. Ждем вас на мастер-классе!'),
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
      ),
    );
  }
}
