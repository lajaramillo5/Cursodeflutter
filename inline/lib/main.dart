import 'package:flutter/material.dart';
import 'package:inline/Controller/provider_chat.dart';
import 'package:inline/View/page_chat.dart';
import 'package:inline/View/page_login.dart';
import 'package:inline/View/page_register.dart';
import 'package:inline/View/page_splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProviderChat())
      ],
      child: MaterialApp(
          title: 'inLINE',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const PageSplash(),
          routes: <String, WidgetBuilder>{
            PageLogin.routePage: (_) => const PageLogin(),
            PageChat.routePage: (_) => PageChat(),
            PageRegister.routePage: (_) => PageRegister(),
          }),
    );
  }
}
