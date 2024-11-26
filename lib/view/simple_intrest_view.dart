import 'package:flutter/material.dart';

class SimpleIntrestView extends StatefulWidget {
  const SimpleIntrestView({super.key});

  @override
  State<SimpleIntrestView> createState() => _SimpleIntrestViewState();
}

class _SimpleIntrestViewState extends State<SimpleIntrestView> {
  double principal = 0;
  double time = 0;
  double rate = 0;
  double interest = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest Calculator'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  principal = double.tryParse(value) ?? 0;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Principal Amount',
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  time = double.tryParse(value) ?? 0;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Time (in years)',
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  rate = double.tryParse(value) ?? 0;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Rate (in %)',
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Simple Interest: $interest',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      interest = (principal * time * rate) / 100;
                    });
                  },
                  child: const Text('Calculate Simple Interest'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
