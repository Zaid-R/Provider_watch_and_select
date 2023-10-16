import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_select_and_watch/Providers/object_provider.dart';
import 'package:provider_select_and_watch/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ObjectProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            brightness: Brightness.light,
            seedColor: Colors.blueAccent,
          ),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
