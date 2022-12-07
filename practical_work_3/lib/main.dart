// import 'package:flutter/gestures.dart';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:import_sorter/args.dart';
import 'package:import_sorter/files.dart';
import 'package:import_sorter/sort.dart';
import 'package:uuid/uuid.dart';

// import 'package:shimmer/shimmer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: Scaffold(
          backgroundColor: Colors.amber[300],
          appBar: AppBar(
            title: const Text('Это Flutter'),
          ),
          body: Center(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('${Uuid().v4()}'),
                  const SizedBox(height: 20.0),
                  SvgPicture.network('https://cdn.worldvectorlogo.com/logos/flutter-logo.svg'),
                  const SizedBox(height: 20.0),
                  // Image.network('https://media.istockphoto.com/id/1323918152/photo/barumi-cityscape-with-seaside-boulevard-beach-and-skyscrapers.jpg?s=612x612&w=0&k=20&c=GRquQtB5v__2Xdqpmz4C1mjcBOO9-U_jBNxBhxmXCXs='),
                  CarouselSlider(
                    options: CarouselOptions(height: 400.0),
                    items: [1,2,3,4,5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: const BoxDecoration(
                                color: Colors.amber,
                            ),
                            // child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                            child: SvgPicture.network('https://upload.wikimedia.org/wikipedia/commons/4/44/Google-flutter-logo.svg'),
                          );
                        },
                      );
                    }).toList(),
                  ),

                  const SizedBox(height: 24.0),
                  const Text('text Widget',
                    style: TextStyle(
                      fontFamily: 'RubikDistressed-Regular',
                      fontSize: 32,
                      // fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ) , 
                ]),
          ),
        )
    );
  }
}



