import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/presentation/routes/app_router.dart';

class WebDashboardApp extends StatelessWidget {
  final _appRouter = AppRouter();

  WebDashboardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Web dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
