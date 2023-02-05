import 'package:flutter/material.dart';
import 'package:project_management/router_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: '/',
      onGenerateRoute: Routers.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
