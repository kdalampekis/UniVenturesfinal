import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kwstas_s_application2/presentation/signup_checked_screen/bloc/signup_checked_bloc.dart';
import 'package:kwstas_s_application2/presentation/signup_checked_screen/models/signup_checked_model.dart';
import 'package:sqflite/sqflite.dart';
import 'core/app_export.dart';
import 'package:kwstas_s_application2/presentation/database';

import 'presentation/signup_screen/bloc/signup_bloc.dart'; // For BlocProvider


var globalNavigatorKey = GlobalKey<NavigatorState>();

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait([
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]),
    PrefUtils().init()
  ]).then((value) {
    runApp(MyApp());
  });
}

// Function to initialize the database and perform the upgrade



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<ThemeBloc>(
              create: (context) => ThemeBloc(
                ThemeState(
                  themeType: PrefUtils().getThemeData(),
                ),
              ),
            ),
            BlocProvider<SignupBloc>(
              create: (context) => SignupBloc(SignupState())..add(SignupInitialEvent()),
            ),
            BlocProvider<SignupCheckedBloc>(
              create: (context) =>
                  SignupCheckedBloc(SignupCheckedState(signupCheckedModelObj: SignupCheckedModel()))..add(SignupCheckedInitialEvent()),
            ),
          ],
          child: BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return MaterialApp(
                theme: theme,
                title: 'UniVentures',
                navigatorKey: NavigatorService.navigatorKey,
                debugShowCheckedModeBanner: false,
                localizationsDelegates: [
                  AppLocalizationDelegate(),
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: [
                  Locale(
                    'en',
                    '',
                  ),
                ],
                initialRoute: AppRoutes.initialRoute,
                routes: AppRoutes.routes,
              );
            },
          ),
        );
      },
    );
  }
}

