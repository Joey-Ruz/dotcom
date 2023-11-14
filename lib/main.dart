import 'package:flutter/material.dart';
import 'package:personal_website/ui/main_router/assembly/main_router_assembly.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Joey\'s Website',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainRouterAssembly().scene,
    );
  }
}
