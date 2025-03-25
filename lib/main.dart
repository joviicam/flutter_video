import 'package:flutter/material.dart';
import 'package:nombre_de_tu_app/config/video_provider.dart';
import 'package:nombre_de_tu_app/demand/demand_screen.dart';
import 'package:nombre_de_tu_app/home/home_screen.dart';
import 'package:nombre_de_tu_app/modules/navigation/navigation.dart';
import 'package:nombre_de_tu_app/modules/news/news_screen.dart';
import 'package:nombre_de_tu_app/modules/tips/tips_screen.dart';
import 'package:nombre_de_tu_app/widgets/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => VideoProvider(),
      child: MaterialApp(
        title: 'Joviicam',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.dark, // Tema oscuro como TikTok
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/navigation': (context) => const Navigation(),
          '/home': (context) => const HomeScreen(),
          '/news': (context) => const NewsScreen(),
          '/tips': (context) => const TipsScreen(),
          '/demand': (context) => const DemandScreen(),
        },
      ),
    );
  }
}
