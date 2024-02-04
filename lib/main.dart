import 'package:app/decor_var.dart';
import 'package:flutter/material.dart';
import 'package:app/pages/home.dart';
import 'pages/hospitals.dart';
import 'pages/settings.dart';
import 'pages/consult.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int curr_page_index = 0;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'APP TITLE',
      theme: themeData,
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          selectedIndex: curr_page_index,
          onDestinationSelected: (int index){
            setState(() {
              curr_page_index = index;
            });
          },
          destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.add_business), label: 'Hospitals'),
          NavigationDestination(icon: Icon(Icons.phone), label: 'Consult'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Account'),
        ],),
        body: [home(), hospitals(), consult(), settings()][curr_page_index],
      ),
    );
  }
}
