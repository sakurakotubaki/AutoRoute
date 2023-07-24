// // を呼び出して、スコープされたルーターを取得する。
// AutoRouter.of(context)
// // または拡張子
// context.router

// // ページ・スタックに新しいエントリーを追加する。
// router.push(const BooksListRoute())
// // またはパス
// router.pushNamed('/books')

// // スタックの最後のエントリを削除し、提供されたルートをプッシュする。
// // 最後のエントリ == 提供されたルートである場合、ページは更新されます。
// router.replace(const BooksListRoute())
// // またはパスを使う
// router.replaceNamed('/books')

// // 提供されたルートがスタックに既に存在する場合、 // そのルートまでポップする。
// // そうでなければスタックに追加する(Web Appsに適している)。
// router.navigate(const BooksListRoute())
// // またはパスを使う
// router.navigateNamed('/books')

// // Webではwindow.history.back()を呼び出します；
// // ネイティブの場合
// // 前の場所に戻る
// router.navigateBack();

// // ルートのリストをページスタックに一度に追加する
// router.pushAll([
//    BooksListRoute(),
//    BookDetailsRoute(id:1),
// ]);

// // スタックを再構築するので、完全に新しいスタックを提供するようなものだ。
// // 渡されたルートのリストで
// // すでに存在する場合、エントリは更新されるだけかもしれない
// router.replaceAll([
//    LoginRoute()
// ]);
// // スタックに1つのエントリがない限り、最後のページをポップする
// context.router.pop();
// // 述語が満たされるまでルートをポップし続ける
// context.router.popUntil((route) => route.settings.name == 'HomeRoute');
// // 上の行を簡略化したもの
// context.router.popUntilRouteWithName('HomeRoute');
// // 指定されたパスを持つルートが見つかるまでルートをポップし続ける
// context.router.popUntilRouteWithPath('/some-path');
// // すべてのルートをルートまでポップダウンする
// context.router.popUntilRoot();

// // スタックの一番上のページを削除します。
// // remove != pop の場合、WillPopScopes を尊重せず、単に
// // エントリを削除します。
// context.router.removeLast();

// // スタック内の、述語を満たすすべてのルートを削除する
// // これは、通常のリストから項目を削除するのとまったく同じように動作します。
// // <PageRouteInfo>[...].removeWhere((r)=>)
// context.router.removeWhere((route) => );

// // コンテキスト拡張の一般的なヘルパーメソッドを使用して、ナビゲートすることもできます。
// context.pushRoute(const BooksListRoute());
// context.replaceRoute(const BooksListRoute());
// context.navigateTo(const BooksListRoute());
// context.navigateNamedTo('/books');
// context.back();
// context.popRoute();