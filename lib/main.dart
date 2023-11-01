import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/setup.dart';
import 'package:my_portfolio/shared_resources/navigation/routes.dart';

import 'shared_resources/navigation/navigation_key.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // load registered cubits
  AppStartUpRegisterServices.services();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360,
            640), // The size of the device screen in the design draft (e.g Figma), in dp
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, widget) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            navigatorKey: navigatorKey,
            title: 'My Portfolio',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
              useMaterial3: true,
            ),
            // home: const MyHomePage(title: 'My Portfolio'),
            initialRoute: "/",
            onGenerateRoute: RouterClass.generateRoute,
          );
        });
  }
}
