import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'package:stac_cached_network_image/stac_cached_network_image.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Stac.initialize(parsers: [StacCachedNetworkImageParser()]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stac CachedNetworkImage Example',
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
      appBar: AppBar(title: const Text('Stac CachedNetworkImage Example')),
      body: Center(
        child: Stac.fromJson({
          "type": "column",
          "mainAxisAlignment": "center",
          "children": [
            {
              "type": "text",
              "data": "Cached network image",
              "style": {"fontSize": 20, "fontWeight": "bold"},
            },
            {"type": "sizedBox", "height": 16},
            {
              "type": "cachedNetworkImage",
              "imageUrl": "https://picsum.photos/200/200",
              "width": 120,
              "height": 120,
              "fit": "contain",
            },
            {"type": "sizedBox", "height": 24},
            {
              "type": "text",
              "data": "With placeholder",
              "style": {"fontSize": 20, "fontWeight": "bold"},
            },
            {"type": "sizedBox", "height": 16},
            {
              "type": "cachedNetworkImage",
              "imageUrl":
                  "https://images.pexels.com/photos/36113085/pexels-photo-36113085.jpeg",
              "width": 200,
              "height": 200,
              "fit": "cover",
              "placeholder": {
                "type": "container",
                "width": 200,
                "height": 200,
                "color": "#E0E0E0",
                "child": {
                  "type": "center",
                  "child": {
                    "type": "text",
                    "data": "Loading...",
                    "style": {"fontSize": 14},
                  },
                },
              },
            },
          ],
        }, context),
      ),
    );
  }
}
