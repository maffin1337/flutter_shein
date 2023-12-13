import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.purple,
          )
      ),
      home: Scaffold(
        appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('Учебник по языкам программирования',
                style: TextStyle(
                    fontSize: 18
                ))),
        body: const Column(
          children: <Widget>[
            CPlus(),
            CSharp(),
            Python(),
          ],
        ),
      ),
    );
  }
}

class CPlus extends StatelessWidget {
  const CPlus({super.key});
  final image = 'Assets/Images/CPlus.png';
  final TitleText = 'C++';
  final SubText = 'Начни изучать c++ с нуля.';

  @override
  Widget build(BuildContext context) {
    return CSLsnguageCard(image: image, titleText: TitleText, subText: SubText,);
  }
}

class CSharp extends StatelessWidget {
  const CSharp({super.key});
  final image = 'Assets/Images/CSharp.png';
  final TitleText = 'C#';
  final SubText = 'Начни изучать c# с нуля.';

  @override
  Widget build(BuildContext context) {
    return CSLsnguageCard(image: image, titleText: TitleText, subText: SubText,);
  }
}

class Python extends StatelessWidget {
  const Python({super.key});
  final image = 'Assets/Images/Python.png';
  final TitleText = 'Python';
  final SubText = 'Начни изучать python с нуля.';

  @override
  Widget build(BuildContext context) {
    return CSLsnguageCard(image: image, titleText: TitleText, subText: SubText,);
  }
}

class CSLsnguageCard extends StatelessWidget {
  final String image;
  final String titleText;
  final String subText;

  const CSLsnguageCard({
    super.key,
    required this.image,
    required this.titleText,
    required this.subText
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Image.asset(image, width: 50, height: 50),
              title: Text(titleText),
              subtitle: Text(subText),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Начать'),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('Пока что лекции не готовы'),
                        action: SnackBarAction(
                          label: 'Закрыть',
                          onPressed: () {
                            // Code to execute.
                          },
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




