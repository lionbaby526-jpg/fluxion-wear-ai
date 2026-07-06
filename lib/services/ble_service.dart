
class BleService {
  bool isConnected = false;

  Future<void> scanDevices() async {
    print("Scanning for BLE devices...");
  }

  Future<void> connect(String deviceId) async {
    print("Connecting to $deviceId...");
    isConnected = true;
  }

  Future<void> disconnect() async {
    print("Disconnected");
    isConnected = false;
  }
}
