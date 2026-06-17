import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart' hide BluetoothService;
import 'package:permission_handler/permission_handler.dart';
import 'bluetoothservice.dart';

class BluetoothScreen extends StatefulWidget {
  const BluetoothScreen({super.key});

  @override
  State<BluetoothScreen> createState() => _BluetoothScreenState();
}

class _BluetoothScreenState extends State<BluetoothScreen> {
  final BluetoothService service = BluetoothService();

  List<ScanResult> devices = [];

  BluetoothDevice? connectedDevice;

  @override
  void initState() {
    super.initState();
    requestPermissions();
    startBluetoothScan();
  }

  Future<void> requestPermissions() async {
    await [
      Permission.bluetooth,
      Permission.bluetoothConnect,
      Permission.bluetoothScan,
      Permission.location,
    ].request();
  }

  Future<void> startBluetoothScan() async {
    await service.startScan();

    FlutterBluePlus.scanResults.listen((results) {
      print(devices);
      setState(() {
        devices = results;
      });
    });
  }

  Future<void> connectToDevice(BluetoothDevice device) async {
    try {
      await service.connect(device);

      setState(() {
        connectedDevice = device;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Connected to ${device.platformName}")),
      );
    } catch (e) {
      print(e);
    }
  }

  Future<void> disconnectDevice() async {
    await service.disconnect();

    setState(() {
      connectedDevice = null;
    });
  }

  Widget buildDeviceTile(ScanResult result) {
    final device = result.device;

    return Card(
      child: ListTile(
        title: Text(
          device.platformName.isEmpty ? "Unknown Device" : device.platformName,
        ),
        subtitle: Text(device.remoteId.toString()),
        trailing: ElevatedButton(
          onPressed: () => connectToDevice(device),
          child: const Text("Connect"),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bluetooth Devices")),
      body: Column(
        children: [
          if (connectedDevice != null)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: Colors.green.shade100,
              child: Column(
                children: [
                  Text("Connected: ${connectedDevice!.platformName}"),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: disconnectDevice,
                    child: const Text("Disconnect"),
                  ),
                ],
              ),
            ),

          Expanded(
            child: ListView.builder(
              itemCount: devices.length,
              itemBuilder: (context, index) {
                return buildDeviceTile(devices[index]);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: startBluetoothScan,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
