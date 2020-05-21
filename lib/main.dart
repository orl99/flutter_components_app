import 'package:components_app/src/pages/alert_page.dart';
import 'package:components_app/src/pages/home_page.dart';
import 'package:components_app/src/routes/routes.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';


// Pages
// import 'package:components_app/src/pages/home_temp.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
       supportedLocales: [
        const Locale('en'), // English
        const Locale('es'), // Spanish
      ],
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: HomePage(),
      initialRoute: '/',
      routes: getAppRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('ruta llamada ${ settings.name }');
        return MaterialPageRoute(builder: (BuildContext contex) => AlertPage());
      }
    );
  }
}