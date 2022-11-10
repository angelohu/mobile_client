import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print(dotenv.env['API_URL']);
    return Container(
      child: Center(child: Text('Home Page')),
    );
  }
}
