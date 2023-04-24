import 'package:flutter/material.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/config/theme/app_theme.dart';
import 'package:provider/provider.dart';
import 'presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers :[
        ChangeNotifierProvider(
          lazy: false,
          create: (_) =>DiscoverProvider()..loadNextPage()
          ),  // si se pone .. operador de cascada
      ],
      child: MaterialApp(
        title: 'tok tik',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen(),
      ),
    );
  }
}