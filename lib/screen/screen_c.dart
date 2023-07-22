import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ScreenC extends StatelessWidget {
  const ScreenC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.green,
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).pop();
              },
              child: const Text('ScreenA'))
        ],
      )
    );
  }
}