// ignore: file_names
import 'package:flutter/material.dart';

class IncPage extends StatefulWidget {
  const IncPage({Key? key}) : super(key: key);

  @override
  State<IncPage> createState() => _IncPageState();
}

class _IncPageState extends State<IncPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Counter value:  $counter',
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter += 1;
                  });
                },
                child: const Text('Value +1'),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          setState(() {
            counter -= 1;
          });
        }),
        child: const Icon(Icons.exposure_minus_1),
      ),
    );
  }
}
