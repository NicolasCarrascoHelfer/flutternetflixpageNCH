import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List<String> categories = [
      "Top ratings",
      "Movies",
      "Series",
      "Documentary"
    ];
    return MaterialApp(
        title: 'Netflixapp',
        theme: ThemeData(
            textTheme: const TextTheme(
                bodyLarge: TextStyle(color: Colors.white),
                bodyMedium: TextStyle(color: Colors.white)),
            iconTheme: const IconThemeData(
              color: Colors.red,
            )),
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 28, 28, 28),
          drawer: Drawer(
              backgroundColor: Colors.black,
              child: Column(
                children: [
                  SizedBox(
                    height: size.height*0.147,
                    child: DrawerHeader(
                      child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/net_logo.png',
                              width: size.width * 0.11,
                            ),
                            const Icon(Icons.star),
                            const Icon(Icons.account_circle),
                          ],
                        ),
                      ),
                    ],
                  )),),
                  
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListView.builder(
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.only(top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(categories[index]),
                                SizedBox(
                                  height: size.width * 0.04,
                                ),
                                const MovieList(),
                              ],
                            ),
                          );
                        }),
                  )),
                ],
              )),
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.red),
            centerTitle: true,
            backgroundColor: Colors.black,
            title: Image.asset(
              'assets/net_logo.png',
              width: size.width * 0.3,
            ),
          ),
          body: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                color: const Color.fromARGB(255, 33, 33, 33),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ...categories.map((e) => Text(
                          e,
                          style: const TextStyle(color: Colors.red),
                        )),
                  ],
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(categories[index]),
                            SizedBox(
                              height: size.width * 0.04,
                            ),
                            const MovieList(),
                          ],
                        ),
                      );
                    }),
              ))
            ],
          ),
          bottomNavigationBar: Container(
              color: Colors.black,
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: const SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.home),
                    Icon(Icons.search),
                    Icon(Icons.favorite),
                    Icon(Icons.info)
                  ],
                ),
              )),
        ));
  }
}

class MovieList extends StatelessWidget {
  const MovieList({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/starwars.jpg",
                      width: size.width * 0.25,
                    ),
                    const Text("Star Wars")
                  ],
                ));
          }),
    );
  }
}
