import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:us_re/views/before.dart';
import 'package:us_re/views/engagement.dart';
import 'package:us_re/views/marriage.dart';
import 'package:us_re/views/welcoming_page.dart';
import 'theme/theme_data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    final themeData = GeneralThemeData().themeData();
    return MaterialApp(
      routes: {
        '/welcome': (context) => const WelcomeView(),
        '/before': (context) => const BeforeView(),
        '/engagement': (context) => const EngagementView(),
        '/marriage': (context) => const MarriageView(),
      },
      theme: themeData,
      title: "Our App",
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const WelcomeView(),
    );
  }
}
