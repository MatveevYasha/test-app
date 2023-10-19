import 'package:eds_test/presentation/main_page/main_page.dart';
import 'package:flutter/material.dart';

class EdsTestApp extends StatelessWidget {
  const EdsTestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test Task Application',
      home: MainPage(),
    );
  }
}
