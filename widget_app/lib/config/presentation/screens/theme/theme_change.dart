import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {

  static const name = 'theme_changer_screen';
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context ,  ref) {
    // final bool isDarkMode = ref.watch(isDarkModeProvider); 
    final bool isDarkMode = ref.watch(themeNotifierProvider).isDarkMode; 

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambiar tema'),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.dark_mode_outlined :Icons.light_mode_outlined),
            onPressed: () {
              // ref.read(isDarkModeProvider.notifier).update((state) => !state);  //cambia el valor de true a false o false a true

              ref.read(themeNotifierProvider.notifier).toggleDarkMode();
            }, 
          )
        ],
      ),
      body: _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {

  
  const _ThemeChangerView({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    // final int selectedColorIndex = ref.watch(selectedColorProvider);
    final int selectedColorIndex = ref.watch(themeNotifierProvider).selectColor;
    


    return ListView.builder(
      itemCount:  colors.length,
      itemBuilder: (context, index) {

        final color = colors[index];

        return RadioListTile(
          title: Text('Este color', style: TextStyle(color: color),),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index, 
          groupValue: selectedColorIndex, 
          onChanged: (value){
            //notificar el cambio
            // ref.read(selectedColorProvider.notifier).state = index;
              ref.read(themeNotifierProvider.notifier).changeColorIndex(index);

          }
        );
      },
    );
  }
}