import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paradise/pages/home/home_page.dart';
import 'generated/l10n.dart';

class MyApp extends StatelessWidget {
  final ColorScheme colorScheme = ColorScheme(
      primary: const Color(0xFFd40305),
      primaryVariant: const Color(0xFFd40305),
      secondary: const Color(0xFF333333),
      secondaryVariant: const Color(0xFF141414),
      background: const Color(0xFFf9f9f9),
      surface: const Color(0xFFdedede),
      onBackground: const Color(0xFF000000),
      error: const Color(0xFF039be5),
      onError: const Color(0xFFFFFFFF),
      onPrimary: const Color(0xFFFFFFFF),
      onSecondary: const Color(0xFFFFFFFF),
      onSurface: const Color(0xFF000000),
      brightness: Brightness.light);

  @override
  Widget build(BuildContext context) {

    return Material(
      color: Colors.grey,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        localeResolutionCallback: (local, supportedLocales){
           return supportedLocales.first;

        },
        theme: ThemeData(
          colorScheme: colorScheme,
          primaryColor: colorScheme.primary,
          accentColor: colorScheme.primary,
          backgroundColor: colorScheme.background,
          textTheme: TextTheme(
            bodyText1: GoogleFonts.roboto(
              fontSize: 16.0,
              fontWeight: FontWeight.w300,
              color: colorScheme.onPrimary,
            ),
            bodyText2: GoogleFonts.roboto(
              fontSize: 16.0,
              fontWeight: FontWeight.w300,
              color: colorScheme.onBackground,
            ),
            caption: GoogleFonts.roboto(
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
              color: colorScheme.onBackground,
            ),
            headline6: GoogleFonts.greatVibes(
              //App Bar alertdialog.title
              fontSize: 70.0,
              fontWeight: FontWeight.w200,
              color: colorScheme.onPrimary,
            ),
            headline5: GoogleFonts.roboto(
              fontSize: 25.0,
              fontWeight: FontWeight.w300,
              color: colorScheme.onPrimary,
            ),
            headline4: GoogleFonts.roboto(
              fontSize: 29.0,
              color: colorScheme.onBackground,
            ),
            headline1: GoogleFonts.roboto(
              fontSize: 30.0,
              fontWeight: FontWeight.w400,

              color: colorScheme.onPrimary,
            ),
            overline: GoogleFonts.roboto(
              fontSize: 11.0,
              color: colorScheme.onPrimary,
            ),
            button: GoogleFonts.roboto(
              fontSize: 13.0,
              color: colorScheme.onPrimary,
            ),
            subtitle2: GoogleFonts.roboto(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: colorScheme.onBackground,
            ),
          ),
          // dividerTheme: DividerThemeData(
          //   color: colorScheme.primary,
          //   thickness: 1,
          //
          // ),
          iconTheme: IconThemeData(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              splashColor: colorScheme.primary,
              colorScheme: colorScheme,
              buttonColor: colorScheme.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
        ),
        home: MyHomePage(),
      ),
    );
  }
}
