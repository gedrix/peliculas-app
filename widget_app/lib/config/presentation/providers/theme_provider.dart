import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/theme/app_theme.dart';


final isDarkModeProvider = StateProvider<bool>((ref) => false );

//listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

final selectedColorProvider = StateProvider((ref) => 0);


//un objeto de tipo AppTheme

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);


class ThemeNotifier extends StateNotifier<AppTheme>{
  
  //stato es una nueva instancia del appTheme()
  ThemeNotifier():super(AppTheme());

  void toggleDarkMode(){
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int indexoColor){
    state = state.copyWith(selectColor: indexoColor);
  }


}