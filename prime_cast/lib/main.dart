import 'package:flutter/material.dart';
import 'package:prime_cast/providers/login_user_provider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'routes/app_route.dart';
import 'config/themes/theme.dart';

void main() {
  runApp(const PrimeCastApp());
}

class PrimeCastApp extends StatelessWidget {
  const PrimeCastApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => UserProvider()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'PrimeCast',
            theme: primeCastTheme,
            initialRoute: AppRoutes.splash,
            routes: AppRoutes.routes,
          ),
        );
      },
    );
  }
}
