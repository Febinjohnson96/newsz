import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsz/src/config/route/approute.dart';
import 'package:newsz/src/core/utils/constants.dart';
import 'injector.dart' as injector;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injector.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: kMaterialAppTitle,
      getPages: appRoutes,
      theme: FlexColorScheme.light(scheme: FlexScheme.blueWhale).toTheme,
      darkTheme: FlexColorScheme.dark(scheme: FlexScheme.blueWhale).toTheme,
    );
  }
}
