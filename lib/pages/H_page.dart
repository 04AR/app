import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class H_page extends StatelessWidget {
  const H_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          FlutterMap(
              options: const MapOptions(
                initialCenter: LatLng(30.693032, 76.730191),
                initialZoom: 9.2,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.app',
                ),

                RichAttributionWidget(
                  attributions: [
                    TextSourceAttribution(
                      'OpenStreetMap contributors',
                      onTap: () =>
                          (Uri.parse('https://openstreetmap.org/copyright')),
                    ),
                  ],
                ),

                Row(
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon:  const Icon(Icons.call),
                        label:  const Text("Call")),
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon:  const Icon(Icons.add_task_sharp),
                        label:  const Text("Appointment")),
                  ],
                ),
              ])
        ],
      ),
    );
  }
}
