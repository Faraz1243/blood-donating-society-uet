import 'package:flutter/material.dart';
import 'package:bds/UI/Login.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;
    switch(settings.name) {
    case '/Login':
      return MaterialPageRoute(builder: (_) => const LoginPage());
    // case '/Signup':
    //   return MaterialPageRoute(builder: (_) => const SignupPage());
    // case '/Home':
    //   return MaterialPageRoute(builder: (_) => MyHomePage(args.toString()));
    // case '/UserProfile':
    //   return MaterialPageRoute(builder: (_) => UserProfile(args.toString()));
      default:
        return _errorRoute(settings.name);
    }
  }


  static Route<dynamic> _errorRoute(String? settings) {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
            title: Text("Route Problem $settings"),
        ),
        body:const Center(
          child:Text("No Route Found"),
        ),
      );
    });
  }
}