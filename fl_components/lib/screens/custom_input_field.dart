import 'package:flutter/material.dart';

class CustonInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? tipoTeclado;
  final bool clave;
  final String formProperty;
  final Map<String, String> formValius;
  


  const CustonInputField({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.icon, 
    this.suffixIcon, this.tipoTeclado,  
    this.clave = false, 
    required this.formProperty, 
    required this.formValius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: tipoTeclado, //TextInputType.emailAddress ,
      obscureText: clave,
      onChanged: (value) => formValius[formProperty] = value,
      validator: (value) {
        if(value == null) return 'Este campo es requerido';
        return value.length <3 ? 'minimo de 3 letras': null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration:  InputDecoration(
        hintText:hintText,
        labelText: labelText,
        helperText: helperText,
        //counterText: 'caracteres',
        //prefix: Icon(Icons.verified_user_outlined),
        suffixIcon: suffixIcon ==null ? null : Icon(suffixIcon),
        icon: icon == null ? null :Icon(icon),
      ),
    );
  }
}