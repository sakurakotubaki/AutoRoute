import 'package:auto_route/auto_route.dart';
import 'package:auto_route_tutorial/screen/screen_a.dart';
import 'package:auto_route_tutorial/screen/screen_b.dart';
import 'package:auto_route_tutorial/screen/screen_c.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {// _をつけないと怒られる!

 @override
 List<AutoRoute> get routes => [
    // ここにルーティングを追加していく
    AutoRoute(page: RouteA.page, initial: true),// initial: trueで初期画面を指定
    AutoRoute(page: RouteB.page),
    AutoRoute(page: RouteC.page),
  ];
}
