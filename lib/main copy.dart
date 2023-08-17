import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Namer App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<Controller>(
                init: Controller(),
                builder: (_) =>
                    Text('Current value is: ${Get.find<Controller>().x}'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.find<Controller>().increment();
                },
                child: const Text('dd'),
              ),
            ]),
      ),
    );
  }
}
