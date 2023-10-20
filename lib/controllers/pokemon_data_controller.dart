import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:practical_exam/models/pokemon_data_model.dart';

class PokemonDataController extends ChangeNotifier {
  String? data;

  List<PokemonDataModel> pokemonDetails = [];

  Future<List<PokemonDataModel>> loadJson() async {
    data = await rootBundle.loadString('lib/json/pokemon_json.json');

    List decodedList = jsonDecode(data!);

    pokemonDetails = decodedList
        .map(
          (e) => PokemonDataModel.fromMap(data: e),
        )
        .toList();

    return pokemonDetails;
  }
}
