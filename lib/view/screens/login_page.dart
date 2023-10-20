import 'package:flutter/material.dart';
import 'package:practical_exam/controllers/pokemon_data_controller.dart';
import 'package:practical_exam/helpers/firebase_auth_helper.dart';
import 'package:practical_exam/utils/globals.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    pokemonDetails =
        await Provider.of<PokemonDataController>(context, listen: false)
            .loadJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                FirebaseAuthHelper.firebaseAuthHelper.signInWithGoogle();
              },
              child: const Text("Google"),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("homepage", (route) => false);
              },
              child: const Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
