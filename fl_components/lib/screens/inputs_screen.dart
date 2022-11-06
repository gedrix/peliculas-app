import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsHomeScreen extends StatelessWidget {
   
  const InputsHomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
                
    List<String> listaDeOpciones = <String>["A","B","C","D","E","F","G"];
    final Map<String, String> formValues={
      'first_name'  : 'gerado',
      'last_name'   : 'ramirez',
      'email'       : 'gedo@gmail.com',
      'passwdord'   : '12345',
      'role'        :'Admin'
    };
                    

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children:  [
                   CustonInputField(
                    labelText: 'Nombre', helperText: 'Nombre del usaurio',
                    hintText: 'Gerardo', icon: Icons.ac_unit_rounded, 
                    suffixIcon: Icons.access_alarms_sharp,
                    formProperty: 'first_name', formValius: formValues,
                  ),
                  const SizedBox(height: 30),
                   CustonInputField(
                    labelText: 'Apellido', helperText: 'Apellido del usaurio',
                    hintText: 'Ramirez', icon: Icons.ac_unit_rounded, 
                    suffixIcon: Icons.access_alarms_sharp,
                    formProperty: 'last_name', formValius: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustonInputField(
                    labelText: 'Correo', helperText: 'Correo del usaurio',
                    hintText: 'gedo@gmail.com', icon: Icons.ac_unit_rounded, 
                    suffixIcon: Icons.access_alarms_sharp, tipoTeclado: TextInputType.emailAddress,
                    formProperty: 'email', formValius: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustonInputField(
                    labelText: 'clave', helperText: 'clave del usaurio',
                    hintText: '********', icon: Icons.ac_unit_rounded, 
                    suffixIcon: Icons.access_alarms_sharp, clave: true,
                    formProperty: 'passwdord', formValius: formValues,
                  ),
                  const SizedBox(height: 30),

                  // DropdownButtonFormField(
                  //     //value: 'Admin',
                  //     items: const [
                  //       DropdownMenuItem(value:'Admin' , child: Text('Admin')),
                  //       DropdownMenuItem(value:'Admin' , child: Text('User')),
                  //     ],  
                  //     onChanged: (value) {
                  //         print(value);
                  //       //formValues['role'] == null ? 'Admin' ? value;
                  //         // formProperty: 'role';
                  //         // formValius: value;
                  //       },

                  //   ),
                
                

                  const SizedBox(height: 30),
                  ElevatedButton(
                      child: const SizedBox(
                        width: double.infinity,
                          child: Center(child: const Text('guardar'))
                        ),
                      onPressed: () { 
                          FocusScope.of(context).requestFocus( FocusNode());
                        if (!myFormKey.currentState!.validate()){
                          print('formulario no valido');
                          return;
                        }
                        //*imprimir valores  
                        print(formValues);
                       },
                    ),
              ],
            ),
          ),
        ),
      )
    );
  }
}



