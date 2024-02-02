import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/theme/app_theme.dart';

// Listado de colores inmutable, no se puede modificar
final colorListProvider = Provider((ref) => colorList);

// Color provider. mantiene el estado
final StateProvider<bool> isDarkModeProvider =
    StateProvider<bool>((ref) => true);
final selectedIndexColorProvider = StateProvider((ref) => 0);

// Un objeto de tipo AppTheme custom. mantiene el estado de un objeto mas amplio
final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

//Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // STATE = estado = new AppTheme()
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode(){
    state = state.copyWith(isDarkmodeCopy: !state.isDarkmode);
  }

  void changeColorindex(int colorIndex){
    state = state.copyWith( selectedColorCopy: colorIndex);
  }
}
