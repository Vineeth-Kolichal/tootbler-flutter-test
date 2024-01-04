import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toobler_flutter_test/features/employees/presentation/bloc/employee_screen_bloc.dart';
import 'package:toobler_flutter_test/features/employees/presentation/pages/employees_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => EmployeeScreenBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Toobler machine test',
        theme: ThemeData(
          cardTheme: CardTheme(color: Colors.white),
          textTheme: TextTheme(
              labelLarge: TextStyle(fontSize: 16, color: Colors.white)),
          primaryColor: Color(0xFF1e4aa7),
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const EmployeesScreen(),
      ),
    );
  }
}
