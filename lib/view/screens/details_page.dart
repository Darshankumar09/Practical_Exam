import 'package:flutter/material.dart';
import 'package:practical_exam/models/pokemon_data_model.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    PokemonDataModel data =
        ModalRoute.of(context)!.settings.arguments as PokemonDataModel;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Details Page"),
      ),
    );
  }
}
