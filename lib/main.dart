import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:practical_exam/controllers/pokemon_data_controller.dart';
import 'package:practical_exam/firebase_options.dart';
import 'package:practical_exam/view/screens/details_page.dart';
import 'package:practical_exam/view/screens/homepage.dart';
import 'package:practical_exam/view/screens/login_page.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PokemonDataController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        routes: {
          "/": (context) => const LoginPage(),
          "homepage": (context) => const HomePage(),
          "detailsPage": (context) => const DetailsPage(),
        },
      ),
    ),
  );
}
