import 'package:flutter/material.dart';
import 'package:leo/ui/screens/employee_list_screens/employList_addForm.dart';
import 'package:leo/ui/screens/starting_screens/login_screen.dart';
import 'package:leo/ui/screens/starting_screens/selection_screen.dart';
import 'package:leo/ui/screens/starting_screens/signIn.dart';

import '../screens/starting_screens/manage_client.dart';
import '../screens/starting_screens/starting_screen.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/selectionScreen':
        return MaterialPageRoute(builder: (_) => const SelectionScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/signIn':
        return MaterialPageRoute(builder: (_) => const SignIn());
      case '/manageClient':
        return MaterialPageRoute(builder: (_) => const ManageClientScreen());
      case '/startingScreen':
        return MaterialPageRoute(builder: (_) => const StartingScreen());
      case '/emplyListAdd':
        return MaterialPageRoute(builder: (_) => const EmployeeListAddScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child:
                Text('There is no route defined for ${settings.name}'),
              ),
            ));
    }
  }
}