import 'package:auto_route/auto_route.dart';
import 'package:auto_route_tutorial/routes/router.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // resolver.next()が呼び出されるまで、ナビゲーションは一時停止されます。
    // ナビゲーションを再開/継続するにはtrueを、ナビゲーションを中止するにはfalseを返します。
    // authenticatedは、FirebaseAuthの現在のユーザーがnullでない場合にtrueになります。
    final authenticated = FirebaseAuth.instance.currentUser != null;
    // ユーザーが認証されているかどうかをチェックします。
    if (authenticated) {
      // ユーザーが認証された場合、続行する
      resolver.next(true);
    } else {
      // ユーザーをログインページにリダイレクトする
      // tip: resolver.redirectを使用して、リダイレクトされたルート
      // リゾルバが完了したときにスタックから自動的に削除されます。
      resolver.redirect(const AccountRoute());
    }
  }
}
