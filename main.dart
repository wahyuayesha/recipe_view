import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
            backgroundColor: const Color.fromARGB(245, 255, 255, 255),
            appBar: AppBar(
              title: const Text('Resep'),
              backgroundColor: const Color.fromARGB(255, 199, 160, 127),
            ),
            body: Row(
              children: [
                const Expanded(
                  flex: 40,
                  child: SideInfo(),
                ),
                Expanded(
                  flex: 60,
                  child: Image.asset(
                  'assets/cookies.png',
                  scale: 0.4,
                  ),
                )
              ],
            )
          )
        );
  }
}

class SideInfo extends StatelessWidget {
  const SideInfo({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: 300,
      color: const Color.fromARGB(245, 241, 234, 206),
      child: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 199, 160, 127),
                  border: Border.all(color: Colors.black, width: 1.5)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Chai Cookies',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 199, 160, 127),
                    border: Border.all(color: Colors.black, width: 1.5)),
                child: const Text(
                    'Chai cookies are delightful baked treats inspired by the warm and aromatic flavors of chai tea, a beloved beverage known for its comforting and spiced profile.')),
            const SizedBox(
              height: 10,
            ),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 199, 160, 127),
                    border: Border.all(color: Colors.black, width: 1.5)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star_rounded,
                          size: 17,
                        ),
                        Icon(
                          Icons.star_rounded,
                          size: 17,
                        ),
                        Icon(
                          Icons.star_rounded,
                          size: 17,
                        ),
                        Icon(
                          Icons.star_rounded,
                          size: 17,
                        ),
                        Icon(
                          Icons.star_outline_rounded,
                          size: 17,
                        ),
                      ],
                    ),
                    Text('265 Reviews', style: TextStyle( fontSize: 13),)
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 199, 160, 127),
                    border: Border.all(color: Colors.black, width: 1.5)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.kitchen_outlined,
                          color: Color.fromARGB(255, 104, 70, 45),
                        ),
                        SizedBox(height: 5),
                        Text('PREP:', style: TextStyle(fontSize: 12)),
                        SizedBox(height: 5),
                        Text('15 min', style: TextStyle(fontSize: 12))
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.access_time_rounded,
                            color: Color.fromARGB(255, 104, 70, 45)),
                        SizedBox(height: 5),
                        Text('COOK:', style: TextStyle(fontSize: 12)),
                        SizedBox(height: 5),
                        Text('1 hr', style: TextStyle(fontSize: 12))
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.restaurant_rounded,
                            color: Color.fromARGB(255, 104, 70, 45)),
                        SizedBox(height: 5),
                        Text('FEEDS:', style: TextStyle(fontSize: 12)),
                        SizedBox(height: 5),
                        Text('6-7', style: TextStyle(fontSize: 12))
                      ],
                    )
                  ],
                )
              ),
          ],
        ),
      ),
    );
  }
}


