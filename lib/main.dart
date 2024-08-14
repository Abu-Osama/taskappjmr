import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:jmrassignmentapp/core/utils/pref_utils.dart';
import 'package:jmrassignmentapp/core/utils/size_utils.dart';
import 'package:jmrassignmentapp/routes/app_routes.dart';
import 'package:jmrassignmentapp/theme/bloc/theme_bloc.dart';
import 'package:jmrassignmentapp/theme/bloc/theme_state.dart';
import 'package:jmrassignmentapp/theme/theme_helper.dart';

import 'core/utils/navigator_service.dart';
import 'localization/app_localization.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();  Future.wait([
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
]).then((value) {
  PrefUtils().init();
  runApp(MyApp());
});
}

class MyApp extends StatelessWidget {
  @override  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return BlocProvider(
              create: (context) => ThemeBloc(
     ThemeState( themeType: PrefUtils().getThemeData(),
     ),
          ),
              child: BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) {
                return MaterialApp(
                  theme: theme,
                  title: 'task',
                  navigatorKey: NavigatorService.navigatorKey,
                  debugShowCheckedModeBanner: false,
                  localizationsDelegates: const [  AppLocalizationDelegate(),
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate],
                   supportedLocales: const [     Locale( 'en','',  )   ],
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