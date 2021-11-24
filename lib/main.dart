import 'package:flutter/material.dart';
import 'package:task/Model_page/store_data.dart';

import 'Home_Page/home_screen.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
        create: (context)=>NotesProviders(),
     child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home_screen(),
    ));
  }
}


