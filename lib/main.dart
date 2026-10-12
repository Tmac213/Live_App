import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://YOUR_SUPABASE_PROJECT.supabase.co',
    anonKey: 'YOUR_ANON_PUBLIC_KEY',
  );
  runApp(const ProviderScope(child: LiveGiftApp()));
}

class LiveGiftApp extends ConsumerWidget {
  const LiveGiftApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    return MaterialApp.router(
      title: 'Live Gift App',
      theme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6C63FF)),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
