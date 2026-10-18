import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'theme/theme.dart';

class CodedMasteryApp extends StatelessWidget {
  const CodedMasteryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coded Mastery',
      debugShowCheckedModeBanner: false,
      theme: codedMastery.theme.light,
      darkTheme: codedMastery.theme.dark,
      themeMode: codedMastery.theme.mode,
      home: const HomeScreen(),
    );
  }
}
