import 'package:flutter/material.dart';

void main() {
  runApp(const CheqWorldApp());
}

class CheqWorldApp extends StatelessWidget {
  const CheqWorldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CheqWorld MVP v0.1',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CheqWorld (MVP v0.1)")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text("Know before you go.",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          const Text("Mobility Risk Intelligence Platform"),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const AlertsScreen()));
            },
            child: const Text("View Alerts"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const CategoriesScreen()));
            },
            child: const Text("Risk Categories"),
          ),
        ],
      ),
    );
  }
}

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final alerts = [
      {"title": "Flash Flood Warning", "region": "Uttarakhand", "severity": "High"},
      {"title": "Protest Expected", "region": "Delhi", "severity": "Medium"},
      {"title": "Crime Advisory", "region": "Goa", "severity": "Low"},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Alerts")),
      body: ListView.builder(
        itemCount: alerts.length,
        itemBuilder: (context, index) {
          final a = alerts[index];
          return ListTile(
            title: Text(a["title"]!),
            subtitle: Text("${a["region"]} • Severity: ${a["severity"]}"),
          );
        },
      ),
    );
  }
}

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cats = [
      "Terror / Violence",
      "Floods / Flash Floods",
      "Earthquakes",
      "Crime & Safety",
      "Protests / Political Rallies",
      "Landslides",
      "Transport Disruptions"
    ];
    return Scaffold(
      appBar: AppBar(title: const Text("Risk Categories")),
      body: ListView.builder(
        itemCount: cats.length,
        itemBuilder: (context, i) => ListTile(title: Text(cats[i])),
      ),
    );
  }
}
