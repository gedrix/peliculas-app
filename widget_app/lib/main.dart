import 'package:flutter/material.dart';
import 'package:widget_app/config/presentation/providers/theme_provider.dart';
import 'package:widget_app/config/theme/app_theme.dart';
import 'config/router/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp()
    )
   
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});
  
  @override
  Widget build(BuildContext context, ref) {
    // final isDarkMOde = ref.watch(selectedColorProvider);
    // final selectColor = ref.watch(isDarkModeProvider);

    final AppTheme appTheme = ref.watch(themeNotifierProvider);
    return  MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      // theme: AppTheme(selectColor: selectColor, isDarkMode: isDarkMOde).getTheme(),
      theme: appTheme.getTheme(),

      // home: const HomeScreen(),

      
    );
  }
}
