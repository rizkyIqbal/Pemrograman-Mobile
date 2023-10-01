import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';

import 'Routes/name_routes.dart';
import 'presentation/Dashboard/dashboard_page.dart';
import 'style/AppStyle.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, devicetype) {
      return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: AppStyle.backgroundColor),
          useMaterial3: true,
        ),
        // initialRoute: PageName.dashboard,
        getPages: PageRoutes.pages,
        home: const Dashboard(),
      );
    });
  }
}