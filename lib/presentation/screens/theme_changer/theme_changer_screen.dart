import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  const ThemeChangerScreen({super.key});

  static const String name = 'theme_screen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool changeMode = ref.watch(isDarkModeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme changer'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(changeMode
                  ? Icons.light_mode_outlined
                  : Icons.dark_mode_outlined)),
        ],
      ),
      body: _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  @override
  Widget build(BuildContext, WidgetRef ref) {
    final List<Color> colorsTheme = ref.read(colorListProvider);
    final int selectedIndexColor = ref.watch(selectedIndexColorProvider);

    return ListView.builder(
      itemCount: colorsTheme.length,
      itemBuilder: (context, index) {
        final color = colorsTheme[index];
        return RadioListTile(
          title: Text('Este color', style: TextStyle(color: color)),
          subtitle: Text('$color.value', style: TextStyle(color: color)),
          activeColor: color,
          value: index,
          groupValue: selectedIndexColor,
          onChanged: (value) {
            ref
                .read(selectedIndexColorProvider.notifier)
                .update((state) => state = value!);
          },
        );
      },
    );
  }
}
