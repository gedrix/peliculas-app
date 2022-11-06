import 'dart:io';

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  void displayDialogAndroid(BuildContext context){
    
    showDialog(
      barrierDismissible: false,  //para cerrar el dialogo cambiar a true se cierra si se presiona fuera del modal
        context: context, 
        builder: (context){
          return AlertDialog(
            elevation: 5,
            title: const Text('titulo'),
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(15)),
            content:  Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('este es el contenido de la columna'),
                SizedBox(height: 10),
                FlutterLogo(size: 100,)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: ()=> Navigator.pop(context), 
                  child: const Text('Aceptat')
                ),
                TextButton(
                  onPressed: ()=> Navigator.pop(context), 
                  child: const Text('Cancelar', style: TextStyle(color: Colors.red))
                ),
            ],
          );
        }
      );
  }

  void displayDialogIOS(BuildContext context){

      showCupertinoDialog(
        barrierDismissible: false,
        context: context, 
        builder: (context){
            return CupertinoAlertDialog(
              title: const Text('titulo'),
              content:  Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('este es el contenido de la columna '),
                SizedBox(height: 10),
                FlutterLogo(size: 100,)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: ()=> Navigator.pop(context), 
                  child: const Text('aceptar')
                ),
                TextButton(
                  onPressed: ()=> Navigator.pop(context), 
                  child: const Text('Cancelar', style: TextStyle(color: Colors.red))
                ),
            ],
          );
        }
      );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
         child: ElevatedButton(

          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15) ,
            child:  Text('Mostrar alerta', style: TextStyle(fontSize: 16),),
          ),
          onPressed: ()=>Platform.isAndroid ? displayDialogAndroid(context): displayDialogIOS(context),
         ),
      ),
      floatingActionButton: FloatingActionButton(
       
        child: const Icon(Icons.close),
         onPressed:(){
          Navigator.pop(context);
         }
      ),
    );
  }
}