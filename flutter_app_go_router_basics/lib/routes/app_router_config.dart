import 'package:flutter_app_go_router_basics/pages/about.dart';
import 'package:flutter_app_go_router_basics/pages/contactus.dart';
import 'package:flutter_app_go_router_basics/pages/home.dart';
import 'package:flutter_app_go_router_basics/pages/profile.dart';
import 'package:go_router/go_router.dart';

class MyAppRouter {
  static GoRouter returnRouter() {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          path: "/",
          name: "home",
          builder: (context, state) {
            return Home();
          },
        ),
        GoRoute(
          path: "/about",
          name: "about",
          builder: (context, state) {
            return About();
          },
        ),
        GoRoute(
          path: "/profile",
          name: "profile",
          builder: (context, state) {
            return Profile();
          },
        ),
        GoRoute(
          path: "/contactus",
          name: "contactus",
          builder: (context, state) {
            return ContactUs();
          },
        ),
      ],
    );
    return router;
  }
}
