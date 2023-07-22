import 'package:auto_route/auto_route.dart';
import 'package:auto_route_tutorial/route/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ScreenB extends StatelessWidget {
  const ScreenB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(const RouteC());
              },
              child: const Text('ScreenC'))
        ],
      ),
    );
  }
}