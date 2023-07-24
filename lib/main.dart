import 'package:auto_route_tutorial/firebase_options.dart';
import 'package:auto_route_tutorial/routes/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _appRouter = ref.watch(appRouterProvider);// appRouterProviderは、ルーティングの設定を管理する

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),// routerDelegateは、ルーティングの状態を管理する
      routeInformationParser: _appRouter.defaultRouteParser(),// routeInformationParserは、URLをルーティングに変換する
    );
  }
}
