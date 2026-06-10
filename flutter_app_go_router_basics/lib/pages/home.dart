import 'package:flutter/material.dart';
import 'package:flutter_app_go_router_basics/routes/app_router_constants.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(child: Text("Home")),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).push(Uri(path: "/about").toString());
            },
            child: Text("Go to About"),
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).pushNamed(
                MyAppRouterContants.profileRouteName,
                pathParameters: {'username': 'Sumeet Wajpe', 'userid': 'sw101'},
              );
            },
            child: Text("Go to Profile"),
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(
                context,
              ).pushNamed(MyAppRouterContants.contactusRouteName);
            },
            child: Text("Go to Contact Us"),
          ),
        ],
      ),
    );
  }
}
