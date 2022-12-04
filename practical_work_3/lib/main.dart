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
            title: Text('Это Flutter'),
          ),
          body: Center(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('${Uuid().v4()}'),


                  // HintLabel('label 1'),
                  //  Shimmer.fromColors(
                  //     baseColor: Colors.red,
                  //     highlightColor: Colors.yellow,
                  //     child: Text(
                  //       'Shimmer',
                  //       textAlign: TextAlign.center,
                  //       style: TextStyle(
                  //         fontSize: 40.0,
                  //         fontWeight:
                  //         FontWeight.bold,
                  //       ),
                  //     ),
                  //   ),

                  SvgPicture.network('https://cdn.worldvectorlogo.com/logos/flutter-logo.svg'),

                  // Image.network('https://media.istockphoto.com/id/1323918152/photo/barumi-cityscape-with-seaside-boulevard-beach-and-skyscrapers.jpg?s=612x612&w=0&k=20&c=GRquQtB5v__2Xdqpmz4C1mjcBOO9-U_jBNxBhxmXCXs='),
                  CarouselSlider(
                    options: CarouselOptions(height: 400.0),
                    items: [1,2,3,4,5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                color: Colors.amber
                            ),
                            // child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                            child: SvgPicture.network('https://upload.wikimedia.org/wikipedia/commons/4/44/Google-flutter-logo.svg'),

                          );
                        },
                      );
                    }).toList(),
                  ),

                  SizedBox(height: 24.0),
                  Text('text Widget',
                    style: TextStyle(
                      fontFamily: 'RubikDistressed-Regular',
                      fontSize: 32,
                      // fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ) ,
                  SizedBox(height: 8.0),
                  HintLabel('label 2')
                  // HintLabel('custom label 1'),
                ]),
          ),
        )
    );
  }
}


class HintLabel extends StatelessWidget {
  final String text;
  const HintLabel(this.text);
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.amber[600]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text,
            style: TextStyle(color: Colors.grey[700],
              fontSize: 40,)
        ),
      ),
    );
  }
}
