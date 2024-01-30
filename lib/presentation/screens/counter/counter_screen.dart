import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  static const String name = 'counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tltleLarge = Theme.of(context).textTheme.titleLarge;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Text('data', style: tltleLarge),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}