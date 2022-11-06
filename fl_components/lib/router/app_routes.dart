


import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screen.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final  MenuOptions = <MenuOption>[
    //TODO borrar home
    //MenuOption(route: 'home', icon: Icons.home_filled , name: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list , name: 'listview1 Screen', screen: const Listview1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list , name: 'listview2 Screen', screen: const Listview2Screen()),
    MenuOption(route: 'alert', icon: Icons.roundabout_left , name: 'alert Screen', screen: const AlertScreen()),
    MenuOption(route: 'card', icon: Icons.car_crash , name: 'card Screen', screen: const CardScreen()),
    MenuOption(route: 'avatar', icon: Icons.av_timer_outlined , name: 'avatar Screen', screen: const AvatarScreen()),
    MenuOption(route: 'animaciones', icon: Icons.animation , name: 'animate Screen', screen: const AnimatedScreen()),
    MenuOption(route: 'formulario', icon: Icons.format_align_center , name: 'formulario Screen', screen: const InputsHomeScreen()),
    
  ];
 
  static  Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> approutes = {};
    approutes.addAll({'home': (BuildContext context)=> const HomeScreen()});
    for( final options in MenuOptions){

      approutes.addAll({ options.route: (BuildContext context) => options.screen});
    }
    
    return approutes;
  }

  // static  Map<String, Widget Function(BuildContext)> routes= {
      
  //   'home'     : (BuildContext context ) => const HomeScreen(),
  //   'listview1': (BuildContext context ) => const Listview1Screen(),
  //   'listview2': (BuildContext context ) => const Listview2Screen(),
  //   'alert'    : (BuildContext context ) => const AlertScreen(),
  //   'card'     : (BuildContext context ) => const CardScreen(),
  
  // };


  static Route<dynamic> onGenerateRoute (RouteSettings  settings) {  //en caso que no se encuentre la ruta en la lista de routes vamos a una por defecto
        print(settings);
        return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}