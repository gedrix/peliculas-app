import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar( BuildContext context ) {

    ScaffoldMessenger.of(context).clearSnackBars();

    final snakback = SnackBar(
      content: const Text('presiona OK para aceptar'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snakback);

  }


  void openDialog( BuildContext context ) {

    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text('aceptas'),
        actions: [
          TextButton( onPressed: ()=> context.pop(), child: const Text('Cancelar')),
          
          FilledButton( onPressed: ()=> context.pop(), child: const Text('Aceptar')),
        ],
      ),
    );

  }


    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            FilledButton.tonal(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Dolore pariatur cillum Lorem cillum aliquip eiusmod dolore ut veniam laboris ipsum nisi qui labore.')
                  ]
                );
              }, child: const Text('Licencias usadas')),

            FilledButton.tonal(
              onPressed: () => openDialog(context), 
              child: const Text('Mostrar diálogo'))
          ],
        ),
      ),


      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon( Icons.remove_red_eye_outlined ),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}