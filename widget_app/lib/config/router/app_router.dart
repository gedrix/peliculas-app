import 'package:go_router/go_router.dart';

import '../presentation/screens/screens.dart';


// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      // name: HomeScreen.name,
      builder: (context, state) => HomeScreen(),
    ),

    GoRoute(
      path: '/buttons',
      // name:  ButtonsScren.name,
      builder: (context, state) => ButtonsScren(),
    ),


    GoRoute(
      path: '/cards',
      // name: CardsScreens.name,
      builder: (context, state) => CardsScreens(),
    ),
  ],
);