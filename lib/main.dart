import 'package:flutter/material.dart';

void main() {
  runApp(const OmniscientApp());
}

class OmniscientApp extends StatelessWidget {
  const OmniscientApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OMNISCIENT',
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OMNISCIENT'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          DealCard(
            title: 'RVNL – Railway Contract',
            confidence: '94%',
            action: 'STRONG BUY',
          ),
          DealCard(
            title: 'HAL – Defence Engine Deal',
            confidence: '88%',
            action: 'ACCUMULATE',
          ),
          DealCard(
            title: 'INFY – Client Loss',
            confidence: '91%',
            action: 'SELL',
          ),
        ],
      ),
    );
  }
}

class DealCard extends StatelessWidget {
  final String title;
  final String confidence;
  final String action;

  const DealCard({
    super.key,
    required this.title,
    required this.confidence,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Confidence: $confidence'),
            const SizedBox(height: 4),
            Text('Action: $action',
                style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
