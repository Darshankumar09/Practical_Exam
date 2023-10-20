import 'package:flutter/material.dart';
import 'package:practical_exam/utils/globals.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pokemon App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4),
        child: GridView.builder(
          itemCount: pokemonDetails.length,
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 3 / 4),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(4),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("detailsPage",
                      arguments: pokemonDetails[index]);
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                NetworkImage(pokemonDetails[index].imageUrl!),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        pokemonDetails[index].name!,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
