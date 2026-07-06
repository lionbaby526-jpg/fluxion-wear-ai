import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class BleService {
  final FlutterBluePlus flutterBlue = FlutterBluePlus();

  List<BluetoothDevice> devices = [];

  Future<void> scanDevices() async {
    devices.clear();

    await FlutterBluePlus.startScan(timeout: const Duration(seconds: 5));

    FlutterBluePlus.scanResults.listen((results) {
      devices.clear();

      for (ScanResult result in results) {
        devices.add(result.device);
      }
    });

    await FlutterBluePlus.stopScan();
  }

  Future<void> connect(BluetoothDevice device) async {
    await device.connect();
  }

  Future<void> disconnect(BluetoothDevice device) async {
    await device.disconnect();
  }
}
