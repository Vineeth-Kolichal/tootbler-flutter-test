import 'package:flutter/material.dart';
import 'package:toobler_flutter_test/features/employees/presentation/pages/employees_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toobler machine test',
      theme: ThemeData(
        textTheme:
            TextTheme(labelLarge: TextStyle(fontSize: 16, color: Colors.white)),
        primaryColor: Colors.blue,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const EmployeesScreen(),
    );
  }
}
