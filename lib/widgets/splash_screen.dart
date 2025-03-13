import 'package:flutter/material.dart';
import 'package:nombre_de_tu_app/config/global_variables.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _opacity = 1.0;
      });
    });

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/navigation');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(0, 10, 133, 1),
              Color.fromRGBO(32, 41, 154, 1),
              Color.fromRGBO(0, 121, 255, 1),
            ],
            stops: [0.04, 0.49, 1.0],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logoTUJPA.png', width: 300, height: 200),
              /* AnimatedOpacity(
                opacity: _opacity,
                duration: const Duration(seconds: 1),
                child: const Text(
                  'HUICROCHET',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ), */
            ],
          ),
        ),
      ),
    );
  }
}
