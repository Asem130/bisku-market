import 'package:bisku/core/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() async {
 
 
  runApp(const Bisku());
   
}

class Bisku extends StatelessWidget {
  const Bisku({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
