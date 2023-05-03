import 'package:flutter/material.dart';
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

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectColor: 3).getTheme(),
      // home: const HomeScreen(),

      
    );
  }
}
