import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:newsz/src/config/route/approute.dart';
import 'package:newsz/src/config/theme/app_text_theme.dart';
import 'package:newsz/src/core/utils/constants.dart';
import 'package:newsz/src/data/data_sources/local/hive_provider.dart';
import 'injector.dart' as injector;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injector.init();
  await initlizeDependecy();
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
      theme: AppTheme.appTheme,
      darkTheme: FlexColorScheme.dark(scheme: FlexScheme.blueWhale).toTheme,
    );
  }
}

Future<void> initlizeDependecy() async {
  final hive = GetIt.I.get<HiveProvider>();
  await hive.intializeHive();
}
