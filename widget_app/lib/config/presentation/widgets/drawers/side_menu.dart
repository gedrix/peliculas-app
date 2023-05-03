import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:widget_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {

  final GlobalKey<ScaffoldState> scaffolkey;
  const SideMenu({
    Key? key,
    required this.scaffolkey,
  }) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;
  @override
  Widget build(BuildContext context) {
    
    final hasNotch = MediaQuery.of(context).viewPadding.top >35;

    return   NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
        });

        final menuItem = appMenuItems[value];
        context.push(menuItem.link);
        widget.scaffolkey.currentState?.closeDrawer();
      },
      
      children: [
        // SizedBox( height: hasNotch, ),
        Padding(
          padding:  EdgeInsets.fromLTRB(28, hasNotch? 10:25, 16, 10) ,
          child: Text('main'),
        ),
        
        ...appMenuItems
        .sublist(0,3)
        .map((item) => 
          NavigationDrawerDestination(
            icon:  Icon(item.icon), 
            label: Text(item.title),
          )
        ),
        const Padding(
            padding:  EdgeInsets.fromLTRB(28, 16, 28, 10),
            child: Divider(),
          ),

        Padding(
          padding:  EdgeInsets.fromLTRB(28, hasNotch? 10:25, 16, 10) ,
          child: Text('body'),
        ),
        
        ...appMenuItems
        .sublist(3)
        .map((item) => 
          NavigationDrawerDestination(
            icon:  Icon(item.icon), 
            label: Text(item.title),
          )
        ),

      ],
    );
  }
}
