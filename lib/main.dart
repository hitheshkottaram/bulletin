import 'package:bullet_in/config/theme/theme.dart';
import 'package:bullet_in/config/theme/theme_util.dart';
import 'package:bullet_in/core/constants/constants.dart';
import 'package:bullet_in/features/home/presentation/bloc/ui/home_ui_bloc.dart';
import 'package:bullet_in/features/home/presentation/pages/home.dart';
import 'package:bullet_in/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, textFontName, textFontName);
    MaterialTheme theme = MaterialTheme(textTheme);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: brightness == Brightness.light
          ? theme.light()
          : theme.darkMediumContrast(),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale(localeEnglish), // English
        Locale(localeMalayalam), // Malayalam
      ],
      locale: const Locale(localeEnglish),
      home: BlocProvider<HomeUIBloc>(
        create: (context) => sl(),
        child: const HomePage(),
      ),
    );
  }
}
