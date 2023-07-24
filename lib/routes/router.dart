import 'package:auto_route/auto_route.dart';
import 'package:auto_route_tutorial/routes/auth.dart';
import 'package:auto_route_tutorial/screen/account.dart';
import 'package:auto_route_tutorial/screen/book.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'router.gr.dart';

final appRouterProvider = Provider((ref) => AppRouter());

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  // _をつけないと怒られる!

  @override
  List<AutoRoute> get routes => [
        // ここにルーティングを追加していく
        AutoRoute(page: AccountRoute.page, initial: true),
        AutoRoute(page: BookRoute.page, guards: [AuthGuard()]),
      ];
}
