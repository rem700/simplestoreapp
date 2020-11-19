import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'constants.dart';

void main() {
  runApp(StoreApp());
}

class StoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Military bag Store',
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: HomeScreen(),

    );
  }
}
