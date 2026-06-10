import 'package:flutter_app_go_router_basics/pages/about.dart';
import 'package:flutter_app_go_router_basics/pages/contactus.dart';
import 'package:flutter_app_go_router_basics/pages/home.dart';
import 'package:flutter_app_go_router_basics/pages/login.dart';
import 'package:flutter_app_go_router_basics/pages/profile.dart';
import 'package:flutter_app_go_router_basics/routes/app_router_constants.dart';
import 'package:go_router/go_router.dart';

class MyAppRouter {
  static GoRouter returnRouter(bool isAuth) {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          path: "/",
          name: MyAppRouterContants.homeRouteName,
          builder: (context, state) {
            return Home();
          },
        ),
        GoRoute(
          path: "/about",
          name: MyAppRouterContants.aboutRouteName,
          builder: (context, state) {
            return About();
          },
        ),
        GoRoute(
          path: "/profile/:username/:userid",
          name: MyAppRouterContants.profileRouteName,
          builder: (context, state) {
            return Profile(
              userid: state.pathParameters['userid']!,
              username: state.pathParameters['username']!,
            );
          },
        ),
        GoRoute(
          path: "/contactus",
          name: MyAppRouterContants.contactusRouteName,
          builder: (context, state) {
            return ContactUs();
          },
        ),
         GoRoute(
          path: "/login",
          name: MyAppRouterContants.loginRouteName,
          builder: (context, state) {
            return Login();
          },
        ),
      ],
      redirect: (context, state) {
        if (!isAuth &&
            state.matchedLocation.startsWith(
              '/${MyAppRouterContants.profileRouteName}',
            )) {
          return context.namedLocation(MyAppRouterContants.loginRouteName);
        } else {
          return null;
        }
      },
    );
    return router;
  }
}
