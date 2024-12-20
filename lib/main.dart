import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testingapp/core/components/resource/service_locator.dart';
import 'package:testingapp/feature/counter/Presentation/screens/test_app.dart';

void main() {
  initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Test App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: TestApp(),
        );
      },
    );
  }
}
