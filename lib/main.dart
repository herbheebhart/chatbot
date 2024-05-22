import 'package:chatbot_app/services/auth/auth_gate.dart';
import 'package:chatbot_app/services/auth/auth_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
// import 'services/auth/login_or_register.dart';

// import 'Pages/Login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options:DefaultFirebaseOptions.currentPlatform,
  ); 
  runApp(
    ChangeNotifierProvider(
      create:(context) => Authservice(),
    child: const MyApp(),
    ),
    );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:AuthGate(),
    );
  }
}

     