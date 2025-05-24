import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:srocksmusic_assignment/model/service_repository.dart';
import 'package:srocksmusic_assignment/view_model/service_view_model.dart';
import 'package:srocksmusic_assignment/view/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // i.e. works on any device.
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ServiceViewModel(ServiceRepository())..loadServices(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'S.Rocks Music',
      home: HomeScreen(),
    );
  }
}