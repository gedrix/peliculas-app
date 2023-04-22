import 'package:flutter/material.dart';

class MessageFielBox extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    // final colors = Theme.of(context).colorScheme;

    final textController = TextEditingController();
    final focusNode = FocusNode(); 
    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40)
    );
    
    //btn enviar 
    final inputDecoration = InputDecoration(
            hintText:  'End your message with a "??"',
            enabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            filled: true,
            suffixIcon: IconButton(
              icon: const Icon(Icons.send_outlined),
              onPressed: () {
                final textValue = textController.value.text;
                print('botton $textValue');
                textController.clear();

              },
            )); 

    //teclado
    return TextFormField(
          onTapOutside: (event){
            focusNode.unfocus();
          },
          focusNode: focusNode,
          controller: textController,
          decoration: inputDecoration,
          onFieldSubmitted: (value) {
            print('submit value $value');
            textController.clear();
            focusNode.requestFocus();
          },
        );
  }
}
