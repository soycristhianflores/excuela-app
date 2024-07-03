import 'package:excuela/models/question.dart';
import 'package:flutter/material.dart';
import 'package:excuela/page/home.dart';
import 'package:excuela/page/progress_page.dart';
import 'package:excuela/page/profile_page.dart';
import 'package:excuela/page/quiz_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => QuizModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Excuela',
      theme: ThemeData.dark(useMaterial3: true),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/quiz': (context) => QuizPage(),
        '/progress': (context) => const ProgressPage(),
      },
    );
  }
}
