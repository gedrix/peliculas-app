import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding:  EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://s2.narvii.com/image/fk56csff6dhdvm4fadpfapdtwggxy33m_00.jpg'),
          ),
        ),
        title: const Text('Naruto'),
        centerTitle: false,
        ),
        body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
           
            Expanded(child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Text('Indice: $index');
              },)
            ),
            Text('hi'),
          ],
        ),
      ),
    );
  }
}