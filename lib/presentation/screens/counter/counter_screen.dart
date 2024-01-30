import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/presentation/providers/counter_provider.dart';
import 'package:widget_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const String name = 'counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tltleLarge = Theme.of(context).textTheme.titleLarge;
    final int clickCounter = ref.watch(counterProvicer);
    final bool changeMode = ref.watch(isDarkModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
              onPressed: () {
                // la manera correcta
                ref.read(isDarkModeProvider.notifier).update((state) => !state);
              },
              icon: Icon(changeMode
                  ? Icons.light_mode_outlined
                  : Icons.dark_mode_outlined)),
        ],
      ),
      body: Center(
        child: Text('Valor: $clickCounter', style: tltleLarge),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ref.watch(counterProvicer.notifier).state = clickCounter + 5;
          // ref.read(counterProvicer.notifier).update((state) => state + 5);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
