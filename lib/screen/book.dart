import 'package:auto_route/auto_route.dart';
import 'package:auto_route_tutorial/routes/router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProvider = Provider((_) => FirebaseAuth.instance.currentUser);

@RoutePage()
class BookPage extends ConsumerWidget {
  const BookPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uuid = ref.watch(authProvider)?.uid;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                if (context.mounted) {
                  // Appbarに戻るボタンがあるので、pushではなくreplaceを使う
                  AutoRouter.of(context).replace(const AccountRoute());
                }
              },
              icon: const Icon(Icons.logout))
        ],
        title: const Text('Book'),
      ),
      body: Center(child: Text(uuid ?? 'nullだったら、ユーザーはログインしてない!')),
    );
  }
}
