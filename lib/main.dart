import 'package:flutter/material.dart';
import 'package:flutter_bmi/provider/provider.dart';
import 'package:flutter_bmi/provider/theme_provider.dart';
import 'package:flutter_bmi/screen/login_screen.dart';
import 'generated/l10n.dart';
import 'screen/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

//App
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      //initTheme: user.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
      initTheme: MyThemes.lightTheme,
      child: Builder(
        builder: (context) => MaterialApp(
          theme: ThemeProvider.of(context),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,

            debugShowCheckedModeBanner: false,
            home: const LoginScreen(),
        )
      )
    );
  }
}








