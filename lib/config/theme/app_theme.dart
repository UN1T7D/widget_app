import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkmode;
  AppTheme({this.selectedColor = 0, this.isDarkmode = false})
      : assert(
            selectedColor >= 0, 'El color seleccionado debe de ser mayor a 0'),
        assert(selectedColor < colorList.length,
            'El color seleccionado debe de ser menor a ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness: isDarkmode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: AppBarTheme(centerTitle: true));

  AppTheme copyWith({
    int? selectedColorCopy,
    bool? isDarkmodeCopy
  }) => AppTheme(
    selectedColor: selectedColorCopy ?? selectedColor,
    isDarkmode: isDarkmodeCopy ?? isDarkmode
  );
}
