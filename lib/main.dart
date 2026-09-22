import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:motaabe/core/constants/app_localization.dart';
import 'package:motaabe/core/constants/locale_keys.dart';

Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(   
    EasyLocalization(
      supportedLocales: const [
        AppLocalizations.englishLocale,
        AppLocalizations.arabicLocale,
      ],
      path: AppLocalizations.translationsPath,
      fallbackLocale: AppLocalizations.englishLocale,
      startLocale: AppLocalizations.englishLocale,
      saveLocale: true,
      
      child: Motabi3App()
    ),);
}
class Motabi3App extends StatelessWidget {
  const Motabi3App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:LocaleKeys.appName.tr(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const Scaffold(),
    );
  }
}