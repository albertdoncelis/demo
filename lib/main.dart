import 'package:demo/widgets/button_section.dart';
import 'package:demo/widgets/title_section.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      title: 'Flutter layout demo',
    );
  }
}

class HomeScreen extends StatelessWidget {

  Widget _textSection() {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter layout demo'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/lake.jpg',
              width: 600,
              height: 200,
              fit: BoxFit.cover,
            ),
            TitleSection(),
            ButtonSection(),
            _textSection()
          ],
        ),
      ),
    );
  }
}
