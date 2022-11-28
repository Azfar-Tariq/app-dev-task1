import 'package:flutter/material.dart';

var colors = [
  Colors.red,
  Colors.blue,
  Colors.yellow,
  Colors.brown,
  Colors.cyan,
  Colors.pink,
  Colors.deepOrange,
  Colors.green,
  Colors.indigo,
  Colors.lime,
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'This is AppBar',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 180,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  height: 20,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                  ),
                  margin:
                      const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
                  child: Center(
                    child: Text(
                      'ST$index',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              child: ListView.builder(
                itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                  height: 130,
                  width: 100,
                  decoration: BoxDecoration(
                    color: colors[index],
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                  ),
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 50, horizontal: 40),
                    child: Text(
                      'Post $index',
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
