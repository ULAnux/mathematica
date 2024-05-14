
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tutor_tito/presentation/provider/riverpod_provider.dart';
import 'package:tutor_tito/presentation/screens/home_screen.dart';
import 'package:window_manager/window_manager.dart';

void main()async {
  
    WidgetsFlutterBinding.ensureInitialized();
    await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    size: Size(800, 750),
    title: 'Tutor Tito - BTM Studio by Elias Montilla',
    windowButtonVisibility: true,
    minimumSize: Size(400, 750),
    center: true,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.normal,
  );

  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });


  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tutor Tito',
      theme: ref.watch(temaActual),
      home: const HomeScreen()
    );
  }
}
