import 'package:flutter/cupertino.dart';
import 'package:tpm_6_azdan/cupertino_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter Cupertino Demo',
      theme: CupertinoThemeData(
        brightness: Brightness.dark
      ),
      home: CupertinoHomePage(),
    );
  }
}
