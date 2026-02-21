import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'package:{{name.snakeCase()}}/{{name.snakeCase()}}.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Stac.initialize(
    parsers: [
      {
        {name.pascalCase()},
      }(),
    ],
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stac SVG Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
      appBar: AppBar(title: const Text('Stac SVG Example')),
      body: Center(
        child: Stac.fromJson({
          "type": "column",
          "mainAxisAlignment": "center",
          "children": [
            {
              "type": "text",
              "data": "SVG from String",
              "style": {"fontSize": 20, "fontWeight": "bold"},
            },
            {
              "type": "svg",
              "src":
                  '<svg width="100" height="100" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg"><circle cx="50" cy="50" r="40" stroke="green" stroke-width="4" fill="yellow" /></svg>',
              "width": 100,
              "height": 100,
            },
            {"type": "sizedBox", "height": 20},
            {
              "type": "text",
              "data": "SVG from Network",
              "style": {"fontSize": 20, "fontWeight": "bold"},
            },
            {
              "type": "svg",
              "src":
                  "https://raw.githubusercontent.com/dnfield/flutter_svg/master/example/assets/flutter_logo.svg",
              "sourceType": "network",
              "width": 100,
              "height": 100,
            },
          ],
        }, context),
      ),
    );
  }
}
