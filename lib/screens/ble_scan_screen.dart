import 'package:flutter/material.dart';

class BleScanScreen extends StatefulWidget {
  const BleScanScreen({super.key});

  @override
  State<BleScanScreen> createState() => _BleScanScreenState();
}

class _BleScanScreenState extends State<BleScanScreen> {
  bool isScanning = false;

  final List<Map<String, String>> devices = [];

  void startScan() async {
    setState(() {
      isScanning = true;
      devices.clear();
    });

    await Future.delayed(const Duration(seconds: 3));

    setState(() {
      isScanning = false;

      devices.addAll([
        {
          "name": "Boult Watch SB",
          "id": "AA:BB:CC:11:22:33",
        },
        {
          "name": "Unknown BLE Device",
          "id": "11:22:33:44:55:66",
        },
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("BLE Scanner"),
        backgroundColor: Colors.black,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: startScan,
        child: const Icon(Icons.bluetooth_searching),
      ),
      body: Column(
        children: [

          const SizedBox(height: 20),

          if (isScanning)
            const Padding(
              padding: EdgeInsets.all(20),
              child: CircularProgressIndicator(),
            ),

          Expanded(
            child: ListView.builder(
              itemCount: devices.length,
              itemBuilder: (context, index) {

                final device = devices[index];

                return Card(
                  color: Colors.grey.shade900,
                  margin: const EdgeInsets.all(10),

                  child: ListTile(
                    leading: const Icon(
                      Icons.watch,
                      color: Colors.cyan,
                    ),

                    title: Text(
                      device["name"]!,
                      style: const TextStyle(color: Colors.white),
                    ),

                    subtitle: Text(
                      device["id"]!,
                      style: const TextStyle(color: Colors.white70),
                    ),

                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Connect"),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
