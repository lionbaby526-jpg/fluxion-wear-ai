import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

class FluxionWearAI extends StatelessWidget {
  const FluxionWearAI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluxion Wear AI',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
