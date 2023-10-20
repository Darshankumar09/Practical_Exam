class PokemonDataModel {
  int? id;
  String? name;
  String? imageUrl;
  String? description;

  PokemonDataModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
  });

  factory PokemonDataModel.fromMap({required Map data}) {
    return PokemonDataModel(
      id: data['id'],
      name: data['name'],
      imageUrl: data['imageUrl'],
      description: data['description'],
    );
  }
}
