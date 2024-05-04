import 'package:flutter/material.dart';
import 'package:test1/movie_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const backgroundColor = Color.fromARGB(255, 28, 28, 28);
    const secondBackgroundColor = Colors.black;
    const thirdBackgroundColor = Color.fromARGB(255, 33, 33, 33);
    const detailColor = Colors.red;
    final List<String> categories = [
      "Top ratings",
      "Movies",
      "Series",
      "Documentaries"
    ];

    return MaterialApp(
        title: 'Netflixapp',
        theme: ThemeData(
            textTheme: const TextTheme(
                bodyLarge: TextStyle(color: Colors.white),
                bodyMedium: TextStyle(color: Colors.white)),
            iconTheme: const IconThemeData(
              color: detailColor,
            )),
        home: Scaffold(
          backgroundColor: backgroundColor,
          drawer: Drawer(
              backgroundColor: secondBackgroundColor,
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.147,
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
                    )),
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
                  )),
                ],
              )),
          appBar: AppBar(
            iconTheme: const IconThemeData(color: detailColor),
            centerTitle: true,
            backgroundColor: secondBackgroundColor,
            title: Image.asset(
              'assets/net_logo.png',
              width: size.width * 0.3,
            ),
          ),
          body: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                color: thirdBackgroundColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ...categories.map((e) => Text(
                          e,
                          style: const TextStyle(color: detailColor),
                        )),
                  ],
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListView.builder(
                    itemCount: categories.length,
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
              color: secondBackgroundColor,
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

