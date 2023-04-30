
import 'package:flutter/material.dart';
import 'package:widget_app/config/menu/menu_items.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter + material 3'),
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: appMenuItems.length,
        itemBuilder: (context, index) {

          final menuItem = appMenuItems[index];
         
          return _CustomListTitle(menuItem: menuItem);
        },
      );
  }
}

class _CustomListTitle extends StatelessWidget {

  const _CustomListTitle({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme; 

    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary,),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary,),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: (){
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const ButtonsScren(),
        //   ),
        // );
        

        context.push(menuItem.link);
      },
    );
  }
}