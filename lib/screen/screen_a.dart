import 'package:auto_route/auto_route.dart';
import 'package:auto_route_tutorial/route/app_router.dart';
import 'package:flutter/material.dart';

// このアノテーションをつけることで、
// このクラスが自動生成されたルーティングクラスの一部であることを示す
@RoutePage()
class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.red,
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(const RouteB());
              },
              child: const Text('ScreenB'))
        ],
      ),
    );
  }
}
