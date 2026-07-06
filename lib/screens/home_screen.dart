import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Fluxion Wear AI"),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          children: const [
            DashboardCard("❤️", "Heart Rate"),
            DashboardCard("🩸", "SpO₂"),
            DashboardCard("👣", "Steps"),
            DashboardCard("🔋", "Battery"),
            DashboardCard("🤖", "AI Assistant"),
            DashboardCard("📡", "BLE Scan"),
          ],
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String icon;
  final String title;

  const DashboardCard(this.icon, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(icon, style: const TextStyle(fontSize: 40)),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
