import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../../providers/counter_providers.dart';
import '../../providers/theme_provider.dart';


class CounterScreen extends ConsumerWidget  {
  
  static const name = 'counter_scren';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final int clickCounter = ref.watch(counterProvider); 
    final bool isDarkMode = ref.watch(isDarkModeProvider); 
    return  Scaffold(
      appBar: AppBar(
        title: const Text('counter screen'),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.dark_mode_outlined :Icons.light_mode_outlined),
            onPressed: () {
              ref.read(isDarkModeProvider.notifier).update((state) => !state);  //cambia el valor de true a false o false a true
            }, 
            
          )
        ],
      ),

      body:  Center(
        child: Text('Valor $clickCounter', style: Theme.of(context).textTheme.titleLarge,),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon (Icons.add),
        onPressed: () {
          //  ref.read(counterProvider.notifier).state++;
          ref.read(counterProvider.notifier).update((state) => state +1);

          //TODO AMBAS FORMAS FUNCIONAN
        },
      ),
    );
  }
}