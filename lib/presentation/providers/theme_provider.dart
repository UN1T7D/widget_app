import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/theme/app_theme.dart';

final StateProvider<bool> isDarkModeProvider = StateProvider<bool>((ref) => true);

// Listado de colores inmutable

final colorListProvider = Provider((ref) => colorList);

// 
final selectedIndexColorProvider = StateProvider((ref) => 0);