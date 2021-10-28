import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:with_pagination_getx/app/bindings/home_binding.dart';
import 'package:with_pagination_getx/app/combine/hendel_theme.dart';
import 'package:with_pagination_getx/app/routes/app_pages.dart';
import 'package:with_pagination_getx/app/views/home_page.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // theme: AppThemes.lightThemeData,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: HendelTheme().getTheme,
      initialRoute: AppPages.Initial,
      getPages: AppPages.routes,
      // home: const HomePage(),
    );
  }
}
