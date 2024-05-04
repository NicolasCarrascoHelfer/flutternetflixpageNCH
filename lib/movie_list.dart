import 'package:flutter/material.dart';

class MovieList extends StatelessWidget {
  const MovieList({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List<Column> movies = [
      Column(
        children: [
          Image.asset(
            "assets/starwars.jpg",
            width: size.width * 0.25,
          ),
          const Text("Star Wars")
        ],
      ),
      Column(
        children: [
          Image.asset(
            "assets/walle.jpeg",
            width: size.width * 0.285,
          ),
          const Text("WALL-E")
        ],
      ),
      Column(
        children: [
          Image.asset(
            "assets/jaws.jpg",
            width: size.width * 0.285,
          ),
          const Text("JAWS")
        ],
      ),
      Column(
        children: [
          Image.asset(
            "assets/spiderman.webp",
            width: size.width * 0.285,
          ),
          const Text("Spiderman")
        ],
      ),
      Column(
        children: [
          Image.asset(
            "assets/gatoconbotas.jpeg",
            width: size.width * 0.285,
          ),
          const Text("Gato con botas 2")
        ],
      ),
    ];

    return SizedBox(
      height: size.height * 0.25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: movies[index]);
          }),
    );
  }
}
